<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0>
<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>MainMenu</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>
<header>
<div>
<h1>Welcome to CMC</h1>
<h2>Main Menu</h2>
</div>
</header>
<body>
<div>
<%@include file="AdminHeading.jsp" %>
</div>

<%  
String error =request.getParameter("notA");
if(error != null && error.equals("-1")){
	out.println("You must be a logged in admin to access that page.");
}
%>
<br>
<br><br>
</body>
<br><br><br><br><br><br><br><br><br>
<footer>

<address> <p>Made By !False</p> </address>

</footer>
</html>