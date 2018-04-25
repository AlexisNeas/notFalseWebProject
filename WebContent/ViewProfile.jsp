<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "User.*" import = "DBController.*"%>
<html>
<%

UserInteraction uc = (UserInteraction)session.getAttribute("userInter");
Account user;
user = uc.viewProfile("juser");

%>

<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input value = <%=user.getFirstName() %>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input value = <%=user.getLastName() %>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input value = <%=user.getUsername() %>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input value = <%=user.getPassword() %>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Type <br>
</td>
<td style="vertical-align: top;"><input value = <%=user.getAccountType() %>><br>
</td>
</tr>
</tbody>
</table>
<br>
</body>
</html>

