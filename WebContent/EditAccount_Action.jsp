<%@include file="VerifyLogin_Action.jsp" %>
<%@ page language="java" import="User.*"%>
<%
UserInteraction ui = (UserInteraction)session.getAttribute("userInter");
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");
    //UserInteraction ui = new UserInteraction();
	//AdminInteractions ai = new AdminInteractions();
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	String firstName = request.getParameter("FirstName");
	String lastName = request.getParameter("LastName");
	String type = request.getParameter("Type").toLowerCase();
	String status = request.getParameter("Status").toUpperCase();
	if(ai != null){
		try{
		Account a = new Account(firstName, lastName, username, password, type.charAt(0), status.charAt(0));
		int editError = ai.editUser(a);
		response.sendRedirect("EditAccount.jsp?Edit="+editError+"&Username="+username);
		return;
		} catch(IllegalArgumentException e) {
			response.sendRedirect("EditAccount.jsp?Edit=-1&Username="+username);
			return;
		}
	}
	
	else if(ui != null){
		int error = ui.editProfile(firstName, lastName, username,password,type.charAt(0), status.charAt(0));
		response.sendRedirect("EditProfile.jsp?Edit="+error);
	}

%>