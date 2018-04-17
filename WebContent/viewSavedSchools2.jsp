<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>View Users</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="User.*" import = "java.util.ArrayList" import = "DatabaseController.*" import = "University.*" %>

<font size = "18">View Saved Schools:</font>
<br>


<table style="text-align: left; width: 809px; height: 60px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School</td>

</tr>
<%
//UserInteraction uc = (UserInteraction)session.getAttribute("userInter");
//Account user = uc.viewProfile(uc.getUser().getUsername());
//UserInteraction uc = new UserInteraction();
UserInteraction interactions = new UserInteraction();
ArrayList<String> schools = interactions.getSavedUniversities("juser");

	//ArrayList<String> schools = interactions.getSavedUniversities(interactions.getUser().getUsername());

	for(int i = 0; i<schools.size(); i++) 
	{
		
	%>

<tr>
<tr>
<td style="vertical-align: top;">
<form method="post" action="removeUserSchoolAction.jsp" name="Remove">
<input name="School" value="<%interactions.remove(schools.get(i), "juser"); %>" type="hidden">
<input name="Remove" value="Remove" type="submit">
<br>
</td>
<td style="vertical-align: top;"><%= schools.get(i)%><br>
</td>

<td style="vertical-align: top;">
<form method="post" action="ViewSchoolAction.jsp" name="ViewSchool">
	<input name="school" value= <%= schools.get(i) %> type="hidden">
	<input name="viewSchool" value="viewSchool" type="submit"><br>
</form>
</td>
</tr>
<% } %>
</tbody>
</table>
</body>
</html>