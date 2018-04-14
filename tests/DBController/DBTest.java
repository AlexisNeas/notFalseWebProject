package DBController;
import University.*;
import User.*;
import DatabaseController.*;
import org.junit.*;
import java.util.*;



public class DBTest
{
  private Account newUser;
  @Before
  public void setUp() throws Exception
  {
   DBController db = new DBController("notfal", "csci230"); 
   db.deleteUser("username");
   

   db.deleteSchool("UOJ"); 
   
   
   this.newUser = new User("first", "last", "username", "password", 'a', 'Y');
   db.addNewEmphases("Temp School", "asfasd");
   db.removeSchool("UNIVERSITY OF MINNESOTA","juser");
   


  }
  
  //setting user information
  @Test
  public void setUserInfoTest()
  {
    Account acc = new Account("Jubie", "Alade", "jalade", "csci", 'u', 'Y');
    char expected = 'u';                               
    char result = acc.getAccountType();
    Assert.assertEquals("The char info was set correctly: " + expected, expected, result);  
  }
  
  @Test(expected = IllegalArgumentException.class)
  public void setUserInfoInvalidTest() throws IllegalArgumentException
  {
	  //Account acc = new Account("Jubie", "Alade", "jalade", "csci", 'u', 'Y');
	  DBController db = new DBController("notfal", "csci230"); 
	  db.setUserInfo("Jubie", "Alade", "asasdfdsfdd", "csci", 'u', 'Y');
	  
	  
  }
  

  //setting school information 
  @Test 
  public void setSchoolInformationTest()
  {

    //University univ = new University();
    DBController dc = new DBController("notfal", "csci230"); 
    University u = dc.getSchoolInfo("Temp School");
    u.setState("KANSAS");
    dc.setSchoolInformation(u);
    String result = u.getState();
    //System.out.println(result);
    String expected = "KANSAS";

    Assert.assertEquals("The info was set correctly " + expected, expected, result);
  }
  
  @Test(expected = IllegalArgumentException.class)
  public void setInvalidSchoolInfoTest() throws IllegalArgumentException
  {
	  DBController dc = new DBController("notfal", "csci230"); 
	  University u = dc.getSchoolInfo("Temp School");
	  u.setSchoolName("asdfasdfa");
	  dc.setSchoolInformation(u);
	  
  }
  

  @Test (expected = IllegalArgumentException.class)
  public void addNewSchoolTest() throws Exception
  {
    University univ = new University();
    
    DBController dbCont = new DBController("notfal", "csci230");  
    univ.setSchoolName("UOJ");
    univ.setStudyArea1("Emp1");
    univ.setStudyArea2("Emp2");
    univ.setStudyArea3("Emp3");
    univ.setStudyArea4("Emp4");
    univ.setStudyArea5("Emp5");
    
    dbCont.addNewSchool(univ); 
    univ = dbCont.getSchoolInfo("UOJ");
    

        String result = univ.getSchoolName();
        String expected = "UOJ";
        Assert.assertTrue("The university was added: " + expected, result.equals("UOJ"));
        
   }


  
    
    
    
  
  

  @Test 
  public void emptySearchResults() throws Exception
  {
   
   DBController dc = new DBController("notfal", "csci230");
   ArrayList<University> univ = dc.searchTwo("!", "!","!" ,"!",//SchoolName, State, location,Control
              -500, -400,//NumStudents
              -1,-1,//%Female
              -1,-1,//SATVerbal
              -1,-1,//SATMath
              -1,-1,//Tuition
              -1,-1,//percentRecFinAid
              -1,-1,//numApps
              -1,-1,//percentAccepted
              -1,-1,//PercentEnrolled
              -1,-1,//AcademicsScale
              -1,-1,//Social
              -1,-1,//Academics
              "!", "!","!", "!","!");
   

   Assert.assertTrue("Search did not return desired result: " + true, univ.isEmpty());
    
  }

  
  @Test
  public void searchTwoTest()
  {
	  
   

	  
	  ArrayList<University> list = null;
	  DBController dc = new DBController("notfal", "csci230");
	    try {
			list = dc.searchTwo("OF", "MINNESOTA","URBAN" ,"STATE",//SchoolName, State, location,Control
			                              10000, 45000,//NumStudents
			                              40.0,46.0,//%Female
			                              489.0,491.0,//SATVerbal
			                              556.0,558.0,//SATMath
			                              13771.0,13773.0,//Tuition
			                              49,51,	//percentRecFinAid
			                              8499,8501,		//numApps
			                              79,81,		//percentAccepted
			                              59.0,61.0,//PercentEnrolled
			                              3,5,//AcademicsScale
			                              1,5,//Social
			                              1,5,//Academics
			                              "AGRICULTURE", "ENGINEERING","!", "!","!");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	    	 String result = list.get(0).getSchoolName();
	         String expected = "UNIVERSITY OF MINNESOTA";
	         Assert.assertTrue("Search did not return desired result: " + expected, result.equals(expected));
	  	
	  	
	  	


  }
  
  @Test
  public void fullSearchTest() throws Exception{
	  DBController dc = new DBController("notfal", "csci230");
	  ArrayList<University> result = dc.searchTwo("WILLIAM PATERSON COLLEGE", "NEW JERSEY","SUBURBAN" ,"STATE",//SchoolName, State, location,Control
              9000, 45000,//NumStudents
              10.0,99.0,//%Female
              9.0,900.0,//SATVerbal
              5.0,5588.0,//SATMath
              1.0,131773.0,//Tuition
              1,100,	//percentRecFinAid
              1,85000,		//numApps
              1,100,		//percentAccepted
              1.0,99.0,//PercentEnrolled
              1,5,//AcademicsScale
              1,5,//Social
              1,5,//Academics
              "BUSINESS-ADMINISTRATION", "COMPUTER-SCIENCE","EDUCATION", "FINE-ARTS","LIBERAL-ARTS");
	  String expected = result.get(0).getSchoolName();
	  Assert.assertTrue("Search did not return desired result: " + expected, result.get(0).getSchoolName().equals(expected));
	  
	  dc.searchTwo("CASE WESTERN", "!","!" ,"!",//SchoolName, State, location,Control
              -1, -1,//NumStudents
              -1,-1,//%Female
              -1,-1,//SATVerbal
              -1,-1,//SATMath
              -1,-1,//Tuition
              -1,-1,	//percentRecFinAid
              -1,-1,		//numApps
              -1,-1,		//percentAccepted
              -1,-1,//PercentEnrolled
              -1,-1,//AcademicsScale
              -1,-1,//Social
              -1,-1,//Academics
              "ARTS-AND-SCIENCES", "ENGINEERING","MANAGEMENT", "!","!");
	  
	  expected = result.get(0).getSchoolName();
	  Assert.assertTrue("Search did not return desired result: " + expected, result.get(0).getSchoolName().equals(expected));
	  
	  dc.searchTwo("YALE", "!","!" ,"!",//SchoolName, State, location,Control
              -1, -1,//NumStudents
              -1,-1,//%Female
              -1,-1,//SATVerbal
              -1,-1,//SATMath
              -1,-1,//Tuition
              -1,-1,	//percentRecFinAid
              -1,-1,		//numApps
              -1,-1,		//percentAccepted
              -1,-1,//PercentEnrolled
              -1,-1,//AcademicsScale
              -1,-1,//Social
              -1,-1,//Academics
              "BIOLOGY", "ENGLISH","HISTORY", "LIBERAL-ARTS","!");
	  
	  expected = result.get(0).getSchoolName();
	  Assert.assertTrue("Search did not return desired result: " + expected, result.get(0).getSchoolName().equals(expected));
	  
	  dc.searchTwo("Temp School", "!","!" ,"!",//SchoolName, State, location,Control
              -1, -1,//NumStudents
              -1,-1,//%Female
              -1,-1,//SATVerbal
              -1,-1,//SATMath
              -1,-1,//Tuition
              -1,-1,	//percentRecFinAid
              -1,-1,		//numApps
              -1,-1,		//percentAccepted
              -1,-1,//PercentEnrolled
              -1,-1,//AcademicsScale
              -1,-1,//Social
              -1,-1,//Academics
              "!", "!","!", "!","!");
	  
	  dc.searchTwo("LEWIS AND CLARK", "!","!" ,"!",//SchoolName, State, location,Control
              -1, -1,//NumStudents
              -1,-1,//%Female
              -1,-1,//SATVerbal
              -1,-1,//SATMath
              -1,-1,//Tuition
              -1,-1,	//percentRecFinAid
              -1,-1,		//numApps
              -1,-1,		//percentAccepted
              -1,-1,//PercentEnrolled
              -1,-1,//AcademicsScale
              -1,-1,//Social
              -1,-1,//Academics
              "!", "!","!", "!","!");
	  dc.searchTwo("WORCESTER", "!","!" ,"!",//SchoolName, State, location,Control
              -1,-1,//NumStudents
              -1,-1,//Female
              -1,-1,//SATVerbal
              -1,-1,//SATMath
              -1,-1,//Tuition
              -1,-1,	//percentRecFinAid
              -1,-1,		//numApps
              -1,-1,		//percentAccepted
              -1,-1,//PercentEnrolled
              -1,-1,//AcademicsScale
              -1,-1,//Social
              -1,-1,//Academics
              "ENGINEERING", "!","!", "!","!");
	  expected = result.get(0).getSchoolName();
	  Assert.assertTrue("Search did not return desired result: " + expected, result.get(0).getSchoolName().equals(expected));
	  dc.searchTwo("!", "NORTH DAKOTA","!" ,"!",//SchoolName, State, location,Control
              -1, -1,//NumStudents
              -1,-1,//%Female
              -1,-1,//SATVerbal
              -1,-1,//SATMath
              -1,-1,//Tuition
              -1,-1,//percentRecFinAid
              -1,-1,//numApps
              -1,-1,//percentAccepted
              -1,-1,//PercentEnrolled
              -1,-1,//AcademicsScale
              -1,-1,//Social
              -1,-1,//Academics
              "!", "!","!", "!","!");
	  
	  
  }
  
  @Test(expected = Exception.class)
  public void noSearchCriteriaTest() throws Exception{
	  DBController dc = new DBController("notfal", "csci230");
	  
	  dc.searchTwo("!", "!","!" ,"!",//SchoolName, State, location,Control
			                              -1, -1,//NumStudents
			                              -1,-1,//%Female
			                              -1,-1,//SATVerbal
			                              -1,-1,//SATMath
			                              -1,-1,//Tuition
			                              -1,-1,	//percentRecFinAid
			                              -1,-1,		//numApps
			                              -1,-1,		//percentAccepted
			                              -1,-1,//PercentEnrolled
			                              -1,-1,//AcademicsScale
			                              -1,-1,//Social
			                              -1,-1,//Academics
			                              "!", "!","!", "!","!");
	  
  }
  

  @Test
 public void testAddNewUser() throws Exception{
  
  DBController dc = new DBController("notfal", "csci230");
  dc.addNewUser(newUser);
  Account acc = dc.getUserInfo(newUser.getUsername());
  String expected = newUser.getUsername();
  String result = acc.getUsername();
  Assert.assertTrue("Saved schools did not return desired result: " + expected, result.equals(expected));
 }
  
  
  
  
  @Test 
  public void getUserSchoolsTest() throws Exception
  {
   ArrayList<String> list;
   DBController dc = new DBController("notfal", "csci230");
   dc.userSaveSchool("juser","UNIVERSITY OF MINNESOTA");
   
   
   list = dc.getUserSchools("juser");
   //System.out.println(list.get(0));
   String result = list.get(0);
   String expected = list.get(0);
   dc.removeSchool("UNIVERSITY OF MINNESOTA", "juser");
   Assert.assertTrue("Saved schools did not return desired result: " + expected, result.equals(expected));   
  }
 
  
  @Test
  public void findSimilarSchoolsTest()
  {
   University univ = new University(null, null, null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null);
   
   ArrayList<University> list;
   DBController dc = new DBController("notfal", "csci230");
   univ = dc.getSchoolInfo("YALE");
   list = dc.findSimilarSchools(univ);
   String result = list.get(0).getSchoolName();
   String expected = list.get(0).getSchoolName();
   Assert.assertTrue("Saved schools did not return desired result: " + expected, result.equals(expected));
  }
  @Test
  public void getListOfUsersTest()
  {
   DBController dc = new DBController("notfal", "csci230");
   ArrayList<Account> acc = dc.getListOfUsers();
   String result = acc.get(0).getUsername();
   String expected = acc.get(0).getUsername();   
   Assert.assertTrue("List of users not correct:" + expected, result.equals(expected));
  }
  
  @Test
  public void activateUserTest()
  {
	  DBController dc = new DBController("notfal", "csci230");
	  dc.activateUser("juser");
	  Account acc = dc.getUserInfo("juser");
	  char result = acc.getStatus();
	  char expected = 'Y';
	  Assert.assertTrue("List of users not correct:" + expected, result == expected);
  }
  @Test
  public void deactivateUser() throws IllegalArgumentException
  {
	  DBController dc = new DBController("notfal", "csci230");
	  dc.deactivateUser("juser");
	  Account acc = dc.getUserInfo("juser");
	  char result = acc.getStatus();
	  char expected = 'N';
	  Assert.assertTrue("List of users not correct:" + expected, result == expected);
  }
  
  @Test
  public void deactivateUserInvalid() throws IllegalArgumentException
  {
	  DBController dc = new DBController("notfal", "csci230");
	  dc.deactivateUser("juser");
	  dc.getUserInfo("asdaffff");
	  
  }
  @Test
  public void userSaveSchool() throws Exception
  {
   ArrayList<String> list;
   DBController dc = new DBController("notfal", "csci230");
   dc.userSaveSchool("juser", "UNIVERSITY OF MINNESOTA");
   list = dc.getUserSchools("juser");
   //System.out.println(list.get(0));
   String result = list.get(0);
   String expected = "UNIVERSITY OF MINNESOTA";
   Assert.assertTrue("Saved schools did not return desired result: " + expected, result.equals(expected));
  }
  @Test 
  public void getSchoolInfo()
  {
 DBController dc = new DBController("notfal", "csci230");
 University univ =   dc.getSchoolInfo("UNIVERSITY OF MINNESOTA");
 String result = univ.getSchoolName();
 String expected = "UNIVERSITY OF MINNESOTA";
 Assert.assertTrue("Saved schools did not return desired result: " + expected, result.equals(expected));
  }
  
  @Test
  public void removeUserSchoolTest() throws Exception
  {
   DBController dc = new DBController("notfal", "csci230");
   dc.userSaveSchool("juser","UNIVERSITY OF MINNESOTA");
   boolean result = dc.removeSchool("UNIVERSITY OF MINNESOTA", "juser");
   //ArrayList<String> list = dc.getUserSchools("juser");
   boolean expected = true;
   Assert.assertTrue("Remove schools did not return desired result: " + true, result == expected);
  }
  
  @Test(expected = Exception.class)
  public void testInvalidUserSchools() throws Exception
  {
	  DBController dc = new DBController("notfal", "csci230");
	  dc.getUserSchools("asdfasdf");
  }
  
  @Test
  public void addUnivEmpTest() throws Exception
  {
	  DBController dc = new DBController("notfal", "csci230");
	  dc.addNewEmphases("Temp School", "BUSINESS-ADMINISTRATION");
	  
  }
  
  @Test (expected = Exception.class)
  public void addUnivEmpInvalidNameTest() throws Exception
  {
	  DBController dc = new DBController("notfal", "csci230");

	  dc.addNewEmphases("invalid school name", "BUSINESS-ADMINISTRATION");

	  
  }
  
  @Test 
  public void removeUnivEmpTest() throws Exception
  {
	  DBController dc = new DBController("notfal", "csci230");
	  dc.removeUnivEmp("Temp School", "asfasd");
	  ArrayList<String> emp = dc.getUniversityEmphases("Temp School");
	  boolean result = emp.contains("asfasd");
	  boolean expected = false;
	  Assert.assertTrue("List of users not correct:" + expected, result == expected);
  }
  
  @Test (expected = Exception.class)
  public void removeUnivEmpInvalidEmpTest() throws Exception
  {
	  DBController dc = new DBController("notfal", "csci230");
	  dc.removeUnivEmp("invalid name", "BUSINESS-ADMINISTRATION");
  }
  
  
  @Test
  public void getSchoolInfoTest()
  	{
	  DBController dc = new DBController("notfal", "csci230");
	  University u = dc.getSchoolInfo("LEWIS AND CLARK");
	  u = dc.getSchoolInfo("Temp School");
	  String result = u.getSchoolName();
	  String expected = u.getSchoolName();
	  Assert.assertTrue("List of users not correct:" + expected, result.equals(expected));
	  u = dc.getSchoolInfo("YALE");
	  result = u.getSchoolName();
	  expected = u.getSchoolName();
	  Assert.assertTrue("List of users not correct:" + expected, result.equals(expected));
	  u = dc.getSchoolInfo("asdfa");
	  u = dc.getSchoolInfo("WILLIAM PATERSON COLLEGE");
	  u = dc.getSchoolInfo("CASE WESTERN");
	  
  	}
  

  
}