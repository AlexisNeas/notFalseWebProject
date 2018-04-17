<%@page language="java" import="User.*"%>
<%  UserInteraction LOuser = (UserInteraction)session.getAttribute("userInter"); 
    AdminInteractions LOadmin = (AdminInteractions)session.getAttribute("adminInter"); 
	if(LOuser != null)
	{
		LOuser.getUser().logOff();
		session.setAttribute("userInter", null);
		response.sendRedirect("Login.jsp?logIn=1");
		return;
	}
	else if(LOadmin != null)
	{
		LOadmin.getAdmin().logOff();
		session.setAttribute("adminInter", null);
		response.sendRedirect("Login.jsp?logIn=1");
	}
	
%>