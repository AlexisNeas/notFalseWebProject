<%@include file="VerifyLogin_Action.jsp" %>
<%@include file="VerifyAdmin.jsp" %>
<%@page language="java" import="User.*" import="University.*"%>
<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");



String schoolName = request.getParameter("school");
String state = request.getParameter("state");
String location = request.getParameter("location");
String control = request.getParameter("control");
String numStudents = request.getParameter("numStudents");
String percentFemale = request.getParameter("percentFemale");
String SATVerbal = request.getParameter("SATVerbal");
String SATMath = request.getParameter("SATMath");
String tuition = request.getParameter("tuition");
String percentRecFinAid = request.getParameter("percentRecFinAid");
String numApplicants = request.getParameter("getNumApplicants");
String percentAccepted = request.getParameter("percentAccepted");
String percentEnrolled = request.getParameter("percentEnrolled");
String academicScale = request.getParameter("academicScale");
String socialScale = request.getParameter("socialScale");
String qualOfLife = request.getParameter("qualOfLife");
String study1 = request.getParameter("emphases1");
String study2 = request.getParameter("emphases2");
String study3 = request.getParameter("emphases3");
String study4 = request.getParameter("emphases4");
String study5 = request.getParameter("emphases5");



if (study1 == null || study1.equals(""))
{
	study1 = "";
}
if (study2 == null || study2.equals(""))
{
	study2 = "";
}
if (study3 == null || study3.equals(""))
{
	study3 = "";
}
if (study4 == null || study4.equals(""))
{
	study4 = "";
}
if (study5 == null || study5.equals(""))
{
	study5 = "";
}
if(numStudents == null || numStudents.equals(""))
	numStudents = "-1";

if(percentFemale == null || percentFemale.equals(""))
	percentFemale = "-1";
if(SATVerbal == null || SATVerbal.equals(""))
	SATVerbal = "-1";
if(SATMath == null || SATMath.equals(""))
	SATMath = "-1";
if(tuition == null || tuition.equals(""))
	tuition = "-1";
if(percentRecFinAid == null || percentRecFinAid.equals(""))
	percentRecFinAid = "-1";
if(numApplicants == null || numApplicants.equals(""))
	numApplicants = "-1";
if(percentAccepted == null || percentAccepted.equals(""))
	percentAccepted = "-1";
if(percentEnrolled == null || percentEnrolled.equals(""))
	percentEnrolled = "-1";
if(academicScale == null || academicScale.equals(""))
	academicScale = "-1";
if(socialScale == null || socialScale.equals(""))
	socialScale = "-1";
if(qualOfLife == null || qualOfLife.equals(""))
	qualOfLife = "-1";
if(schoolName == null || schoolName.equals(""))
	schoolName = "-1";
if(state == null || state.equals(""))
	state = "-1";
if(location == null || location.equals(""))
	location = "-1";
if(control == null || control.equals(""))
	control = "-1";


University school = ai.getSchoolInfo(schoolName);
		//,state,location,control,Integer.parseInt(numStudents),Double.parseDouble(percentFemale),Double.parseDouble(SATVerbal),Double.parseDouble(SATMath),
		//Double.parseDouble(tuition),Double.parseDouble(percentRecFinAid),Integer.parseInt(numApplicants),Double.parseDouble(percentAccepted),Double.parseDouble(percentEnrolled),Integer.parseInt(academicScale),Integer.parseInt(socialScale),Integer.parseInt(qualOfLife),study1,study2,study3,study4,study5);

school.setState(state);
school.setLocation(location);
school.setControl(control);
school.setNumStudents(Integer.parseInt(numStudents));
school.setPercentFemale(Double.parseDouble(percentFemale));
school.setSatVerbal(Double.parseDouble(SATVerbal));
school.setSatMath(Double.parseDouble(SATMath));
school.setTuition(Double.parseDouble(tuition));
school.setPercentRecFinAid(Double.parseDouble(percentRecFinAid));
school.setNumApplicants(Integer.parseInt(numApplicants));
school.setPercentAccepted(Double.parseDouble(percentAccepted));
school.setPercentEnroll(Double.parseDouble(percentEnrolled));
school.setAcademicScale(Integer.parseInt(academicScale));
school.setSocial(Integer.parseInt(socialScale));
school.setQualOfLife(Integer.parseInt(qualOfLife));
school.setStudyArea1(study1);
school.setStudyArea1(study2);
school.setStudyArea1(study3);
school.setStudyArea1(study4);
school.setStudyArea1(study5);




 int edit = ai.editSchool(school);
 if(edit == -1)
	{
		response.sendRedirect("EditUniversity.jsp?edit="+edit+"&School="+schoolName);
		return;
	}
 else{

response.sendRedirect("EditUniversity.jsp?edit="+edit+"&School="+schoolName);
 }
%>