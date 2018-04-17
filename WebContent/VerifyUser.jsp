<%@page language="java" import="User.*"%>
<%  UserInteraction Vuser = (UserInteraction)session.getAttribute("userInter");  
	if(Vuser == null)
	{
		response.sendRedirect("AdminMenu.jsp?notU=-1");
		return;
	}
	
%>