<%@ page language="java" import="User.*" import = "University.*"%>
    
<%	
	UserInteraction interactions = (UserInteraction)session.getAttribute("userInter");
	interactions.addSchool(request.getParameter("saveSchool"),"juser");
	response.sendRedirect("searchResults.jsp");
%>