<%@page language="java" import="User.*"%>
<%  UserInteraction Auser = (UserInteraction)session.getAttribute("userInter"); 
    AdminInteractions Aadmin = (AdminInteractions)session.getAttribute("adminInter"); 
	if(Auser == null && Aadmin == null)
	{
		response.sendRedirect("index.jsp?loggingIn=-3");
		return;
	}
	else if(Auser != null && !Auser.getUser().isLoggedOn())
	{
		response.sendRedirect("index.jsp?loggingIn=-4");
		return;
	}
	else if(Aadmin != null && !Aadmin.getAdmin().isLoggedOn())
	{
		response.sendRedirect("index.jsp?loggingIn=-5");
	}
	
%>