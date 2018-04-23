<%@ page language="java" import ="User.*" import = "java.util.ArrayList" import = "DatabaseController.*" import = "University.*"%>
<%@include file="Search_Action.jsp" %>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"http-equiv="content-type">

<title></title>
</head>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<th
style="vertical-align: top; text-align: center; background-color: rgb(172, 148, 168);">Your
Search Results<br>
</th>
</tr>
</tbody>
</table>

<%

if(u != null)
{
int size = u.size();
UserInteraction interactions = new UserInteraction();
for(int i = 0; i < size;i++)
{
	


%>
<form method="post" action="saveSchool" name="searchResult">
<table style="text-align: left; width: 100%;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td
style="vertical-align: top; width: 100px; text-align: center;"><input
name="saveSchool" value="Save" type="submit"><br>
</td>
<td style="vertical-align: top;"><br>
<%
out.println("School Name: " + u.get(i).getSchoolName() + "\n" + "State: " + u.get(i).getState());
%>
</td>
<td
style="vertical-align: top; width: 150px; text-align: center;"><input
name="viewSchool" value="View School" type="submit"><br>
</td>
</tr>
</tbody>
</table>
<%
}
}
else{
	out.println("No Results for your search criteria :(");
}
%>
<br>
</form>
</body>
</html>