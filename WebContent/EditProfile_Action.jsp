<%@ page language="java" import="User.*" %>
<%
//UserInteraction ui = (UserInteraction)session.getAttribute("userInter");

String username = request.getParameter("Username");
String password = request.getParameter("Password");
String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");
String status = request.getParameter("Status");
String type = request.getParameter("Type");
Account acc = new Account(firstName,lastName,username,password,type.charAt(0),status.charAt(0));

//response.sendRedirect("Menu.jsp");

%>