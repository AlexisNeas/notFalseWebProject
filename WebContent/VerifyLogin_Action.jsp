<%@page language="java" import="User.*"%>
<%  UserInteraction Auser = (UserInteraction)session.getAttribute("userInter"); 
    AdminInteractions Aadmin = (AdminInteractions)session.getAttribute("adminInter"); 
	if(Auser == null && Aadmin == null)
	{
		response.sendRedirect("Login.jsp?logIn=-3");
		return;
	}
	else if(Auser != null && !Auser.getUser().isLoggedOn())
	{
		response.sendRedirect("Login.jsp?logIn=-4");
		return;
	}
	else if(Aadmin != null && !Aadmin.getAdmin().isLoggedOn())
	{
		response.sendRedirect("Login.jsp?logIn=-5");
	}
	
%>