<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>



<title>Add User</title>

</head>

<body>

<br>

Add User form:<br>
<%
String error = request.getParameter("Add");
if (error != null && error.equals("-1"))
{
	out.println("Username must be unique.");
}

%>
<br>

<form method="post" action="Add_Action.jsp" name="addUser"><br>

<table style="text-align: left; width: 266px; height: 228px;"

border="1">

<tbody>

<tr>

<td style="vertical-align: top;">First Name<br>

</td>

<td style="vertical-align: top;"><input name="FirstName"><br>

</td>

</tr>

<tr>

<td style="vertical-align: top;">Last Name<br>

</td>

<td style="vertical-align: top;"><input name="LastName"><br>

</td>

</tr>

<tr>

<td style="vertical-align: top;">Username<br>

</td>

<td style="vertical-align: top;"><input name="Username"> </td>

</tr>

<tr>

<td style="vertical-align: top;">Password<br>

</td>

<td style="vertical-align: top;"><input name="Password"> </td>

</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="Status" value="Y" readonly> </td>
</tr>
<tr>

<td style="vertical-align: top;"><input value="Add"

name="Add" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

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