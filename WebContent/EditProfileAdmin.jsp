<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<%@page language = "java" import = "User.*"%>
<html>
<head>

<title>View Profile</title>
</head>
<body>
<br>
Edit User form:<br>
<%
String error = request.getParameter("Edit");
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
//UserInteraction uc = (UserInteraction)session.getAttribute("userInter");
//Account user = uc.viewProfile(uc.getUser().getUsername());
UserInteraction uc = new UserInteraction();
session.setAttribute("userInter", uc);
Account user = uc.viewProfile("juser");
%>
<form method="post" action="EditAccount_Action.jsp" name="editUser"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName" value=<%=user.getFirstName()%>><br>
</td>
</tr>
<tr>
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
<td style="vertical-align: top;"><input name="Type" value=<%=user.getAccountType()%>> </td>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="Status" value=<%=user.getStatus()%>></td>
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
</html>

