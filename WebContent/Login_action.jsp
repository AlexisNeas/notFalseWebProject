<%@page language="java" import="User.*"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	AccountInteractions acctInter = new AccountInteractions();
	int logIn = acctInter.logOn(username, password);
	if(logIn == 1){
		UserInteraction interactions = new UserInteraction(username);
		session.setAttribute("userInter", interactions);
		response.sendRedirect("UserMenu.jsp");
	}
	else if(logIn == 2){
		AdminInteractions interactions = new AdminInteractions(username);
		session.setAttribute("adminInter", interactions);
		response.sendRedirect("AdminMenu.jsp");
	}
	else if(logIn == -1){
		response.sendRedirect("Login.jsp?logIn="+logIn);
	}
	else{
		response.sendRedirect("Login.jsp?logIn="+logIn);
	}
%>
