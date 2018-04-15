<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>View Users</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="User.*" import = "java.util.ArrayList" import = "DBCOntroller"%>
<% AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter"); %>

<big><big><big><big>View Users:<br>
</big></big></big></big>
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
<% 	new DBController("juser","user");
	ArrayList<Account> accounts = ai.getListOfUsers();

	for(int i = 0; i<accounts.size(); i++) 
	{
		
	%>

<tr>
<tr>
<td style="vertical-align: top;"><input name="Username"
value="<%=accounts.get(i).getUsername() %>" type="hidden"><input name="Edit" value="Edit"
type="submit"><br>
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
<input name="Username" value= <%= accounts.get(i).getUsername() %> type="hidden">
<input name="Deactivate" value="Deactivate" type="submit"><br>
</td>
</tr>
<% } %>
</tbody>
</table>
<big><big><big><big><small><small><small></small></small></small><br>
</big></big></big></big>
</body>
</html>