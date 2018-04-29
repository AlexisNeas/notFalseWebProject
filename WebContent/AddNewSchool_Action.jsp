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
	if (emp2 == null || emp2 == "")
	{
		emp2 = "";
	}
	if (emp3 == null || emp3 == "")
	{
		emp3 = "";
	}
	if (emp4 == null || emp4 == "")
	{
		emp4 = "";
	}
	if (emp5 == null || emp5 == "")
	{
		emp5 = "";
	}
	
	
	int add = ai.addSchool(schoolName,state,location,control,Integer.parseInt(numStudents),Double.parseDouble(percentFemale),Integer.parseInt(satV),Integer.parseInt(satM),
			Double.parseDouble(tuition),Double.parseDouble(percentRecFinAid),Integer.parseInt(numApp),Double.parseDouble(percentAccepted),Double.parseDouble(percentEnrolled),Integer.parseInt(acScale),Integer.parseInt(social),Integer.parseInt(qual));
	
	if (add == -1)
	{
		response.sendRedirect("AddNewSchool.jsp?Error=" +add);
	}
	else 
	{
		response.sendRedirect("ManageUniversities.jsp");
	}	
}
%>