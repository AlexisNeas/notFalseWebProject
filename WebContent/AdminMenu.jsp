<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<%  
String error =request.getParameter("notU");
if(error != null && error.equals("-1")){
	out.println("You must be a logged in user to access that page.");
}
%><br>
<a href="ViewSchools.jsp">Manage Universities</a><br>
<<<<<<< HEAD
<a href="ManageUsers.jsp">Manage Users</a><br>
<br><br>
<form method="post" action="LogOut_Action.jsp" name="LogOut"><br>
<input value="Log Out"name="Log out" type="submit"></form>
</body>
</html>