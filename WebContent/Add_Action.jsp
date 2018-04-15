<%@ page language="java" import="User.*"%>%>
    
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
	interaction.addNewUser(firstName, lastName, username,password, type.charAt(0));
	response.sendRedirect("ViewUsers.jsp");
%>