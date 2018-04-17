<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<%  
String error =request.getParameter("notA");
if(error != null && error.equals("-1")){
	out.println("You must be a logged in admin to access that page.");
}
%><br>
<a href="SearchMenu.jsp">Search for Schools</a><br>
<a href="ViewSavedSchools.jsp">Manage My Saved Schools</a><br>
<a href="EditProfile.jsp">Manage My Profile</a><br>
<br><br>
<form method="post" action="LogOut_Action.jsp" name="LogOut"><br>
<input value="Log Out"name="Log out" type="submit"></form>
</body>
</html>