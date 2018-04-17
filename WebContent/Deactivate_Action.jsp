<%@ page language="java" import="User.*"%>
    
<%	
	AdminInteractions interactions = new AdminInteractions();
	interactions.deactivateUser(request.getParameter("Username"));
	response.sendRedirect("ViewUsers.jsp");
%>
