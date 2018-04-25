<%@ page language="java" import = "DatabaseController.*" 
import = "User.*" import = "University.*" import = "java.util.*"%>
<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");

String schoolName = request.getParameter("SchoolName");
String state = request.getParameter("State");
String location = request.getParameter("Location");
String control = request.getParameter("Control");
int numStudents = Integer.parseInt(request.getParameter("NumStudents"));
double percentFemale = Double.parseDouble(request.getParameter("perFemale"));
double percentAccepted = Double.parseDouble(request.getParameter("perAccepted"));
double percentEnrolled = Double.parseDouble(request.getParameter("perEnrolled"));
int qual = Integer.parseInt(request.getParameter("QualOflife"));
int social = Integer.parseInt(request.getParameter("SocialScale"));
String emp1 = "";
String emp2 = "";
String emp3 = "";
String emp4 = "";
String emp5 = "";
int satM = Integer.parseInt(request.getParameter("satMath"));
int satV = Integer.parseInt(request.getParameter("satVerbal"));
double tuition = Double.parseDouble(request.getParameter("Expenses"));
double percentRecFinAid = Double.parseDouble(request.getParameter("FinAid"));
int numApp = Integer.parseInt(request.getParameter("numApp"));
int acScale = Integer.parseInt(request.getParameter("AcScale"));

University univ = new University(schoolName, state, location, control, numStudents, percentFemale, 
		satV, satM, tuition, percentRecFinAid, numApp, percentAccepted, 
		percentEnrolled, acScale, social, qual, emp1, emp2, emp3, emp4, emp5);

ArrayList<University> universityList = ai.viewUniversities();
if (ai != null)
{
	int add = ai.addSchool(schoolName, state, location, control, numStudents, percentFemale, 
			satV, satM, tuition, percentRecFinAid, numApp, percentAccepted, 
			percentEnrolled, acScale, social, qual, emp1, emp2, emp3, emp4, emp5);
	
	if (add == -1)
	{
		response.sendRedirect("AddNewSchool.jsp");
	return;
	}
	else 
	{
		
	}	
}
%>