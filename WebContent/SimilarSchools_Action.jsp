<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<%@page language="java" import="User.*" import = "University.*" import="java.util.*"%>
<%
	UserInteraction userInteraction = (UserInteraction)session.getAttribute("userInter");
	String aSchool = request.getParameter("schoolName");
	ArrayList<University> schools = userInteraction.displaySimilarSchools(aSchool);

%>
<table
style="text-align: left; width: 905px; background-color: rgb(183, 190, 184); height: 32px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; text-align: center;">Check out
these Similar Schools<br>
</td>
</tr>
</tbody>
</table>
<table style="text-align: left; width: 100%;" border="1">
<tbody>
<tr>
<%
	for(int i = 0; i < schools.size(); i++)
	{
%>
<td style="vertical-align: top;">
School
Name:&nbsp;&nbsp; <input name="schoolName" value="<%= schools.get(i).getSchoolName() %>"><br>
Location:&nbsp;&nbsp; <input name="location" value="<%= schools.get(i).getLocation() %>"><br>
State:&nbsp;&nbsp; <input name="state" value="<%= schools.get(i).getState() %>"><br>
<form method="post" action="ViewSchoolInfoUser.jsp" name="similar">
<input name="Search" value="1" type="hidden">
<input name="schoolName" value="<%= schools.get(i).getSchoolName() %>" type="hidden">
<input name="viewSchool" value="View School" type="submit"><br>
</form>
<br>
</td>
<% } %>
</tr>
</tbody>
</table>
