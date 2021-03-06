<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<%@page language="java" import="User.*" import = "University.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>View School Info</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>
<body>
<%String from = request.getParameter("from");
String theURL = "UserMenu.jsp";
if(from != null)
{
	if(from.equals("0")) //search
	{
		theURL = "searchResults.jsp?result=3";
	}
	else if(from.equals("1"))//savedSchools
	{
		theURL = "ViewSavedSchools.jsp?from="+from;
	}
	
}
%>

<form method="post" action =<%=theURL%>  name="searchResult">
<input name="goBack" value="Go Back" type="submit">
</form>
<br>
<big><big style="font-weight: bold;"><big>School Info:</big></big></big><br>
<br>
<%
	String result = request.getParameter("result");
	if(result != null && result.equals("2")){
		out.println("There was an error in saving your school.");
	}
	else if(result != null && result.equals("1")){
		out.println("Your school has been saved.");
	}
	UserInteraction ui = (UserInteraction)session.getAttribute("userInter");
	String schoolName = request.getParameter("schoolName");
	University u = ui.viewSchoolInfo(schoolName);
%>
<% String searched = request.getParameter("Search");
	if(searched != null && searched.equals("1")){ %>
<form method="post" action="addSchoolToProfileAction.jsp" name="searchResult">
<input name="save" value="Save" type="submit">
<input name="saveSchool" value="<%=u.getSchoolName() %>" type="hidden">
<input name="viewing" value="1" type="hidden">
</form>
<% } %>
<table style="text-align: left; width: 100%;" border="1">
<tbody>
<tr>
<td style="vertical-align: top;">SCHOOL<br>
</td>
<td style="vertical-align: top;"><%=u.getSchoolName()%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">STATE<br>
</td>
<td style="vertical-align: top;"><%= u.getState() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">LOCATION<br>
</td>
<td style="vertical-align: top;"><%= u.getLocation() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><%= u.getControl() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top;"><%= u.getNumStudents() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% FEMALE<br>
</td>
<td style="vertical-align: top;"><%= u.getPercentFemale() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT VERBAL<br>
</td>
<td style="vertical-align: top;"><%= u.getSatVerbal() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT MATH<br>
</td>
<td style="vertical-align: top;"><%= u.getSatMath() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">EXPENSES<br>
</td>
<td style="vertical-align: top;"><%= u.getTuition() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top;"><%= u.getPercentRecFinAid() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
</td>
<td style="vertical-align: top;"><%= u.getNumApplicants() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% ADMITED<br>
</td>
<td style="vertical-align: top;"><%= u.getNumApplicants() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% ENROLLED<br>
</td>
<td style="vertical-align: top;"><%= u.getPercentEnroll() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">ACADEMICS SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><%= u.getAcademicScale() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SOCIAL SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><%= u.getSocial() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">QUALITY OF LIFE SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><%= u.getQualOfLife() %><br>
</td>
</tr>
<tr>
<td colspan="1" rowspan="5" style="vertical-align: top;">EMPHASES<br>
</td>
<td style="vertical-align: top;"><%= u.getStudyArea1() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><%= u.getStudyArea2() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><%= u.getStudyArea3() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><%= u.getStudyArea4() %><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><%= u.getStudyArea5() %><br>
</td>
</tr>
</tbody>
</table>
<br>
<br>
<%
	if(searched != null && searched.equals("1")){ %>
		<%@include file="SimilarSchools_Action.jsp" %><%
	}
%>
</body>
</html>

