<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Online Payment </title>
<style>
body {
  font-family: Arial;
  color: white;
}

.split {
  height: 100%;
  width: 45%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
  color:#544a4a;
}

.left {
  left: 0;
  border: 15px solid #678a7f;
  padding: 20px;
  margin-left: 5px;
  background-color:#678a7f;
  font: #544a4a;
  font-size: large;
  font-style: italic;
}

.right {
  right: 0;
font-color:#544a4a;
}

.centered {
  position: absolute;
  top: 20%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}


input[type=text] {
  width: 95%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: #3CBC8D;
  color: black;
}
.tabbutton {
  background-color: #544a4a;
  color:white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}
</style>
<script type="text/javascript">
function update(){
		var cmb= document.getElementById("cmbperson").value;
		var cost=cmb*3000;
		document.getElementById("Totalcost").value=cost;
	
}
$(document).ready(function () {
    $("form").submit(function () {

      var clikedForm = $(this); // Select Form

      if (clikedForm.find("[name='Cardnumber']").val() == '') {
        alert('Enter Valid Card number');
        return false;
      }
      if (clikedForm.find("[name='Name']").val() == '') {
        alert('Enter  valid Name on card');
        return false;
      }
      if (clikedForm.find("[name='Mobilenumber']").val() == '') {
          alert('Enter  valid Mobile number');
          return false;
        }

    });
  });


</script>
</head>
<body style="background-color: #ebc3c3;color: black;" >
<div class="split left">
  <div class="centered">
      <h2>Flight Details</h2>
    <p>
    
    </p>
  </div>
  <div style="padding-top: 200px;">
  <form class="box">
  <label for="fname">ID</label>
  <input type="text" disabled="disabled" id="ID" name="Id" value="<%=request.getParameter("id")%>">
  <label for="lname">Source City</label>
  <input type="text" disabled="disabled" id="Source_city" name="Source_City" value="<%=request.getParameter("source_city")%>">
  <label for="lname">Destination City</label>
  <input type="text"  disabled="disabled" id="Dest_city"name="Dest_City" value="<%=request.getParameter("dest_city")%>">
  <label for="lname">Date of journey</label>
  <input type="text" disabled="disabled" id="Date" name="Date" value="<%=request.getParameter("date")%>">

</form></div>
    
</div>

<div class="split right">
  <div class="centered">
 
    <h2>Your Payment Details:</h2>
    <p></p>
  </div>
   <div style="padding-top: 132px;">
   <h2>Enter Your Debit Card details:</h2>
  <form  action="PaymentResult.jsp" method="get">
  <label for="Cardnumber"> Enter Your Debit Card Number</label>
  <input type="text" id="Cardnumber" name="Cardnumber" required>
  <label for="lname">Enter the Full Nam on Your Card</label>
  <input type="text" id="Name" name="Name" required>
  <label for="lname">Enter Your Mobile number</label>
  <input type="text" id="Mobilenumber"name="Mobilenumber" required>
  <label for="lname">Total Travel cost Per Person:</label>
  <input type="text" disabled="disabled" id="Cost" name="Cost" value="3000 per person">
  <br>
	<label for="lname">Select number of person for the journey:</label>
	<select name="cmbperson" id="cmbperson" onchange="update()">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
	</select>
	<br>
	  <input type="text" id="Totalcost"name="Totalcost" disabled="disabled">
	<br>
	<input type="submit" value="Pay Now" class="tabbutton">
	</form></div>
</div>
     
</body>
</body>
</html>