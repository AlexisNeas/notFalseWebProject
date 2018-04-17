<html>
<head>

<title>Login Form</title>
</head>
<body>
<br> 
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
%>
Login form:<br>
<br>
<form method="post" action="Login_Action.jsp" name="Login"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="password"> </td>
</tr>

<td style="vertical-align: top;"><input value="Log in"
name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</body>
</html>