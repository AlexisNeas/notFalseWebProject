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



String error =request.getParameter("result");
if(error != null && error.equals("2"))
{
	%>
	
	<script type="text/javascript">
    var msg = "School did not save to profile.";
    alert(msg);
</script>
	
	
	<%
	
}

if(u != null ||(error != null) && session.getAttribute("u") != null)
{

if(u != null)
	session.setAttribute("u", u);
	

if(error != null)
{
	u = (ArrayList<University>)session.getAttribute("u"); 
	//u = (ArrayList<University>)at;
    //System.out.println(at.get(0).getSchoolName());
	
	//session.removeAttribute("u");

}

int size = u.size();
if(size != 0)
{
for(int i = 0; i < size;i++)
{
	


%>
<table style="text-align: left; width: 100%;" border="1">
<tbody>
<tr><td
style="vertical-align: top; width: 100px; text-align: center;">
<form method="post" action="addSchoolToProfileAction.jsp" name="searchResult">
<input
name="save" value="Save" type="submit">
<input name="saveSchool" value= "<%= u.get(i).getSchoolName() %>" type="hidden">


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
style="vertical-align: top; width: 150px; text-align: center;">

<form method="post" action="ViewSchoolInfoUser.jsp" name="searchResult">
<input name="Search" value="1" type="hidden">
<input name="schoolName" value="<%=name %>" type="hidden">
<input name="viewSchool" value="View School" type="submit"><br>
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
</html>