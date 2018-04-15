<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>viewSchool</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="User.*" import = "java.util.ArrayList" import = "DatabaseController.*"%>
<form method="post" action="viewSavedSchools.html"
name="viewSavedSchools"><label></label>
<br>
<table style="text-align: left; width: 882px; height: 34px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;"><br>
</td>
<td style="vertical-align: top; text-align: center;">School<br>
</td>
<td style="vertical-align: top;"><br>
</td>
<%	UserInteractions interactions = new UserInteractions();
	ArrayList<University> schools = interactions.getSavedUniversities();

	for(int i = 0; i<schools.size(); i++) 
	{
		
	%>
</tr>
<tr>
<td style="vertical-align: top;"><button value="remove"
name="Remove" type="button">Remove</button><br>
</td>
<td style="vertical-align: top;"><%= schools.get(i) %><br>
</td>
<td style="vertical-align: top;"><button value="View"
name="view" type="button">View</button><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</body>
</html>

