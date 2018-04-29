<%@ page language="java" import = "DatabaseController.*" 
import = "User.*" import = "University.*" import = "java.util.*"%>
<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");

String schoolName = request.getParameter("SchoolName");
String state = request.getParameter("State");
String location = request.getParameter("Location");
String control = request.getParameter("Control");
String numStudents = request.getParameter("NumStudents");
String percentFemale = request.getParameter("PerFemale");
String percentAccepted = request.getParameter("PerAdmitted");
String percentEnrolled = request.getParameter("PerEnrolled");
String qual = request.getParameter("QualOflife");
String social = request.getParameter("SocialScale");

String emp1 = request.getParameter("emp1");
String emp2 = request.getParameter("emp2");
String emp3 = request.getParameter("emp3");
String emp4 = request.getParameter("emp4");
String emp5 = request.getParameter("emp5");

String satM = request.getParameter("satMath");
String satV = request.getParameter("satVerbal");
String tuition = request.getParameter("Expenses");
String percentRecFinAid = request.getParameter("FinAid");
String numApp = request.getParameter("NumApp");
String acScale = request.getParameter("AcScale");


//ArrayList<University> universityList = ai.viewUniversities();
if (ai != null)
{
	if (emp1 == null || emp1 == "")

	{
		emp1 = "";
	}
	if (emp2 == null || emp2.equals(""))
	{
		emp2 = "";
	}
	if (emp3 == null || emp3.equals(""))
	{
		emp3 = "";
	}
	if (emp4 == null || emp4.equals(""))
	{
		emp4 = "";
	}
	if (emp5 == null || emp5.equals(""))
	{
		emp5 = "";
	}
	if(numStudents == null || numStudents.equals(""))
		numStudents = "-1";
	
	if(percentFemale == null || percentFemale.equals(""))
		percentFemale = "-1";
	if(satV == null || satV.equals(""))
		satV = "-1";
	if(satM == null || satM.equals(""))
		satM = "-1";
	if(tuition == null || tuition.equals(""))
		tuition = "-1";
	if(percentRecFinAid == null || percentRecFinAid.equals(""))
		percentRecFinAid = "-1";
	if(numApp == null || numApp.equals(""))
		numApp = "-1";
	if(percentAccepted == null || percentAccepted.equals(""))
		percentAccepted = "-1";
	if(percentEnrolled == null || percentEnrolled.equals(""))
		percentEnrolled = "-1";
	if(acScale == null || acScale.equals(""))
		acScale = "-1";
	if(social == null || social.equals(""))
		social = "-1";
	if(qual == null || qual.equals(""))
		qual = "-1";
	if(schoolName == null || schoolName.equals(""))
		schoolName = "-1";
	if(state == null || state.equals(""))
		state = "-1";
	if(location == null || location.equals(""))
		location = "-1";
	if(control == null || control.equals(""))
		control = "-1";
	
<<<<<<< HEAD
	int add = ai.addSchool(schoolName,state,location,control,Integer.parseInt(numStudents),Double.parseDouble(percentFemale),Integer.parseInt(satV),Integer.parseInt(satM),
			Double.parseDouble(tuition),Double.parseDouble(percentRecFinAid),Integer.parseInt(numApp),Double.parseDouble(percentAccepted),Double.parseDouble(percentEnrolled),Integer.parseInt(acScale),Integer.parseInt(social),Integer.parseInt(qual));
	
	if (add == -1)
	{
		response.sendRedirect("AddNewSchool.jsp?Error=" +add);
=======

	int add = ai.addSchool(schoolName,state,location,control,Integer.parseInt(numStudents),
			Double.parseDouble(percentFemale),Integer.parseInt(satV),Integer.parseInt(satM),
			Double.parseDouble(tuition),Double.parseDouble(percentRecFinAid),
			Integer.parseInt(numApp),Double.parseDouble(percentAccepted),
			Double.parseDouble(percentEnrolled),Integer.parseInt(acScale),
			Integer.parseInt(social),Integer.parseInt(qual),emp1,emp2,emp3,emp4,emp4);
	if (add == -1)
	{
		response.sendRedirect("AddNewSchool.jsp?addNewSchool="+add);
	
>>>>>>> efef55b69f6222e4d50207611ede09e1a5afb202
	}
	else
	{
<<<<<<< HEAD
		response.sendRedirect("ManageUniversities.jsp");
	}	
}
=======
		response.sendRedirect("AddNewSchool.jsp?addNewSchool="+add);
	}
	


>>>>>>> efef55b69f6222e4d50207611ede09e1a5afb202
%>