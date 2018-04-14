<%@page language="java" import="User.*" import="University.*"%>
<%
AdminInteractions ai = new AdminInteractions();




String schoolName = request.getParameter("schoolName");
String state = request.getParameter("state");
String location = request.getParameter("location");
String control = request.getParameter("control");
String numStudents = request.getParameter("numStudents");
String percentFemale = request.getParameter("percentFemale");
String SATVerbal = request.getParameter("SATVerbal");
String SATMath = request.getParameter("SATMath");
String tuition = request.getParameter("tuition");
String percentRecFinAid = request.getParameter("percentRecFinAid");
String getNumApplicants = request.getParameter("getNumApplicants");
String percentAccepted = request.getParameter("percentAccepted");
String percentEnrolled = request.getParameter("percentEnrolled");
String academicScale = request.getParameter("academicScale");
String socialScale = request.getParameter("socialScale");
String qualOfLife = request.getParameter("qualOfLife");

University univ = new University(schoolName,state,location,control,numStudents,percentFemale,SATVerbal,SATMath,
		tuition,percentRecFinAid,getNumApplicants,percentAccepted,percentEnrolled,academicScale,socialScale,qualOfLife);


ai.editSchool(univ.getSchoolName(), univ.getState(), univ.getLocation(), 
        univ.getControl(),  univ.getNumStudents(),  univ.getPercentFemale(), 
        univ.getSatVerbal(),  univ.getSatMath(),  univ.getTuition(),  univ.getPercentRecFinAid(),
        univ.getNumApplicants(),  univ.getPercentAccepted(), 
        univ.getPercentEnroll(),  univ.getAcademicScale(),  univ.getSocial(),  univ.getQualOfLife());
%>