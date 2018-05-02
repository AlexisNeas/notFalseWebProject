<%@include file="LogOut_Action.jsp" %>
<html>
<head>

<title>Login Form</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>
<header>
<h1>Log In</h1>
</header>
<body>
<br> 
<br>
<center>
<form method="post" action="Login_Action.jsp" name="Log In" > <br>
<table class= "login" border="1">
<tbody>
<tr>
<td style="vertical-align: top; width:60px;text-align: left;"><b>Username</b><br>
</td>
<td style="vertical-align: top;width:200px;"><input name="username" style="text-align: left;" > </td>
</tr>
<tr>
<td style="vertical-align: top;width:60px;text-align: left;"><b>Password</b><br>
</td>
<td style="vertical-align: top;width:200px;"><input  name="password" style="text-align: left;" type="password"> </td>
</tr>
<tr >
<td style="vertical-align: top"><input  value="LogIn"
name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top; "><input  value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
</form>
<p class= "Error">
<%  
String error =request.getParameter("logIn");
if(error != null && error.equals("-1")){
	out.println("Wrong username or password.");
}
else if(error !=null && error.equals("-2")){
	out.println("This account is currently deactivated.");
}
else if(error !=null && error.equals("-3")){
	out.println("You must first be logged in to access that page.");
}
else if(error !=null && (error.equals("-4") || error.equals("-5"))){
	out.println("Please sign in again.");
}
else if(error !=null && error.equals("1")){
	out.println("You have been logged out.");
}
%>
</p>
</center>
<br>

</body>
</html>