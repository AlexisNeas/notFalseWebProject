<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0>
<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>MainMenu</title>
<link rel="stylesheet" type="text/css" href="build/CMC.css">
</head>
<body>
<h1>Welcome, User </h1>
<form align="right" method="post" action="LogOut_Action.jsp" name="LogOut"><br>
<input value="Log Out"name="Log out" type="submit"></form>
<address>Made by !False</address>
<%  
String error =request.getParameter("notA");
if(error != null && error.equals("-1")){
	out.println("You must be a logged in admin to access that page.");
}
%><br>
<u1 class="navbar">
<li><a href="SearchMenu.jsp">Search for Schools</a><br>
<li><a href="ViewSavedSchools.jsp">Manage My Saved Schools</a><br>
<li><a href="EditProfile.jsp">Manage My Profile</a><br>
</u1>
<br><br>

</body>
</html>