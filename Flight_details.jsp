<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.operation.forms.Flight_Data" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Flight Scehdule</title>
<!-- <link rel="stylesheet" type="text/css" href="/css/Flight_list.css"> -->
<style>
.box{
  width: 400px;
  border: 15px solid #678a7f;
  padding: 50px;
  margin-left: 200px;
  background-color:#678a7f;
  font: #656665;
font-size: large;
font-style: italic;
}
.tabbutton {
  background-color: #c4bed1;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}
.header{
font: #656665;
font-size: large;
font-style: italic;
}


</style>


</head>
<body style="background-color:#acb5ae; ">

<div class="table-users">
   <div class="header">Users
   <div>
   <center>
   <h2>Welcome to Flyway Booking Protal</h2>
   <h3>Check your Flight Schedule Here </h3>
   </center>
   </div></div>
   
   <%
   
      %>
    
    <form action="BookFlightAndPayment.jsp" method="get" >
      
   <table cellspacing="0" class="box">
      <tr>
         <th>ID</th>
         <th>Flight_Name</th>
         <th>Source</th>
         <th>Destination</th>
         <th></th>
      </tr>
      
      <%
      ArrayList<Flight_Data> li= (ArrayList<Flight_Data>)request.getAttribute("data_list");
      
      for(Flight_Data fd:li){
    	  %>
    	  <tr>
    	  <td><%=fd.getId() %><input type="hidden" value="<%=fd.getId() %>" name="id" required></td>
    	  <td><%=fd.getFlight_name() %><input type="hidden" value="<%=fd.getFlight_name()%>" name="flight_name" required></td>
    	  <td><%=fd.getSource_city() %><input type="hidden" value="<%=fd.getSource_city() %>" name="dest_city" required></td>
    	  <td><%=fd.getDest_city() %><input type="hidden" value="<%=fd.getDest_city() %>" name="source_city" required></td>
    	  <td><input type="hidden" value="<%=fd.getDate() %>" name="date" required></td>
    	  <td><input type="submit" value="Book Flight" class="tabbutton"></td>
    	  
    	  </tr>
    	  <%
      }
      %>

   
   </table></form>
</div>

</body>
</html>