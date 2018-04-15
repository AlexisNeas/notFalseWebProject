<%@ page language="java" import="User.*" import="University.*" import="DBController.*" import="java.util.ArrayList"%>
<%

UserInteraction ui = (UserInteraction)session.getAttribute("userInter");
String schoolName = request.getParameter("schoolName");
String state = request.getParameter("state");
String location = request.getParameter("location");
String control = request.getParameter("control");

String lowNumStudents = request.getParameter("lowNumStudents");
String upNumStudents = request.getParameter("upNumStudents");

String lowPercentFemale = request.getParameter("lowPercentFemale");
String upPercentFemale = request.getParameter("upPercentFemale");

String lowSATVerbal = request.getParameter("lowSATVerbal");
String upSATVerbal = request.getParameter("upSATVerbal");

String lowSATMath = request.getParameter("lowSATMath");
String upSATMath = request.getParameter("upSATMath");

String lowTuition = request.getParameter("lowTuition");
String upTuition = request.getParameter("upTuition");

String lowPercentRecFinAid = request.getParameter("lowPercentRecFinAid");
String upPercentRecFinAid = request.getParameter("upPercentRecFinAid");

String lowNumApplicants = request.getParameter("lowNumApplicants");
String upNumApplicants = request.getParameter("upNumApplicants");

String lowPercentAccepted = request.getParameter("lowPercentAccepted");
String upPercentAccepted = request.getParameter("upPercentAccepted");

String lowPercentEnrolled = request.getParameter("lowPercentEnrolled");
String upPercentEnrolled = request.getParameter("upPercentEnrolled");


String lowAcademicsScale = request.getParameter("lowAcademicsScale");
String upAcademicsScale = request.getParameter("upAcademicsScale");

String lowSocialScale = request.getParameter("lowSocialScale");
String upSocialScale = request.getParameter("upSocialScale");

String lowQualityOfLifeScale = request.getParameter("lowQualityOfLifeScale");
String upQualityOfLifeScale = request.getParameter("upQualityOfLifeScale");

String study1 = request.getParameter("studyArea1");
String study2 = request.getParameter("studyArea2");
String study3 = request.getParameter("studyArea3");
String study4 = request.getParameter("studyArea4");
String study5 = request.getParameter("studyArea5");

   if(lowNumStudents.equals(""))
	   lowNumStudents = "-1";
   if(upNumStudents.equals(""))
	   upNumStudents = "-1";
   if(lowPercentFemale.equals(""))
	lowPercentFemale = "-1";
   if(upPercentFemale.equals(""))
	upPercentFemale = "-1";
   if(lowSATVerbal.equals(""))
	   lowSATVerbal = "-1";
   if(upSATVerbal.equals(""))
	    upSATVerbal = "-1";
   if(lowSATMath.equals(""))
	     lowSATMath = "-1";
   if(upSATMath.equals(""))
		upSATMath = "-1";
   if(lowTuition.equals(""))
	   lowTuition = "-1";
   if(upTuition.equals(""))
	   upTuition = "-1";
   if(lowPercentRecFinAid.equals(""))
	   lowPercentRecFinAid = "-1";
   if(upPercentRecFinAid.equals(""))
	   upPercentRecFinAid = "-1";
   if(lowNumApplicants.equals(""))
	   lowNumApplicants = "-1";
   if(upNumApplicants.equals(""))
	   upNumApplicants= "-1";
   if(lowPercentAccepted.equals(""))
	   lowPercentAccepted = "-1";
   if(upPercentAccepted.equals(""))
	  upPercentAccepted = "-1";
   if(lowPercentEnrolled.equals(""))
	   lowPercentEnrolled = "-1";
   if(upPercentEnrolled.equals(""))
	  upPercentEnrolled= "-1";
   if(lowAcademicsScale.equals(""))
	   lowAcademicsScale  = "-1";
   if(upAcademicsScale.equals(""))
	   upAcademicsScale = "-1";
   if(lowSocialScale.equals(""))
	   lowSocialScale   = "-1";
   if( upSocialScale.equals(""))
	   upSocialScale = "-1";
   if(lowQualityOfLifeScale.equals(""))
	   lowQualityOfLifeScale = "-1";
   if(upQualityOfLifeScale.equals(""))
	   upQualityOfLifeScale = "-1";
ArrayList<University> u = ui.searchSchool(schoolName, state, location, control, Integer.parseInt(lowNumStudents), Integer.parseInt(upNumStudents), 
		Double.parseDouble(lowPercentFemale), Double.parseDouble(upPercentFemale), Double.parseDouble(lowSATVerbal), Double.parseDouble(upSATVerbal), Double.parseDouble(lowSATMath), Double.parseDouble(upSATMath), Double.parseDouble(lowTuition), 
		Double.parseDouble(upTuition), Double.parseDouble(lowPercentRecFinAid), Double.parseDouble(upPercentRecFinAid), Integer.parseInt(lowNumApplicants), Integer.parseInt(upNumApplicants), 
		Double.parseDouble(lowPercentAccepted), Double.parseDouble(upPercentAccepted), Double.parseDouble(lowPercentEnrolled), Double.parseDouble(upPercentEnrolled), Integer.parseInt(lowAcademicsScale), 
		Integer.parseInt(upAcademicsScale), Integer.parseInt(lowSocialScale), Integer.parseInt(upSocialScale), Integer.parseInt(lowQualityOfLifeScale), Integer.parseInt(upQualityOfLifeScale), 
		study1, study2, study3, study4, study5);
response.sendRedirect("Results.jsp");
%>