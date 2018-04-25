<%@ page language="java" import="User.*" import = "University.*"%>
    
<%	
	UserInteraction interactions = new UserInteraction();
	interactions.addSchool(request.getParameter("saveSchool"),"juser");
	response.sendRedirect("searchResults.jsp");
%>