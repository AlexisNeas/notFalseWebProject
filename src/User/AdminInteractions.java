package User;
import java.util.*;
import University.University;

/**
 * Provides the admin with functionalities by interacting with the AdminController class.
 * 
 * @author Zachary Vetter
 * @version 3/20/18
 */
public class AdminInteractions {
  
  /**
   * Admin Controller object that actually has the logic for the admin methods.
   */
  private AdminController adminController;
  
  /**
   * The logged in account
   */
  private Admin currentAdmin;
  
  /**
   * Constructor that initializes the admin controller
   */
  public AdminInteractions(){
    this.adminController = new AdminController();
  }
  
  /**
   * Edits a schools informations
   * 
   * @param name the name of the school
   * @param state
   * @param loc the city location
   * @param control who owns the school
   * @param numStudents number of students
   * @param perFem percent of female students
   * @param satVerbal the average verbal SAT score
   * @param satMath the average math SAT score
   * @param tuition cost of tuition
   * @param perFinancialAid the percent of students receiving financial aid
   * @param numApplicants number of people who apply to the school
   * @param perAccepted the percent of applicants who get accepted
   * @param perEnroll percent of people who actually enroll
   * @param academicScale the academic scale of the school
   * @param social the scale of social life
   * @param qualOfLife scale of the quality of life of students
   * @param studyArea1 area the school specializes in
   * @param studyArea2
   * @param studyArea3
   * @param studyArea4
   * @param studyArea5
   */
  public int editSchool(University school) {
    
    /*University school = new University(name, state, loc, control, numStudents, perFem,
                                       satVerbal, satMath, tuition, perFinancialAid, numApplicants,
                                       perAccepted, perEnroll, academicScale, social, qualOfLife,
                                       studyArea1, studyArea2, studyArea3, studyArea4, studyArea5);*/
	  
    return adminController.setSchoolInfo(school);
  
  }
  
  /**
   * Gets a school's information and prints it out
   * 
   * @param schoolName the name of school to get info for
   */
  public void schoolInfo(String schoolName) {
    University university = adminController.getSchoolInformation(schoolName);
    System.out.println(university);
    
  }
  
  /**
   * Gets all the users in the system
   */
  public ArrayList<Account> getListOfUsers(){
    ArrayList<Account> array = adminController.getListOfUsers();
    /*for(int i = 0; i < array.size();i++)
    {
     System.out.println(array.get(i).getUsername());
    }*/
    return array;
  }
  
  /**
   * Adds a new user or admin to the system
   * 
   * @param firstName
   * @param lastName
   * @param username
   * @param password
   * @param type
   */
  public int addNewUser(String firstName, String lastName, String username, String password, char type){
    try {
    	Account user = new Account(firstName, lastName, username, password, type, 'Y');
    	int added = adminController.addNewUser(user);
        return added;  
    }
    catch(IllegalArgumentException e)
    {
    		return -2;
    }
  }
  
  /**
   * Gets a users info
   * 
   * @param username the username of the user to get info for
   */
  public Account getUserInfo(String username){
    	return adminController.getUserInfo(username);
    }
  
  /**
   * Gets a schools info
   * 
   * @param name the name of the school to get info for
   */
  public University getSchoolInfo(String name){ 
    return adminController.getSchoolInformation(name);
    
  }
  
  /**
   * Adds a new school
   * 
   * @param name the name of the school
   * @param state
   * @param loc the city location
   * @param control who owns the school
   * @param numStudents number of students
   * @param perFem percent of female students
   * @param satVerbal the average verbal SAT score
   * @param satMath the average math SAT score
   * @param tuition cost of tuition
   * @param perFinancialAid the percent of students receiving financial aid
   * @param numApplicants number of people who apply to the school
   * @param perAccepted the percent of applicants who get accepted
   * @param perEnroll percent of people who actually enroll
   * @param academicScale the academic scale of the school
   * @param social the scale of social life
   * @param qualOfLife scale of the quality of life of students
 * @throws Exception 
   */
  public int addSchool(String name, String state, String loc, String control, int numStudents, double perFem,
                        int satVerbal, int satMath, double tuition, double perFinancialAid, int numApplicants,
                        double perAccepted, double perEnroll, int academicScale, int social, int qualOfLife,
                        String emp1, String emp2, String emp3, String emp4, String emp5) { 
    
	  try { 
    University school = new University(name, state, loc, control, numStudents, perFem,
                                       satVerbal, satMath, tuition, perFinancialAid, numApplicants,
                                       perAccepted, perEnroll, academicScale, social, qualOfLife,
                                       emp1, emp2, emp3, emp4, emp5);
  
      int add = adminController.addSchool(school);
       return add;
    }
  catch(IllegalArgumentException e)
  {
  		return -1;
  }
}
      
  
  
  /**
   * Edits a user
   * 
   * @param firstName
   * @param lastName
   * @param username
   * @param password
   * @param type
   * @param status
   */
  public int editUser(Account account){
      //Account account = new Account(firstName, lastName, username, password, type, status);
	  int edit = adminController.editUser(account);
	  return edit;
  }
  
  /**
   * Gets all the universities and lists them off
   */
  public ArrayList<University> viewUniversities(){
    return adminController.viewUniversities();
    
   
  }
  
  /**
   * Changes a user's status to deactivated
   * 
   * @param username the username of the user to deactivate
   */
  public void deactivateUser(String username) {
    adminController.deactivateUser(username);
  }
  
  public Admin getAdmin() {
	  return this.currentAdmin;
  }
  
  public void setCurrentAdmin(String username) {
	  Account acct = getUserInfo(username);
	  this.currentAdmin = new Admin(acct.getFirstName(), acct.getLastName(), acct.getUsername(), acct.getPassword(), acct.getAccountType(), acct.getStatus());
	  this.currentAdmin.logOn();
  }
}