<%@page language="java" import="User.*"%>
<%  AdminInteractions Vadmin = (AdminInteractions)session.getAttribute("adminInter");  
	if(Vadmin == null)
	{
		response.sendRedirect("UserMenu.jsp?notA=-1");
		return;
	}
	
%>