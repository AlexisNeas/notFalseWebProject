<%@ page language="java" import="User.*" import="University.*"%>
<%
//UserInteraction ui = (UserInteraction)session.getAttribute("userInter");

	int editError = 1;
	AdminInteractions ai = new AdminInteractions();
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	String firstName = request.getParameter("FirstName");
	String lastName = request.getParameter("LastName");
	String type = request.getParameter("Type");
	String status = request.getParameter("Status");
	Account a = new Account(firstName, lastName, username,password,type.charAt(0), status.charAt(0));
	editError = ai.editUser(a);
	if (editError == -1)
	{
		response.sendRedirect("EditAccount.jsp?Edit=" + editError);
	}
	else
		response.sendRedirect("ManageUsers.jsp?" );

%>