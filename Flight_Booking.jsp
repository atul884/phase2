<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="connection_builder.SqlOperation"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>flight_booking</title>
<script>
$(document).ready(function () {
    $("form").submit(function () {

      var clikedForm = $(this); // Select Form

      if (clikedForm.find("[name='source_city']").val() == '') {
        alert('Enter Valid source city');
        return false;
      }
      if (clikedForm.find("[name='dest_city']").val() == '') {
        alert('Enter  valid destination city');
        return false;
      }
      if (clikedForm.find("[name='date']").val() == '') {
          alert('Enter  valid date for travel');
          return false;
        }

    });
  });
  
/* jnsj 
 * Adding current date and time to the screen
 
 */
 function date(){
 var today = new Date();
 var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
 var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
 var dateTime = date+' '+time;
   document.getElementById("currentDateTime").value = dateTime;}
   

</script>
<style type="text/css">
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.box{
  width: 400px;
  border: 15px solid #678a7f;
  padding: 50px;
  margin-left: 200px;
  background-color:#678a7f;
}

</style>
</head>
<body style="background-color:#dcf5f2;" onload="date()">
<%
SqlOperation so= new SqlOperation();
ResultSet rs= null;
String type=request.getParameter("auth");
if(type.equalsIgnoreCase("user")){
%>
<div style="margin-left: 500px;align:right;">
<div style="margin-left:100px;">
Current Date Time:
<input type="text" id="currentDateTime" disabled>
 </div>
</div>
<br><br><br><br>
<center>
<h2>Welcome to the Flyway Booking Protal</h2></center>
<h3 style="margin-left:350px;">You can search your flight here</h3>
<form action="Flight_List" method="get"  class ="box">
<span>From</span>
<input type="text" name="source_city" autocomplete="name">
	<br>
<br>
<span>To</span>
<input type="text" name="dest_city">

<br><br>
<span>Date</span>
<input type="date" name="date" min="22-01-2021">
<br><br>

<input type="submit" name="search" Value="Search Flight" class="button">

</form>
	<div id=flight_list >
	
	
<%}else{
	%>
	
	<h2 style="align:right;">Hello Admin</h2>
	
	<div Style="margin-left: 600px;">   
	<% String id=session.getAttribute("user_id").toString(); %>
	 <a href="ChangePassword?id=<%=id%>"></a>
	
	</div>
		<h3 style="align:right;">Master list of all Airlines and Schedule</h3>
	
	<table style="
    display: inline-block;
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
    background-color:lime;">
	<%
	rs=so.Searchdata("Select * from flight_details");
	 while (rs.next()){
		 
	%> 

		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td></td>
			
		</tr>
	
	
	
	<%
	}
	
	%>
	
		
	<%
}
%>
</table>
	
	</div>
</body>
</html>	