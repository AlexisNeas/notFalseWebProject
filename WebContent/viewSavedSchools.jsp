<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="User.*" import = "java.util.ArrayList" import = "DatabaseController.*" import = "University.*" %>
<br>
<table style="text-align: left; width: 536px; height: 40px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr align="center">
<td colspan="3" style="vertical-align: top;">School<br>
</td>
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
<td style="vertical-align: top;">
<form method="post" action="RemoveUserSchoolAction.jsp" name="Remove">
<input name="school" value="<%interactions.remove(schools.get(i), "juser"); %>" type="hidden">
<input name="Remove" value="Remove" type="submit">
</form>
<br>
</td>
<td style="vertical-align: top;"><%=schools.get(i)%><input readonly="readonly"
name="school"><br>
</td>
<td style="vertical-align: top;"><form method="post" action="ViewSchoolAction.jsp" name="ViewSchool">
	<input name="school" value= <%=schools.get(i) %> type="hidden">
	<input name="ViewSchool" value="ViewSchool" type="submit"><br>
	</form>
</td>
<%} %>
</tr>
</tbody>
</table>
<br>
</body>
</html>