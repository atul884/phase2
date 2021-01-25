<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booking System</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #c2fff7;
  margin-left:200px;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
.formbox{
text-align: center;
                 vertical-align: middle;
                 border-color: #000000;
                 border-width: 1px;
                 border-style: solid;
                 margin-top: 25%;
                 margin-bottom: 25%;padding:50px;

}
</style>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>

<script>

$(document).ready(function () {
    $("form").submit(function () {

      var clikedForm = $(this); // Select Form

      if (clikedForm.find("[name='username']").val() == '') {
        alert('Enter Valid username');
        return false;
      }
      if (clikedForm.find("[name='password']").val() == '') {
        alert('Enter  valid password');
        return false;
      }

    });
  });

function openCity(evt, panel) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(panel).style.display = "block";
  evt.currentTarget.className += " active";
}





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
</head>
<body style="background-color:#dcf5f2;" onload="date()">
<div id="body">
<div id="container">
<div id="header">

<!-- header section -->
	</div>
	
<div id ="main_content">
<h2>Flyway Project</h2>
<div id="row"></div>
<div style="margin-left:600px;">
Current Date Time:
<input type="text" id="currentDateTime" disabled>
 </div>
<!-- Tabs start -->
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'User')">User</button>
    <button class="tablinks" onclick="openCity(event, 'Admin')">Admin</button>
  
</div>
<!-- Tabs div ends -->
<div id="nav_bar"> </div>
<div id="row"></div>

<div class="formbox">
<div id="User" class="tabcontent" style="background-color:#9bc9c0; ">
  <div id="form">
<!-- Form ends -->
<form action="Login_Check" method="post" >
<table id="form_table">
<tr id="table_row"></tr>
<tr id="table_row">
<td id="column"><span id="label">User name :</span></td>
<td id="column"><input type="text" name="username" required></td>
</tr>
<tr id="table_row">
<td id="column"><span id="label">Password :</span></td>
<td id="column"><input type="password" name="password" required></td>
</tr>
<tr id="table_row">
<td id="column">
<input id="reg_button" type="submit" value="Login">
</td>
</tr>
</table>
</form>
<!-- Form ends -->
</div>

</div>

<div id="Admin" class="tabcontent">
  <div id="form_box">
<!-- Login form starts -->

<!-- Login form ends -->

<!-- Login form for Admin starts -->
<div  style="background-color:#9bc9c0; ">
<form action="Login_Check" method="post"  >
<table id="form_table">
<tr id="table_row"></tr>
<tr id="table_row">
<td id="column"><span id="label">Username :</span></td>
<td id="column"><input type="text" name="username" required></td>
</tr>
<tr id="table_row">
<td id="column"><span id="label">Password :</span></td>
<td id="column"><input type="password" name="password" required></td>
</tr>
<!-- <tr id="table_row">
<td id="column"><span id="label">Email Id :</span></td>
<td id="column"><input type="password" name="email"></td>
</tr> -->
<tr id="table_row">
<td id="column">
<input id="reg_button" type="submit" value="Login">

</td>
</tr>
</table>
</form>
</div>

<!-- Registration form ends -->
</div>
</div>
</div>

<div id="form">

<div id="box">

</div>
</div>
<div id="row"></div>	
<div></div>
</div><!-- main content ends -->

</div><!-- container ends -->


</div><!-- body ends -->

</body>
</html>