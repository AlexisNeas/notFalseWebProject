<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="DatabaseController.*" import = "User.*" import = "University.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");
String error =request.getParameter("addNewSchool");
if(error != null)
{
	if(Integer.parseInt(error) == -1)
		out.println("Failed to add new school. Try Again.");
}
%>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">SCHOOL<br>
</td>
<td style="vertical-align: top;"><input name = "SchoolName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">STATE<br>
</td>
<td style="vertical-align: top;"><input name = "State"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">LOCATION<br>
</td>
<td style="vertical-align: top;"><input name = "Location"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><input name = "Control"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top;"><input name = "NumStudents"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% FEMALE<br>
</td>
<td style="vertical-align: top;"><input name = "PerFemale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT VERBAL<br>
</td>
<td style="vertical-align: top;"><input name = "satVerbal"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT MATH<br>
</td>
<td style="vertical-align: top;"><input name = "satMath"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">EXPENSES<br>
</td>
<td style="vertical-align: top;"><input name = "Expenses"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top;"><input name = "FinAid"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
</td>
<td style="vertical-align: top;"><input name = "NumApp"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% ADMITTED <br>
</td>
<td style="vertical-align: top;"><input name = "PerAdmitted"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% ENROLLED<br>
</td>
<td style="vertical-align: top;"><input name = "PerEnrolled"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">ACADEMICS SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name = "AcScale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SOCIAL SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name = "SocialScale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">QUALITY OF LIFE SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name = "QualOfLife"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">EMPHASES<br>
</td>
<td style="vertical-align: top;"><br>
</td>
</tr>
</tbody>
</table>
<br>
<form method = "post" action = "AddNewSchool_Action.jsp" name ="Add School"><br>
<input value="Add School" name="Add School" type="submit"><br>
</form> 
<br>
<form method = "post" action = "ManageUniversities.jsp" name = "Cancel"><br>
<input value = "Cancel" name = "Cancel" type = "submit"><br>
</form>
</body>
</html>

