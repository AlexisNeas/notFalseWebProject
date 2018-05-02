<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyUser.jsp" %>
<%@ page language="java" import="User.*" import = "University.*"%>
    
<%	
	UserInteraction interactions = (UserInteraction)session.getAttribute("userInter");
	int error = interactions.remove(request.getParameter("school"),"juser");
	response.sendRedirect("ViewSavedSchools.jsp?Remove="+error);
%>