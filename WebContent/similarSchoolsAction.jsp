<%



%>
<table
style="text-align: left; width: 1621px; background-color: rgb(183, 190, 184); height: 32px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; text-align: center;">Check out
these Similar Schools<br>
</td>
</tr>
</tbody>
</table>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">
<form method="post" action="ViewSchoolInfo.jsp" name="similar1">School
Name:<%=us.get(0).getSchoolName()%>&nbsp;&nbsp; <input name="schoolName" value="HI"><br>
Location:<%= us.get(0).getLocation()%>&nbsp;&nbsp; <br>
Emphases:<%= us.get(0).getStudyArea1()%>&nbsp;&nbsp; <br>
<input name="viewSchool" value="View School" type="submit"><br>
<input name="School" value= <%= us.get(0).getSchoolName() %> type="hidden">
</form>
<br>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewSchoolInfo.jsp" name="similar2">School
Name:<%=us.get(1).getSchoolName()%>&nbsp;&nbsp; <input name="schoolName" value="HI"><br>
Location:<%= us.get(1).getLocation()%>&nbsp;&nbsp; <br>
Emphases:<%= us.get(1).getStudyArea1()%>&nbsp;&nbsp; <br>
<input name="viewSchool" value="View School" type="submit"><br>
<input name="School" value= <%= us.get(1).getSchoolName() %> type="hidden">
</form>
<br>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewSchoolInfo.jsp" name="similar3">School
Name:<%=us.get(0).getSchoolName()%>&nbsp;&nbsp; <input name="schoolName" value="HI"><br>
Location:<%= us.get(2).getLocation()%>&nbsp;&nbsp; <br>
Emphases:<%= us.get(2).getStudyArea1()%>&nbsp;&nbsp; <br>
<input name="viewSchool" value="View School" type="submit"><br>
<input name="School" value= <%= us.get(2).getSchoolName() %> type="hidden">
</form>
<br>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewSchoolInfo.jsp" name="similar4">School
Name:<%=us.get(3).getSchoolName()%>&nbsp;&nbsp; <input name="schoolName" value="HI"><br>
Location:<%= us.get(3).getLocation()%>&nbsp;&nbsp; <br>
Emphases:<%= us.get(3).getStudyArea1()%>&nbsp;&nbsp; <br>
<input name="viewSchool" value="View School" type="submit"><br>
<input name="School" value= <%= us.get(3).getSchoolName() %> type="hidden">
</form>
<br>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewSchoolInfo.jsp" name="similar5">School
Name:<%=us.get(4).getSchoolName()%>&nbsp;&nbsp; <input name="schoolName" value="HI"><br>
Location:<%= us.get(4).getLocation()%>&nbsp;&nbsp; <br>
Emphases:<%= us.get(4).getStudyArea1()%>&nbsp;&nbsp; <br>
<input name="viewSchool" value="View School" type="submit"><br>
<input name="School" value= <%= us.get(4).getSchoolName() %> type="hidden">
</form>
<br>
</td>
</tr>
</tbody>
</table>
