<%@ page language="java" import="User.*"%>
    
<%	
	String firstName = request.getParameter("FirstName");
	String lastName = request.getParameter("LastName");
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	String type = request.getParameter("Type");
	//String status = request.getParameter("Status");
	//User user = new User(firstName,lastName,username,password,type.charAt(0),status.charAt(0));
	//AdminInteraction uc = (UserController)session.getAttribute("uc");
	AdminInteractions interaction = new AdminInteractions();
	int added = interaction.addNewUser(firstName, lastName, username,password, type.charAt(0));
	if (added == 1)
	{
		response.sendRedirect("ManageUsers.jsp");
	}
	else if (added == -1)
	{
		response.sendRedirect("AddAccount.jsp?Add="+added);
	}
	
%>