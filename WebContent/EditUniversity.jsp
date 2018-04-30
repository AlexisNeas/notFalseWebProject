<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="DatabaseController.*" import = "User.*" import = "University.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>Edit University</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>
<header>
<div>
<h1>Edit University</h1>
</div>
</header>

<body>
<div>
<%@include file="AdminHeading.jsp" %>
</div>
<br>
<%
String result = request.getParameter("edit");
if(result != null && result.equals("1")){
	out.println("Your school has been saved");
}
else if(result != null && result.equals("-1")){
	out.println("There was invalid input. Please fix your changes and try again.");
}
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");
String school = request.getParameter("School");
University univ = ai.getSchoolInfo(school);
%>
<form method = "post" action = "EditUniversity_Action.jsp" name = "editUniversity"><br>
<table style="text-align: left; width: 502px; height: 508px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">SCHOOL<br>
</td>
<td style="vertical-align: top;"><input name="school" value="<%=univ.getSchoolName()%>" readonly><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">STATE<br>
</td>
<td style="vertical-align: top;"><input name="state" value="<%=univ.getState()%>"></td>
</tr>
<tr>
<td style="vertical-align: top;">LOCATION<br>
</td>
<td style="vertical-align: top;"><input name="location" value="<%=univ.getLocation()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><input name="control" value="<%=univ.getControl()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top;"><input name="numStudents" value="<%=univ.getNumStudents()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% FEMALE<br>
</td>
<td style="vertical-align: top;"><input name="perFemale" value="<%=univ.getPercentFemale()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT VERBAL<br>
</td>
<td style="vertical-align: top;"><input name="satVerbal" value="<%=univ.getSatVerbal()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT MATH<br>
</td>
<td style="vertical-align: top;"><input name="satMath" value="<%=univ.getSatMath()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">EXPENSES<br>
</td>
<td style="vertical-align: top;"><input name="expenses" value="<%=univ.getTuition()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top;"><input name="perFinancialAid" value="<%=univ.getPercentRecFinAid()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
</td>
<td style="vertical-align: top;"><input name="numOfApplicants" value="<%=univ.getNumApplicants()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% ADMITTED<br>
</td>
<td style="vertical-align: top;"><input name="perAdmitted" value="<%=univ.getPercentAccepted()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% ENROLLED<br>
</td>
<td style="vertical-align: top;"><input name="perEnrolled" value="<%=univ.getPercentEnroll()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">ACADEMIC SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="academicScale" value="<%=univ.getAcademicScale()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SOCIAL SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="socialScale" value="<%=univ.getSocial()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">QUALITY OF LIFE SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="qualityOfLifeScale" value="<%=univ.getQualOfLife()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">EMPHASES<br>
</td>
<td style="vertical-align: top;">
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;"><input name="emphases1" value="<%=univ.getStudyArea1()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="emphases2" value="<%=univ.getStudyArea2()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="emphases3" value="<%=univ.getStudyArea3()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="emphases4" value="<%=univ.getStudyArea4()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="emphases5" value="<%=univ.getStudyArea5()%>"><br>
</td>
</tr>
</tbody>
</table>
<br>
</td>
</tr>
</tbody>
</table>
<br>
<br>
<br>
<input  value="Apply Changes" name="applyChanges" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  value="Cancel Changes" name="cancelChanges" type="reset"><br>
<br>
<br>
</form>
<br>
</body>
<footer>

<address> <p>Made By !False</p> </address>

</footer>
</html>