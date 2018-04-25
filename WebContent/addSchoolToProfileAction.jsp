<%@ page language="java" import="User.*" import = "University.*"%>
    
<%	
	UserInteraction interactions = (UserInteraction)session.getAttribute("userInter");

		int i = interactions.addSchool(request.getParameter("saveSchool"),"juser");


	if(i == -1)
	{
		response.sendRedirect("searchResults.jsp?result="+2);
	}

	else
	{
	response.sendRedirect("searchResults.jsp?result="+1);
	}
%>