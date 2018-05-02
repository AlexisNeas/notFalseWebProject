
<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>Search Menu</title>
<link rel="stylesheet" type="text/css" href="CMC.css">
</head>

<header>
<div>
<h1>Search for a school</h1>
<h2>Enter desired search criteria</h2>
</div>

</header>
<body>
<div>
<%@include file="UserHeading.jsp" %>
</div>
<br><br><br><br>
<form method="post" action="searchResults.jsp?result=1" name="searchForm"><span
style="font-family: DejaVu Sans;"></span>

<table class= "search" style="text-align: left;" border="1"
cellpadding="1" cellspacing="1">
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
name="lowNumStudents"><br>High:<input name="upNumStudents">
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Female<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowPercentFemale"> <br>High:<input name="upPercentFemale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;">Low:<input name="lowSATVerbal">
<br>High:<input name="upSATVerbal"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;">Low:<input name="lowSATMath">
<br>High:<input name="upSATMath"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Tuition<br>
</td>
<td style="vertical-align: top;">Low:<input name="lowTuition">
<br>High:<input name="upTuition"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Receiving Financial Aid<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowPercentRecFinAid"> <br>High:<input name="upPercentRecFinAid"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Applicants<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowNumApplicants"><br>High:<input name="upNumApplicants"></td>
</tr>
<tr>
<td style="vertical-align: top;">% Accepted<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowPercentAccepted"><br>High:<input name="upPercentAccepted"></td>
</tr>
<tr>
<td style="vertical-align: top;">% Enrolled<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowPercentEnrolled"><br>High:<input name="upPercentEnrolled"></td>
</tr>
<tr>
<td style="vertical-align: top;">Academics Scale (1-5)<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowAcademicsScale"><br>High:<input name="upAcademicsScale"></td>
</tr>
<tr>
<td style="vertical-align: top;">Social Scale (1-5)<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowSocialScale"><br>High:<input name="upSocialScale"></td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of Life (1-5)<br>
</td>
<td style="vertical-align: top;">Low:<input
name="lowQualityOfLifeScale"><br>High:<input name="upQualityOfLifeScale"></td>
</tr>
<tr>
<td style="vertical-align: top;">Emphases<br>
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

</body>
<footer>

<address> <p>Made By !False</p> </address>

</footer>
</html>