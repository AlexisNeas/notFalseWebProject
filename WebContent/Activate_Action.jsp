<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<%@ page language="java" import="User.*"%>
    
<%	
	AdminInteractions interactions = (AdminInteractions)session.getAttribute("adminInter");
	Account acct = interactions.getUserInfo(request.getParameter("Username"));
	acct.setStatus('Y');
	interactions.editUser(acct);
	response.sendRedirect("ManageUsers.jsp");
%>