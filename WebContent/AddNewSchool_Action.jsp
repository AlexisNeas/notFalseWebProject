<%@ page language="java" import = "DatabaseController.*" 
import = "User.*" import = "University.*" import = "java.util.*"%>
<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");

String schoolName = request.getParameter("SchoolName");
String state = request.getParameter("State");
String location = request.getParameter("Location");
String control = request.getParameter("Control");
int numStudents = Integer.parseInt(request.getParameter("NumStudents"));
double percentFemale = Double.parseDouble(request.getParameter("PerFemale"));
double percentAccepted = Double.parseDouble(request.getParameter("PerAdmitted"));
double percentEnrolled = Double.parseDouble(request.getParameter("PerEnrolled"));
int qual = Integer.parseInt(request.getParameter("QualOflife"));
int social = Integer.parseInt(request.getParameter("SocialScale"));
String emp1 = request.getParameter("Emp1");
String emp2 = request.getParameter("Emp2");
String emp3 = request.getParameter("Emp3");
String emp4 = request.getParameter("Emp4");
String emp5 = request.getParameter("Emp5");
int satM = Integer.parseInt(request.getParameter("satMath"));
int satV = Integer.parseInt(request.getParameter("satVerbal"));
double tuition = Double.parseDouble(request.getParameter("Expenses"));
double percentRecFinAid = Double.parseDouble(request.getParameter("FinAid"));
int numApp = Integer.parseInt(request.getParameter("NumApp"));
int acScale = Integer.parseInt(request.getParameter("AcScale"));

University univ = new University(schoolName, state, location, control, numStudents, percentFemale, 
		satV, satM, tuition, percentRecFinAid, numApp, percentAccepted, 
		percentEnrolled, acScale, social, qual, emp1, emp2, emp3, emp4, emp5);

ArrayList<University> universityList = ai.viewUniversities();
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
	
	
	int add = ai.addSchool(schoolName, state, location, control, numStudents, percentFemale, 
			satV, satM, tuition, percentRecFinAid, numApp, percentAccepted, 
			percentEnrolled, acScale, social, qual, emp1, emp2, emp3, emp4, emp5);
	
	if (add == -1)
	{
		response.sendRedirect("AddNewSchool.jsp?addNewSchool="+add);
	return;
	}
	else 
	{
		
	}	
}
%>