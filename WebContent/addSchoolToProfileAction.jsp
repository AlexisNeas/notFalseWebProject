<%@ page language="java" import="User.*" import = "University.*"%>
    
<%	
	UserInteraction interactions = (UserInteraction)session.getAttribute("userInter");
	int viewing = Integer.parseInt(request.getParameter("viewing"));
	String saveSchoolName = request.getParameter("saveSchool");
	int i = interactions.addSchool(saveSchoolName,interactions.getUser().getUsername());

	if(viewing == 0){
		if(i == -1)
		{
			response.sendRedirect("searchResults.jsp?result="+3+"&failure="+10);
		}
		else
		{
			response.sendRedirect("searchResults.jsp?result="+3);
		}
	}
	else{
		if(i == -1)
		{
			response.sendRedirect("ViewSchoolInfoUser.jsp?result="+2
					+"&schoolName="+saveSchoolName+"&Search=1"+"&from="+0);
		}
		else
		{
			response.sendRedirect("ViewSchoolInfoUser.jsp?result="+1
					+"&schoolName="+saveSchoolName+"&Search=1"+"&from="+0);
		}
	}
%>