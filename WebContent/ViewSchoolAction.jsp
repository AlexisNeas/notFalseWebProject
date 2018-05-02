<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<%@ page language="java" import="User.*" import = "University.*"%>
    
<%	
	UserInteraction interactions = new UserInteraction();
	interactions.viewSchoolInfo(request.getParameter("school"));
	response.sendRedirect("ViewSchoolInfoUser.jsp");
%>