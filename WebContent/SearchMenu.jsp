<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>searchMenu</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>

<body>
<%@include file="UserHeading.jsp" %>
<div style="text-align: right;">
<form method="post" action="searchResults.jsp" name="searchForm"><span
style="font-family: DejaVu Sans;">Search Menu</span>
<div style="text-align: left;">
<table style="text-align: left; width: 100%;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School Name</td>
<td style="vertical-align: top;"><input name="schoolName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><input name="state"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input name="location"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input name="control"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowNumStudents"> High:<input name="upNumStudents"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Female<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowPercentFemale"> High:<input name="upPercentFemale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;">Low:<input name="lowSATVerbal">
High:<input name="upSATVerbal"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;">Low:<input name="lowSATMath">
High:<input name="upSATMath"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Tuition<br>
</td>
<td style="vertical-align: top;">Low:<input name="lowTuition">
High:<input name="upTuition"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Receiving Financial Aid<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowPercentRecFinAid"> High:<input name="upPercentRecFinAid"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Applicants<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowNumApplicants"> High:<input name="upNumApplicants"></td>
</tr>
<tr>
<td style="vertical-align: top;">% Accepted<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowPercentAccepted"> High:<input name="upPercentAccepted"></td>
</tr>
<tr>
<td style="vertical-align: top;">% Enrolled<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowPercentEnrolled"> High:<input name="upPercentEnrolled"></td>
</tr>
<tr>
<td style="vertical-align: top;">Academics Scale (1-5)<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowAcademicsScale"> High:<input name="upAcademicsScale"></td>
</tr>
<tr>
<td style="vertical-align: top;">Social Scale (1-5)<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowSocialScale"> High:<input name="upSocialScale"></td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of Life (1-5)<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowQualityOfLifeScale"> High:<input name="upQualityOfLifeScale"></td>
</tr>
<tr>
<td style="vertical-align: top;">Emphases<br>
<br>
<br>
<input name="submitButton" type="submit"><br>
<input name="reset" type="reset"><br>
</td>
<td style="vertical-align: top;">1:<input name="studyArea1"><br>
2:<input name="studyArea2"><br>
3:<input name="studyArea3"><br>
4:<input name="studyArea4"><br>
5:<input name="studyArea5"></td>
</tr>
</tbody>
</table>
<span style="font-family: DejaVu Sans;"></span></div>
</form>
</div>
</body>
</html>