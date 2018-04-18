<%@ page language="java" import="User.*" import = "University.*"%>
    
<%	
	UserInteraction interactions = new UserInteraction();
	interactions.remove(request.getParameter("school"),"juser");
	response.sendRedirect("ViewSavedSchools.jsp");
%>