<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<%@ page language="java" import = "DatabaseController.*" 
import = "User.*" import = "University.*" import = "java.util.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>Add New School</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>
<header>
<div>
<h1>Add New School</h1>
<h2 class="Error">
<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");
String error =request.getParameter("add");
if(error != null)
{ 
	if(Integer.parseInt(error) == -1) out.println("Failed to add new school. Try Again.");
}
%>
</h2>
</div>
</header>
<body>
<div>
<%@include file="AdminHeading.jsp" %>
</div>
<form method="post" action="AddNewSchool_Action.jsp" name="addNewSchool">
<table class = "UpperInput" style="text-align: left; text-transform: capitalize;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">SCHOOL<br>
</td>
<td style="vertical-align: top;"><input name="SchoolName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">STATE<br>
</td>
<td style="vertical-align: top;"><input name="State"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">LOCATION<br>
</td>
<td style="vertical-align: top;"><input name="Location"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><input name="Control"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top;"><input name="NumStudents"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% FEMALE<br>
</td>
<td style="vertical-align: top;"><input name="PerFemale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT VERBAL<br>
</td>
<td style="vertical-align: top;"><input name="satVerbal"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT MATH<br>
</td>
<td style="vertical-align: top;"><input name="satMath"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">EXPENSES<br>
</td>
<td style="vertical-align: top;"><input name="Expenses"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top;"><input name="FinAid"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
</td>
<td style="vertical-align: top;"><input name="NumApp"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% ADMITTED <br>
</td>
<td style="vertical-align: top;"><input name="PerAdmitted"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% ENROLLED<br>
</td>
<td style="vertical-align: top;"><input name="PerEnrolled"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">ACADEMICS SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="AcScale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SOCIAL SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="SocialScale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">QUALITY OF LIFE SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="QualOfLife"><br>
</td>
</tr>
<tr>
<td colspan="1" rowspan="5" style="vertical-align: top;">EMPHASES<br>
</td>
<td style="vertical-align: top;"><input name = "emp1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name = "emp2"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name = "emp3"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name = "emp4"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name = "emp5"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input style="width: 200px; height: 80px; word-wrap:normal; text-spacing:1px; margin:auto;"value="AddSchool" name="Add School" type="submit"><br>
</td>
<td></td>
</tr>
</tbody>
</table>
</form>
<form method="post" action="ManageUniversities.jsp" name="Cancel">
<input value="Cancel" name="Cancel" type="submit"><br>
</form>
</body>
</html>

