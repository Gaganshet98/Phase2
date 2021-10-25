<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<style>body {
  background-color:seashell;
}</style>
<body>
<h1 style="text-align:center; Color:brown; font-weight:bold">FlyAway</h1>
<h3 style="color:green">Become A Back-end Expert</h3>
<h4 style="text-align:left ;Color:blue; font-weight:bold">Developer Name: GAGAN S <br>Developer Email: gaganshet98@gmail.com</h4>

<h2 style="text-align:center; Color:green"> Welcome To Home Page!</h2>
<div align="right">
<a href="AdminPage.jsp" style="color:Green">Admin Login</a>
</div>

<%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
	if(user!=null){
%>
<p>Welcome <%=user.get("name") %></p>
<a href="Logout">Logout</a>
<%
	}else{
%>
<a href="UserPage.jsp" style="color:Green">User Login</a>
<%
	}
%>
<br><br>
<center>
<div style="border:5px solid black;width:25%;border-radius:20px;padding:20px" align="center">
<form action=FlightList method=post>
	<label for=from>From :</label> <input type=text name=from id=from/><br><br>
	<label for=to>To :</label> <input type=text name=to id=to/><br><br>
	<label for=departure>Departure :</label> <input type=date name=departure id=departure/><br><br>
	<label for=travellers>Travellers :</label> <input type=number name=travellers id=travellers/><br><br>
	<input type=submit value=Search /> <input type=reset />
</form>
</div>
</center>
</body>
</html>