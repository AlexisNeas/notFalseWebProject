<%@ page language="java" import="User.*" import="University.*"%>
<%
//UserInteraction ui = (UserInteraction)session.getAttribute("userInter");
UserInteraction ui = new UserInteraction();
String username = request.getParameter("Username");
String password = request.getParameter("Password");
String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");
String type = request.getParameter("Type");
char status = 'Y';
int editError = ui.editProfile(firstName,lastName,username,password,type.charAt(0),status);
response.sendRedirect("Edit.jsp?Edit=" + editError);

%>