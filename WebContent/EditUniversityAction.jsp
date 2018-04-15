<%@page language="java" import="User.*" import="University.*"%>
<%
//AdminInteractions ai = new AdminInteractions();
AdminInteractions ai = (AdminInteractions)session.getAttribute("adminInter");



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
String numApplicants = request.getParameter("getNumApplicants");
String percentAccepted = request.getParameter("percentAccepted");
String percentEnrolled = request.getParameter("percentEnrolled");
String academicScale = request.getParameter("academicScale");
String socialScale = request.getParameter("socialScale");
String qualOfLife = request.getParameter("qualOfLife");
String study1 = request.getParameter("studyArea1");
String study2 = request.getParameter("studyArea2");
String study3 = request.getParameter("studyArea3");
String study4 = request.getParameter("studyArea4");
String study5 = request.getParameter("studyArea5");

University univ = new University(schoolName,state,location,control,Integer.parseInt(numStudents),Double.parseDouble(percentFemale),Double.parseDouble(SATVerbal),Double.parseDouble(SATMath),
		Double.parseDouble(tuition),Double.parseDouble(percentRecFinAid),Integer.parseInt(numApplicants),Double.parseDouble(percentAccepted),Double.parseDouble(percentEnrolled),Integer.parseInt(academicScale),Integer.parseInt(socialScale),Integer.parseInt(qualOfLife),study1,study2,study3,study4,study5);


ai.editSchool(univ);
%>