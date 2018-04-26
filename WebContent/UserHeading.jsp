</head>
<body>
<center>
<h1>Welcome, User </h1>
<form align="right" method="post" action="LogOut_Action.jsp" name="LogOut"><br>
<input value="Log Out"name="Log out" type="submit"></form>
<address>Made by !False</address>
<%  
String error =request.getParameter("notA");
if(error != null && error.equals("-1")){
	out.println("You must be a logged in admin to access that page.");
}
%><br>
<u1 class="navbar">
<li><a href="SearchMenu.jsp">Search for Schools</a><br>
<li><a href="ViewSavedSchools.jsp">Manage My Saved Schools</a><br>
<li><a href="EditProfile.jsp">Manage My Profile</a><br></u1>

<br><br>