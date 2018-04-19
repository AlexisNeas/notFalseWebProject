<%@ page language="java" import="User.*"%>
    
<%	
	int added;
	String firstName = request.getParameter("FirstName");
	String lastName = request.getParameter("LastName");
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	String type = request.getParameter("Type");
	
	if(firstName == "" || lastName=="" || username=="" || password=="" || type =="")
	{
		added = -3;
	}
	
	else{
	//String status = request.getParameter("Status");
	//User user = new User(firstName,lastName,username,password,type.charAt(0),status.charAt(0));
	//AdminInteraction uc = (UserController)session.getAttribute("uc");
	AdminInteractions interaction = new AdminInteractions();
	added = interaction.addNewUser(firstName, lastName, username,password, type.charAt(0));
	}
	
	if (added == 1)
	{
		response.sendRedirect("ManageUsers.jsp");
	}
	else if (added == -1)
	{
		response.sendRedirect("AddAccount.jsp?Add="+added);
	}
	else if (added == -2)
	{
		response.sendRedirect("AddAccount.jsp?Add="+added);
	}
	else if(added == -3)
		response.sendRedirect("AddAccount.jsp?Add="+ added);
	
%>