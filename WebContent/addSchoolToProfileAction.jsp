<%@ page language="java" import="User.*" import = "University.*"%>
    
<%	
	UserInteraction interactions = (UserInteraction)session.getAttribute("userInter");
	interactions.addSchool(request.getParameter("saveSchool"),"juser");
	int one = 1;
	response.sendRedirect("searchResults.jsp?result="+1);
%>