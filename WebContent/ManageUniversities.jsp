<%@page language = "java" import = "User.*" import = "University.*" import = "java.util.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>ManageUniversities</title>
</head>
<body>
<%
AdminInteractions ai = new AdminInteractions();


%>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"># of <br>
Students<br>
</td>
<td style="vertical-align: top;">% <br>
Females<br>
</td>
<td style="vertical-align: top;">SAT<br>
Verbal<br>
</td>
<td style="vertical-align: top;">SAT<br>
Math<br>
</td>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;">% with<br>
Financial<br>
Aid<br>
</td>
<td style="vertical-align: top;"># of<br>
Applicants<br>
</td>
<td style="vertical-align: top;">%<br>
Admitted<br>
</td>
<td style="vertical-align: top;">%<br>
Enrolled<br>
</td>
<td style="vertical-align: top;">Academics<br>
Scale (1-5)<br>
</td>
<td style="vertical-align: top;">Social<br>
Scale (1-5)<br>
</td>
<td style="vertical-align: top;">Quality<br>
of Life<br>
Scale <br>
(1-5)<br>
</td>
</tr>
<%
ArrayList<University> universityList = ai.viewUniversities();
for (University univ: universityList)
{
%>
<tr>
<td style="vertical-align: top;"><input name="School Name" value=<%=univ.getSchoolName()%>>
<br>
</td>
<td style="vertical-align: top;"><input name="State" value = <%=univ.getState()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "Location" value = <%=univ.getLocation()%>> 
<br>
</td>
<td style="vertical-align: top;"><input name = "Control" value = <%=univ.getControl()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "Number of Students" value = <%=univ.getNumStudents()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "PercentFemale" value = <%=univ.getPercentFemale()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "SATVerbal" value = <%=univ.getSatVerbal()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "SATMath" value = <%=univ.getSatMath()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "Expenses" value = <%=univ.getTuition()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "Percent with Financial Aid" value = <%=univ.getPercentRecFinAid()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "Number of Applicants" value = <%=univ.getNumApplicants()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "Percent Admitted" value = <%=univ.getPercentAccepted()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "Percent Enrolled" value = <%=univ.getPercentEnroll()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "Academics Scale" value = <%=univ.getAcademicScale()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "Social Scale" value = <%=univ.getSocial()%>>
<br>
</td>
<td style="vertical-align: top;"><input name = "Quality of Life Scale" value = <%=univ.getQualOfLife()%>>
<br>
</td>
<form method="post" action="ViewSchoolInfo.jsp" name="Schools"><br>
<td style="vertical-align: top;"><input name="Edit"  value="Edit" type="submit"></input>
<br>
<input name="SchoolName" value=<%=univ.getSchoolName()%> type = "hidden">
</form>
</td>
</tr>
<%
}
%>
</tbody>
</table>
<br>
<br>
</body>
</html>

