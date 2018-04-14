package University; 
//import University.*;
import org.junit.*;
import static org.junit.Assert.*;



public class UniversityTest
{
  
  University university, univ;
  
  @Before
  public void init()
  {
	univ = new University(null, null, null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, null, null, null, null, null);
    university = new University(null, null, null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, null, null, null, null, null);
  }
  
  @Test
  public void setSchoolNameTest()
  {
    university.setSchoolName("SJU");
    String expected = "SJU";
    String result = university.getSchoolName();
    Assert.assertEquals("The school name is not SJU", expected, result);    
  }
  
  @Test
  public void setValidLocationTest()
  {
    university.setLocation("URBAN");
    String expected = "URBAN";
    String result = university.getLocation();
    Assert.assertEquals("The location was set correctly", expected, result);
  }
  
  @Test
  public void setValidStateTest()
  {
    university.setState("MINNESOTA");
    String expected = "MINNESOTA";
    String result = university.getState();
    Assert.assertEquals("State set correctly", expected, result);
    
  }
  
  @Test
  public void setValidControlTest()
  {
    university.setControl("STATE");
    String expected = "STATE";
    String result = university.getControl();
    Assert.assertEquals("Control set correctly", expected, result);
    
  }
  
  @Test
  public void setStudyArea1Test()
  {
    university.setStudyArea1("A");
    String expected = "A";
    String result = university.getStudyArea1();
    Assert.assertEquals("Study area set correctly", expected, result);
  }
  
  @Test
  public void setStudyArea2Test()
  {
    university.setStudyArea2("B");
    String expected = "B";
    String result = university.getStudyArea2();
    Assert.assertEquals("Study area set correctly", expected, result);   
  }
  
  @Test
  public void setStudyArea3Test()  
  {
    university.setStudyArea3("C");
    String expected = "C";
    String result = university.getStudyArea3();
    Assert.assertEquals("Study area set correctly", expected, result);
  }
  
  @Test
  public void setStudyArea4Test()
  {
    university.setStudyArea4("D");
    String expected = "D";
    String result = university.getStudyArea4();
    Assert.assertEquals("Study area set correctly", expected, result);
  }
  
  
  @Test
  public void setStudyArea5Test()
  {
    university.setStudyArea5("E");
    String expected = "E";
    String result = university.getStudyArea5();
    Assert.assertEquals("Study area set correctly", expected, result);
  }
  @Test
  public void setSocialTest()
  {
    university.setSocial(3);
    int expected = 3;
    int result = university.getSocial();
    Assert.assertEquals("The social scale was set correctly",expected, expected, result);       
  }
  
  @Test
  public void setNumApplicantsTest()
  {
    university.setNumApplicants(400);
    int expected = 400;
    int result = university.getNumApplicants();
    assertEquals("Number of applicants is set correctly", expected, expected, result );      
  }
  
  @Test
  public void setNumStudentsTest()
  {
    university.setNumStudents(2000);
    int expected = 2000;
    int result = university.getNumStudents();
    Assert.assertEquals("Number of students is set correctly", expected, expected, result);
  }
  
  @Test
  public void setQualOfLifeTest()
  {
    university.setQualOfLife(5);
    int expected = 5;
    int result = university.getQualOfLife();
    Assert.assertEquals("Correct quality of life amount", expected, expected, result);
  }
  
  @Test
  public void setPercentEnrollTest()
  {
    university.setPercentEnroll(60);
    double expected = 60;
    double result = university.getPercentEnroll();
    Assert.assertEquals("Correct percent enroll", expected, expected, result);
  }
  
  @Test
  public void setPercentAcceptedTest()
  {
    university.setPercentAccepted(50);
    double expected = 50;
    double result = university.getPercentAccepted();
    Assert.assertEquals("Correct percent accepted", expected, expected, result);
  }
  
  @Test
  public void setPercentRecFinAidTest()
  {
    university.setPercentRecFinAid(50);
    double expected = 50;
    double result = university.getPercentRecFinAid();
    Assert.assertEquals("Correct percent rec. fin. aid", expected, expected, result);
  }
  
  @Test
  public void setTuitionTest()
  {
    university.setTuition(50000);
    double expected = 50000;
    double result = university.getTuition();
    Assert.assertEquals("Correct tuition amount",  expected, expected, result);
  }
  
  @Test
  public void setSatMathTest()
  {
    university.setSatMath(50);
    double expected = 50;
    double result = university.getSatMath();
    Assert.assertEquals("Correct satMath score", expected, expected, result);
  }
  
  @Test
  public void setSatVerbalTest()
  {
    university.setSatVerbal(50);
    double expected = 50;
    double result = university.getSatMath();
    Assert.assertEquals("Correct satMath score", expected, expected, result);
  }
  
  @Test
  public void setAcademicScaleTest()
  {
    university.setAcademicScale(5);
    int expected = 5;
    int result = university.getAcademicScale();
    Assert.assertEquals("Academic scale set correctly", expected, expected, result);
  }
  
  @Test
  public void setPercentFemaleTest()
  {
    university.setPercentFemale(0);
    double expected = 0;
    double result = university.getPercentFemale();
    Assert.assertEquals("Correct percent female", expected, expected, result);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidStateTest()
  {
	  univ.setState("MN");
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidLocationTest()
  {
	  univ.setLocation("Collegeville");
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidControlTest()
  {
	  univ.setControl("state");
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidSocialTest()
  {
	  univ.setSocial(10);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidNumApplicantsTest()
  {
	  univ.setNumApplicants(-1);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidNumStudentsTest()
  {
	  univ.setNumStudents(-1);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidAcademicScaleTest()
  {
	  univ.setAcademicScale(99);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidQualOfLifeTest()
  {
	  univ.setQualOfLife(100);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidPercentFemaleTest()
  {
	  univ.setPercentFemale(105);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidSatMathTest()
  {
	  univ.setSatMath(801);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidSatVerbalTest()
  {
	  univ.setSatVerbal(801);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidTuitionTest()
  {
	  univ.setTuition(-1);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidPercentRecFinAid()
  {
	  univ.setPercentRecFinAid(101);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidPercentAccptedTest()
  {
	  univ.setPercentAccepted(101);
  }
  
  @Test (expected = IllegalArgumentException.class)
  public void setInvalidPercentEnrolledTest()
  {
	  univ.setPercentEnroll(101);
  }
  }
  
  
  
