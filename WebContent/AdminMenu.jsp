<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>Welcome, Admin</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>
<body>
<%  
String error =request.getParameter("notU");
if(error != null && error.equals("-1")){
	out.println("You must be a logged in user to access that page.");
}
%><br>
<u1 class="navbar">
<li><a href="ManageUniversities.jsp">Manage Universities</a></li><br>
<li><a href="ManageUsers.jsp">Manage Users</a></li><br>
<form method="post" action="LogOut_Action.jsp" name="LogOut"><br>
<input value="LogOut"name="Log out" type="submit"></form></u1> 
<br><br>

</body>
</html>