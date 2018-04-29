<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<%@ page language="java" import="User.*"%>
    
<%	
	AdminInteractions interactions = (AdminInteractions)session.getAttribute("adminInter");
	interactions.deactivateUser(request.getParameter("Username"));
	response.sendRedirect("ManageUsers.jsp");
%>
