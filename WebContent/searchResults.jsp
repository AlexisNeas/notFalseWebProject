<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<%@ page language="java" import ="User.*" import = "java.util.ArrayList" import = "DatabaseController.*" import = "University.*"%>

<html>
<head>
<meta content="text/html; charset=ISO-8859-1"http-equiv="content-type">

<title>Search Results</title>
<link rel="stylesheet" type="text/css" href="CMC.css">

</head>

<header>
<div>
<h1>Search Results</h1>
</div>
</header>

<body>
<div>
<%@include file="UserHeading.jsp" %>
</div>
<br><br><br><br>
<form class= "searchBtn" method="post" action="SearchMenu.jsp" name="goBack">
	<input name="viewSchool" value="New Search" type="submit">
</form>
<table style=" width: 100%;height:20px;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>


<th style="vertical-align: top; text-align: center; background-color: rgb(172, 148, 168);height:20px;">Your
Search Results<br>
</th>

</tr>
</tbody>
</table>

<%
ArrayList<University> u  = null;
String error1 =request.getParameter("result");
String failure =request.getParameter("failure");
if(failure != null && failure.equals("10"))
{
	%>
	
	<script type="text/javascript">
    var msg = "You have already saved this school to your profile.";
    alert(msg);
</script>
<% 
}
if(error1 != null && error1.equals("1"))
{
	%><%@include file="Search_Action.jsp" %><% 
}
else if(error1 != null && error1.equals("3"))
{
	UserInteraction ui = (UserInteraction)session.getAttribute("userInter");
	u = ui.getUser().getRecentSearch();
}

if(u != null)
{
int size = u.size();
if(size != 0)
{
for(int i = 0; i < size;i++)
{
	


%>
<table style="text-align: left; width: 60%;" border="1">
<tbody>
<tr><td
style="vertical-align: top;  text-align: center;">
<form method="post" action="addSchoolToProfileAction.jsp" name="searchResult">
<input
name="save" value="Save" type="submit">
<input name="saveSchool" value= "<%= u.get(i).getSchoolName() %>" type="hidden">
<input name="viewing" value="0" type="hidden">
</form>
<br>
</td>
<td style="vertical-align: top;"><br>
<%
String name = u.get(i).getSchoolName();
out.println("School Name: " + name + "\n" + "State: " + u.get(i).getState());
%>
</td>
<td
style="vertical-align: top;  text-align: center;">

<form method="post" action="ViewSchoolInfoUser.jsp?from=0" name="searchResult">
<input name="Search" value="1" type="hidden">
<input name="schoolName" value="<%=name %>" type="hidden">
<input name="viewSchool" value="ViewSchool" type="submit"><br>
</form>
</td>
</tr>
</tbody>
</table>
<%
}
}
}
else{
	out.println("No Results for your search criteria :(");
}

%>
<br>
</body>
<footer>

<address> <p>Made By !False</p> </address>

</footer>
</html>