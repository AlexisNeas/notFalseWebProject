<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<%@page language = "java" import = "User.*"%>
<html>
<head>

<title>View Profile</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>
<header>
<div>
<h1>Edit Profile</h1>
</div>
</header>

<body>
<br>
<div>
<%@include file="UserHeading.jsp" %>
</div>
<br><br>

<% String error = request.getParameter("Edit");

if(error !=null && error.equals("-1"))
{
	out.println("User information not edited.");
}
else if(error != null && error.equals("0"))
{
	out.println("User information edited.");
}
%>
<br>

<%
UserInteraction uc = (UserInteraction)session.getAttribute("userInter");
Account user = uc.viewProfile(uc.getUser().getUsername());
%>
<form method="post" action="EditAccount_Action.jsp" name="editUser"><br>
<table style="text-align: left; " border="1" >
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName" value=<%=user.getFirstName()%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName" value=<%=user.getLastName()%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username" value=<%=user.getUsername()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password" value=<%=user.getPassword()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type" value=<%=user.getAccountType()%> readonly> 
<input name="Status" value=<%=user.getStatus()%> type="hidden"></td>
</tr>
<tr>
<td style="vertical-align: top;"><input value="Edit"
name="Edit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</body>
<footer>

<address> <p>Made By !False</p> </address>

</footer>
</html>

