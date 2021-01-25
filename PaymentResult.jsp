<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.centered {

  position: absolute;
  top: 20%;
  left: 50%;
  width:600px;
  transform: translate(-50%, -50%);
  text-align: center; 
}
</style>
</head>
<body>

<div class="centered" style="text-align: center;
vertical-align: middle;font-size: xx-large;
line-height: 90px;background-color:#9aada4">

Welcome <%=request.getParameter("Name") %>
Your payment is done</br>
<%=request.getParameter("Cardnumber") %>

<br>
Thank You!


</div>
</body>
</html>