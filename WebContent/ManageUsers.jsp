<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="User.*" import = "java.util.ArrayList" import = "DatabaseController.*"%>
<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>View Users</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>
<header>
<div>
<h1>Manage Users</h1>
</div>
</header>

<body>
<div>
<%@include file="AdminHeading.jsp" %>
</div>
<br><br><br>

<table style="text-align: center; width: 809px; height: 60px;" border="1" >
<tbody >
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
<%	AdminInteractions interactions = (AdminInteractions)session.getAttribute("adminInter");
	ArrayList<Account> accounts = interactions.getListOfUsers();

	for(int i = 0; i<accounts.size(); i++) 
	{
		
	%>


<tr>
<td style="vertical-align: top;">
<form method="post" action="EditAccount.jsp" name="Edit">
<input name="Username" value="<%=accounts.get(i).getUsername() %>" type="hidden">
<input name="Edit" value="Edit" type="submit">
</form>
</td>
<td style="vertical-align: top;"><%= accounts.get(i).getFirstName() + " "+accounts.get(i).getLastName() %>
</td>
<td style="vertical-align: top;"><%= accounts.get(i).getUsername() %>
</td>
<td style="vertical-align: top;"><%= accounts.get(i).getPassword() %>
</td>
<td style="vertical-align: top;"><%= accounts.get(i).getAccountType() %>
</td>
<td style="vertical-align: top;"><%= accounts.get(i).getStatus() %>
</td>
<td style="vertical-align: top;">
<%if(accounts.get(i).equals(interactions.getAdmin()))
		out.println("This is you");
else if(accounts.get(i).getStatus() == 'Y'){ %>
<form method="post" action="Deactivate_Action.jsp" name="Deactivate">
	<input name="Username" value= <%= accounts.get(i).getUsername() %> type="hidden">
	<input name="Deactivate" value="Deactivate" type="submit">
</form>
<% } else { %>
<form method="post" action="Activate_Action.jsp" name="Activate">
	<input name="Username" value= <%= accounts.get(i).getUsername() %> type="hidden">
	<input name="Activate" value="Activate" type="submit">
</form>
<% } %>
</td>
</tr>
<% } %>
</tbody>
</table>

</body>
<br><br>
<footer>

<address> <p>Made By !False</p> </address>

</footer>
</html>