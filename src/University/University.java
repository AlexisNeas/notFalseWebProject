package University;

/**
 * File: University.java
 * 
 * @author Jubie Alade
 * 
 * @Version March 20, 2018
 */


/**
 * Class that gets and sets university information 
 */

public class University  
{  
  
  
  
  //university information 
  
  private String schoolName, state, location, control,  studyArea1,  studyArea2,  studyArea3,  studyArea4, 
    
    studyArea5;
  
  private int numStudents, numApplicants, academicScale, social, qualOfLife;
  
  private double percentFemale,  satVerbal,  satMath,  tuition,  percentRecFinAid, percentAccepted, percentEnroll;
  
  
  
  
  
  /**
   * University constructor with initialized information 
   */
  public University()
  {    
    
     schoolName = "";
    
     state="";
    
     location="";
    
     control="";
    
     numStudents=0;
    
     percentFemale=0;
    
     satVerbal=0;
    
     satMath=0;
    
     tuition=0;
    
     percentRecFinAid=0;
    
     numApplicants=0;
    
     percentAccepted=0;
    
     percentEnroll=0;
    
     academicScale=0;
    
     social=0;
    
     qualOfLife=0;
    
     studyArea1="";
    
     studyArea2="";
    
     studyArea3="";
    
     studyArea4="";
    
     studyArea5="";
  }
 
  
  
  
  
  
  
  
  /**
   * Constructor for university object. Sets instance variables to equal constructor variables
   * 
   * @param schoolName a string containing the school name 
   * @param state a string containing the name of the state
   * @param location a string containing the name of the schools location
   * @param control a String specifying who controls the new university
   * @param numStudents an integer for the number of students at school 
   * @param percentFemale a double out of 100 representing the percentage of females in the student population
   * @param satVerbal a double out of 800 representing the average SAT Verbal exam score for all students currently enrolled in the new university
   * @param satMath a double out of 800 representing the average SAT Math exam score for all students currently enrolled in the new university
   * @param tuition a double representing the annual tuition for the new university
   * @param percentRecFinAid a double out of 100 representing the percentage of students receiving any form sort 
   * of financial assistance from the new university
   * @param numApplicants an integer representing the number of students who typically apply annually to the new university 
   * @param percentAccepted a double out of 100 representing the percentage of applicants who are admitted annually to the new university
   * @param percentEnroll a double out of 100 representing the percentage of admitted students who enroll in the new university
   * @param academicScale an int between 1 and 5 (with 5 being best) indicating the quality of the academics at the new university
   * @param social an int between 1 and 5 (with 5 being best) indicating the quality of the social life at the new university
   * @param qualOfLife an int between 1 and 5 (with 5 being best) indicating the overall quality of life at the new university
   * @param studyArea1 a string containing the name of the study area
   * @param studyArea2 a string containing the name of the study area
   * @param studyArea3 a string containing the name of the study area
   * @param studyArea4 a string containing the name of the study area
   * @param studyArea5 a string containing the name of the study area
   */
  
  public University(String schoolName, String state, String location, String control, int numStudents,
                    
                    double percentFemale, double satVerbal, double satMath, double tuition, double percentRecFinAid,
                    
                    int numApplicants, double percentAccepted, double percentEnroll, int academicScale, int social,
                    
                    int qualOfLife, String studyArea1, String studyArea2, String studyArea3, String studyArea4, 
                    
                    String studyArea5)
    
  {
    
    this.schoolName = schoolName;
    
    this.state = state;
    
    this.location = location;
    
    this.control = control;
    
    this.studyArea1= studyArea1;
    
    this.studyArea2 = studyArea2;
    
    this.studyArea3= studyArea3;
    
    this.studyArea4 = studyArea4;
    
    this.studyArea5 = studyArea5;
    
    this.numStudents = numStudents;
    
    this.numApplicants = numApplicants;
    
    this.academicScale = academicScale;
    
    this.social = social;
    
    this.qualOfLife = qualOfLife;
    
    this.percentFemale = percentFemale;
    
    this.satVerbal = satVerbal;
    
    this.satMath = satMath;
    
    this.tuition = tuition;
    
    this.percentRecFinAid = percentRecFinAid;
    
    this.percentAccepted = percentAccepted;
    
    this.percentEnroll = percentEnroll;  
    
  }
  
  
  
  
  
  
  
  /**
   * Method that gets school name
   * 
   * @return school name
   */
  public String getSchoolName()
  {
    return schoolName; 
  }
  
  
  /**
   * Method that gets state
   * 
   * @return state name
   */
  public String getState()    
  {  
    return state;  
  }
  
  
  
  /**
   * Method that gets location 
   * 
   * @return location 
   */
  public String getLocation()    
  {
       return location;    
  }
  
  
  
  /**
   * Method that gets control
   * 
   * @return control
   */
  public String getControl()   
  {   
    return control;   
  }
  
  
  
  /**
   * Method that gets study area name
   * 
   * @return study area name 
   */
  public String getStudyArea1()     
  {   
    return studyArea1;   
  }
  
  
  
  /**
   * Method that gets study area name
   * 
   * @return study area name 
   */
  public String getStudyArea2()   
  {   
    return studyArea2;   
  }
  
  
  
  /**
   * Method that gets study area name
   * 
   * @return study area name 
   */
  public String getStudyArea3()   
  {   
    return studyArea3;   
  }
  
  
  
  /**
   * Method that gets study area name
   * 
   * @return study area name 
   */
  public String getStudyArea4()
  {   
    return studyArea4;   
  }
  
  
  
  /**
   * Method that gets study area name
   * 
   * @return study area name 
   */
  public String getStudyArea5()     
  {    
    return studyArea5;    
  }
  
  
  
  /** 
   * Method that gets number of applicants 
   * 
   * @return number of applicants 
   */
  public int getNumApplicants()    
  {   
    return numApplicants;    
  }
  
  
  
  /**
   * Method that gets number of students
   * 
   * @return number of students 
   */
  public int getNumStudents()     
  {   
    return numStudents;   
  }
  
  
  
  /**
   * Method that gets academic scale
   * 
   * @return academic scale
   */
  public int getAcademicScale()     
  {    
    return academicScale;    
  }
  
  
  
  /**
   * Method that gets quality of life
   * 
   * @return quality of life
   */
  public int getQualOfLife()    
  {   
    return qualOfLife;   
  }
  
  
  
  /**
   * Method that gets percent female students
   * 
   * @return percent female students 
   */
  public double getPercentFemale()     
  {   
    return percentFemale;   
  }
  
  
  
  /**
   * Method that gets satVerbal
   * 
   * @return satVerbal 
   */
  public double getSatVerbal()     
  {    
    return satVerbal;    
  }
  
  
  
  /**
   * Method that gets satMath
   * 
   * @return satMath
   */
  public double getSatMath()   
  {    
    return satMath;    
  }
  
  
  
  /**
   * Method that gets tuition cost
   * 
   * @return tuition cost
   */
  public double getTuition()
  {  
    return tuition;   
  }
  
  
  
  /**
   * Method that gets percent financial aid 
   * 
   * @return percent financial aid
   */
  public double getPercentRecFinAid()  
  {
    return percentRecFinAid;
  }
  
  
  
  /**
   * Method that gets percent emitted 
   * 
   * @return percent emitted
   */
  public double getPercentAccepted() 
    
  {    
    return percentAccepted;    
  }
  
  
  
  /**
   * Method that gets percent enrolled 
   * 
   * @return percent enrolled
   */
  public double getPercentEnroll() 
    
  {   
    return percentEnroll;   
  }
  
  /**
   * Method that gets social amount
   * 
   * @return social amount
   */
  
  public int getSocial()
  {
    return social;
  }
  
  
  
  
  
  
  
  /**
   * Method that sets the school name 
   * 
   * @param string school name of the school 
   */
  public void setSchoolName(String schoolName)   
  {
    
    this.schoolName= schoolName;
    
  }
  
  
  
  /**
   * Method that sets name of the state
   * 
   * @pre name must be valid and in caps
   * @param state the name of the state
   */
  public void setState(String state)
  {
	  if (state.equals("ALABAMA") || state.equals("ALASKA") || state.equals("ARIZONA") || state.equals("ARKANSAS") ||
	             state.equals("CALIFORNIA") || state.equals("COLORADO") || state.equals("CONNECTICUT") || state.equals("DELAWARE") ||
	             state.equals("FLORIDA") || state.equals("GEORGIA") || state.equals("HAWAII") || state.equals("IDAHO") || state.equals("ILLINOIS") ||
	             state.equals("INDIANA") || state.equals("IOWA") || state.equals("KANSAS") || state.equals("KENTUCKY") || state.equals("LOUISIANA") ||
	             state.equals("MAINE") || state.equals("MARYLAND") || state.equals("MASSACHUSETTS") || state.equals("MICHIGAN") || state.equals("MINNESOTA") ||
	             state.equals("MISSISSIPPI") || state.equals("MISSOURI") || state.equals("MONTANA") || state.equals("NEBRASKA") || 
	             state.equals("NEVADA") || state.equals("NEW HAMPSHIRE") || state.equals("NEW MEXICO") || state.equals("NEW YORK") ||
	             state.equals("NORTH CAROLINA") || state.equals("NORTH DAKOTA") || state.equals("OHIO") || state.equals("OKLAHOMA") ||
	             state.equals("OREGON") || state.equals("PENNSYLVANIA") || state.equals("RHODE ISLAND") || state.equals("SOUTH CAROLINA") ||
	             state.equals("SOUTH DAKOTA") || state.equals("TENNESSEE") || state.equals("TEXAS") || state.equals("UTAH") ||
	             state.equals("VERMONT") || state.equals("VIRGINIA") || state.equals("WASHINGTON") || state.equals("WEST VIRGINIA") ||
	             state.equals("WISCONSIN") || state.equals("WYOMING") || state.equals("FOREIGN") || state.equals("-1"))
	    {
		  this.state= state;
	    }
	  else 
	      throw new IllegalArgumentException("Invalid state");
	  
    
  }
  
  
  
  /**
   * Method that sets the schools location 
   * 
   * @pre name must be valid and in caps
   * @param location the location of the school 
   */
  public void setLocation(String location) 
  {
	  if (location.equals("SUBURBAN") || location.equals("URBAN") || location.equals("SMALL-CITY")|| location.equals("-1"))
	    {
		   this.location= location; 
	    }
	  else 
		  throw new IllegalArgumentException("Invalid location");

  }
  
  
  
  /**
   * Method that sets control amount 
   * 
   * @pre name must be valid and in caps
   * @param control the control number
   */
  public void setControl(String control) 
  {
	  if (control.equals("PRIVATE") || control.equals("STATE") || control.equals("CITY") || control.equals("-1"))
	    {
		  this.control= control;
	    }
	  else 
	      throw new IllegalArgumentException("Invalid control");
    
  }
  
  
  
  /**
   * Method that sets name of study area 
   * 
   * @param studyArea1 name of study area 
   */
  public void setStudyArea1(String studyArea1)    
  {   
    this.studyArea1=studyArea1;   
  }
  
  
  
  /**
   * Method that sets name of study area 
   * 
   * @param studyArea2 name of study area 
   */
  public void setStudyArea2(String studyArea2)
    
  {
    
    this.studyArea2= studyArea2;
    
  }
  
  
  
  /**
   * Method that sets name of study area 
   * 
   * @param studyArea3 name of study area
   */
  public void setStudyArea3(String studyArea3)
    
  {
    
    this.studyArea3=studyArea3;
    
  }
  
  
  
  /**
   * Method that sets name of study area 
   * 
   * @param studyArea4 name of study area 
   */
  public void setStudyArea4(String studyArea4)
    
  {
    
    this.studyArea4=studyArea4;
    
  }
  
  
  
  /**
   * Method that sets name of study area 
   * 
   * @param studyArea5 name of study area 
   */
  public void setStudyArea5(String studyArea5) 
    
  {
    
    this.studyArea5= studyArea5;
    
  }
  
  /**
   * Method that sets social scale 
   * 
   * @pre number must be in range
   * @param social the amount on the social scale  
   */
  public void setSocial(int social)
  {
	  if (social != -1 && social < 1 || social > 5)
	    {
	      throw new IllegalArgumentException("Invalid social scale");
	    }
	  else
    this.social=social;
  }
  
  
  
  /**
   * Method that sets the number of applicants 
   * 
   * @pre number must be in range
   * @param numApplicants the number of applicants 
   */
  public void setNumApplicants(int numApplicants)   
  {
	  if (numApplicants != -1 && numApplicants < 0)
	    {
	      throw new IllegalArgumentException("Invalid num applicants");
	    }
	  else 
    this.numApplicants= numApplicants;
    
  }
  
  
  
  /**
   * Method that sets the number of students 
   * 
   * @pre number must be in range
   * @param numStudents the number of students at a school 
   */
  public void setNumStudents(int numStudents) 
    
  {
	  if (numStudents != -1 && numStudents < 0)
	    {
	      throw new IllegalArgumentException("Invalid number of students");
	    }
	  else 
    this.numStudents = numStudents;
    
  }
  
  
  
  /**
   * Method that sets the academic scale 
   * 
   * @pre number must be in range
   * @param academicScale the rating of the academic scale 
   */
  public void setAcademicScale(int academicScale)  
  {
	  if (academicScale != -1 && academicScale < 1 || academicScale > 5)
	    {
	      throw new IllegalArgumentException("Invalid academic scale");
	    }
	  else 
    this.academicScale= academicScale;
    
  }
  
  
  
  /**
   * Method that sets the qual of life 
   * 
   * @pre number must be in range
   * @param qualOfLife the quality of life 
   */
  public void setQualOfLife(int qualOfLife)    
  {
	  if (qualOfLife != -1 && qualOfLife < 1 || qualOfLife > 5)
	    {
	      throw new IllegalArgumentException("Invalid qual of life");
	    }
	  else 
    this.qualOfLife= qualOfLife;
    
  }
  
  
  
  /**
   * Method that sets the percent of female students 
   * 
   * @pre number must be in range
   * @param percentFemale the percent of female students at a school 
   */
  public void setPercentFemale(double percentFemale) 
    
  {
    if (percentFemale != -1 && percentFemale > 100 || percentFemale < 0)
    {
      throw new IllegalArgumentException("Invalid female percentage.");
    }
    this.percentFemale= percentFemale;
  }
  
  
  
  /**
   * Method that sets the average sat Verbal score 
   * 
   * @pre number must be in range
   * @param satVerbal the average score for the school 
   */
  public void setSatVerbal(double satVerbal) 
    
  {
	  if (satVerbal != -1 && satVerbal > 800 || satVerbal < 0)
	    {
	      throw new IllegalArgumentException("Invalid sat verbal");
	    }
	  else 
    this.satVerbal= satVerbal;
    
  }
  
  
  
  /**
   * Method that sets the average sat math score
   * 
   * @pre number must be in range
   * @param satMath the average sat math score for the school 
   */
  public void setSatMath(double satMath)   
  {
   if (satMath != -1 && satMath>800 || satMath<0)
   {
	   throw new IllegalArgumentException("Invalid sat math score");
   }
   else 
    this.satMath= satMath;
    
  }
  
  
  
  /**
   * Method that sets the tuition price 
   * 
   * @pre number must be in range
   * @param tuition the tuition price 
   */
  public void setTuition(double tuition)  
  {
	  if (tuition != -1 && tuition < 0)
	    {
	      throw new IllegalArgumentException("Invalid tuition");
	    }
	  else
    this.tuition= tuition;  
  }
  
  
  
  /**
   * Method that sets the percent of students getting fin aid 
   * 
   * @pre number must be in range
   * @param percentRecFinAid the percent of students getting aid 
   */
  public void setPercentRecFinAid(double percentRecFinAid)     
  {  
    if (percentRecFinAid != -1 && percentRecFinAid > 100 || percentRecFinAid < 0)
    {
      throw new IllegalArgumentException("Illegal financial aid percentage");
    }
    else
    	 this.percentRecFinAid= percentRecFinAid;
  }
  
  
  
  /**
   * Method that sets the percent of accepted students 
   * 
   * @pre number must be in range
   * @param percentAccepted the percent of students accepted to the school 
   */
  public void setPercentAccepted(double percentAccepted) 
    
  {
    if (percentAccepted != -1 && percentAccepted > 100 || percentAccepted < 0)
    {
      throw new IllegalArgumentException("Invalid acceptance percentage.");
    }
    this.percentAccepted = percentAccepted;
  }
  
  
  
  /**
   * Method that sets the percent of admitted students that enroll 
   * 
   * @pre number must be in range
   * @param percentEntroll the percent of admitted students that enroll
   */
  public void setPercentEnroll(double percentEnroll)    
  {
	  if (percentEnroll != -1 && percentEnroll > 100 || percentEnroll < 0)
	    {
	      throw new IllegalArgumentException("Invalid enroll percentage");
	    }
	  else 
    this.percentEnroll= percentEnroll;
    
  }

  
  /**
   * Checking to see if the object is a University object
   * 
   * @pre must be correct object type
   * @param object the object compared to University type object
   */
  @Override public boolean equals(Object object) {
	  if(object instanceof University) {
		  University school = (University)object;
		  return schoolName.equals(school.getSchoolName()) && state.equals(school.getState()) && location.equals(school.getLocation())
				  && control.equals(school.getControl()) && numStudents==school.getNumStudents() && numApplicants==school.getNumApplicants()
				  && academicScale==school.getAcademicScale() && social==school.getSocial() && qualOfLife==school.getQualOfLife()
				  && percentFemale==school.getPercentFemale() && satVerbal==school.getSatVerbal() && satMath==school.getSatMath()
				  && tuition==school.getTuition() && percentRecFinAid==school.getPercentRecFinAid() && percentAccepted==school.getPercentAccepted()
				  && percentEnroll==school.getPercentEnroll() && studyArea1.equals(school.getStudyArea1()) && studyArea2.equals(school.getStudyArea2())
				  && studyArea3.equals(school.getStudyArea3()) && studyArea4.equals(school.getStudyArea4()) && studyArea5.equals(school.getStudyArea5());
	  }
	  else
		  return false;
  }
}
