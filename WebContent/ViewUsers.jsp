<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>View Users</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="User.*" import = "java.util.ArrayList" import = "DatabaseController.*"%>

<font size = "18">View Users:</font>
<br>

<form method="post" action="AddAccount.jsp" name="Add Account">
	<input name="Add" value="Add Account" type="submit"><br>
</form>
<table style="text-align: left; width: 809px; height: 60px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Edit</td>
<td style="vertical-align: top;">Full Name<br>
</td>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;">Deactivate<br>
</td>
</tr>
<%	AdminInteractions interactions = new AdminInteractions();
	ArrayList<Account> accounts = interactions.getListOfUsers();

	for(int i = 0; i<accounts.size(); i++) 
	{
		
	%>

<tr>
<tr>
<td style="vertical-align: top;">
<input name="Username" value="<%=accounts.get(i).getUsername() %>" type="hidden">
<input name="Edit" value="Edit" type="submit">
<br>
</td>
<td style="vertical-align: top;"><%= accounts.get(i).getFirstName() + " "+accounts.get(i).getLastName() %><br>
</td>
<td style="vertical-align: top;"><%= accounts.get(i).getUsername() %><br>
</td>
<td style="vertical-align: top;"><%= accounts.get(i).getPassword() %><br>
</td>
<td style="vertical-align: top;"><%= accounts.get(i).getAccountType() %><br>
</td>
<td style="vertical-align: top;"><%= accounts.get(i).getStatus() %><br>
</td>
<td style="vertical-align: top;">
<form method="post" action="Deactivate.jsp" name="Deactivate">
	<input name="Username" value= <%= accounts.get(i).getUsername() %> type="hidden">
	<input name="Deactivate" value="Deactivate" type="submit"><br>
</form>
</td>
</tr>
<% } %>
</tbody>
</table>
</body>
</html>