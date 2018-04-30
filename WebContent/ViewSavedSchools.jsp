<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>

<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="User.*" import = "java.util.ArrayList" import = "DatabaseController.*" import = "University.*" %>
<br>

<!-- <%@include file="UserHeading.jsp" %>-->
<table style="text-align: left; width: 536px; height: 40px;" border="1">
<tbody>
<tr align="center">
<td colspan="3" style="vertical-align: top;">School<br>
</td>
</tr>
<%
	String error = request.getParameter("Error");
	if(error != null && error.equals("-1"))
			out.println("There was an error processing your request. School not removed");
	UserInteraction uc = (UserInteraction)session.getAttribute("userInter");
	ArrayList<String> schools = uc.getSavedUniversities(uc.getUser().getUsername());

	for(int i = 0; i<schools.size(); i++) 
	{
		
	%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="RemoveUserSchoolAction.jsp" name="Remove">
<input name="school" value="<%=schools.get(i) %>" type="hidden">
<input name="Remove" value="Remove" type="submit">
</form>
<br>
</td>
<td style="vertical-align: top;"><%=schools.get(i)%><br>
</td>
<td style="vertical-align: top;"><form method="post" action="ViewSchoolInfoUser.jsp?from=1" name="searchResult">
	<input name="Search" value="0" type="hidden">
	<input name="schoolName" value="<%=schools.get(i) %>" type="hidden">
	<input name="viewSchool" value="View School" type="submit"><br>
</form>
</td>
<%} %>
</tr>
</tbody>
</table>
<br>
</body>
<footer>

<address> <p>Made By !False</p> </address>

</footer>
</html>