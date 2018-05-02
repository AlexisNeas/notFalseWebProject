<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<%@page language = "java" import = "User.*" import = "University.*" import = "java.util.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>ManageUniversities</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>
<header>
<div>
<h1>Manage Universities</h1>
</div>
</header>
<br>
<div>
<%@include file="AdminHeading.jsp" %>
</div>
<br><br><br><br>
<body>


<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");


%>

<table style="text-align: center; width: 60%;">
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
<td style="vertical-align: top;"><%=univ.getSchoolName()%>
<br>
</td>
<td style="vertical-align: top;"> <%=univ.getState()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getLocation()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getControl()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getNumStudents()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getPercentFemale()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getSatVerbal()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getSatMath()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getTuition()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getPercentRecFinAid()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getNumApplicants()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getPercentAccepted()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getPercentEnroll()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getAcademicScale()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getSocial()%>
<br>
</td>
<td style="vertical-align: top;"><%=univ.getQualOfLife()%>
<br>
</td>
<td style="vertical-align: top; width: 30px;">
<form method="post" action="EditUniversity.jsp" name="Schools">
<input name="Edit"  value= "Edit" type="submit"></input>
<input name="School" value= "<%= univ.getSchoolName() %>" type="hidden"></input>
<br>
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
<footer>

<address> <p>Made By !False</p> </address>

</footer>
</html>

