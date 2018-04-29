
<html>
<head>

<title>Edit Account</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="User.*" %>
<br>
 Edit
<%String username= request.getParameter("Username");
 out.print( username);
 %>
<br>
<%
String error = request.getParameter("Edit");
if(error !=null && error.equals("-1"))
{
	out.println("There was an invalid input. Please try again.");
}
else if(error != null && error.equals("0"))
{
	out.println("Account information edited.");
}
%>
<br>

<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");
Account account = ai.getUserInfo(username);
boolean sameAcct = false;
if(account.equals(ai.getAdmin()))
	sameAcct = true;
%>
<form method="post" action="EditAccount_Action.jsp" name="editUser"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName" value=<%=account.getFirstName()%>><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName" value=<%=account.getLastName()%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username" value=<%=account.getUsername()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password" value=<%=account.getPassword()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type" value=<%=account.getAccountType()%> 
<% if(sameAcct){ out.println("readonly");}%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="Status" value=<%=account.getStatus()%> 
<% if(sameAcct){ out.println("readonly");}%>> </td>
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
