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
   * @param perEnroll precent of people who actually enroll
   * @param academicScale the academic scale of the school
   * @param social the scale of social life
   * @param qualOfLife scale of the quality of life of students
   * @param studyArea1 area the school specializes in
   * @param studyArea2
   * @param studyArea3
   * @param studyArea4
   * @param studyArea5
   */
  public void editSchool(University school) {
    
    /*University school = new University(name, state, loc, control, numStudents, perFem,
                                       satVerbal, satMath, tuition, perFinancialAid, numApplicants,
                                       perAccepted, perEnroll, academicScale, social, qualOfLife,
                                       studyArea1, studyArea2, studyArea3, studyArea4, studyArea5);*/
    adminController.setSchoolInfo(school);
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
  public void addNewUser(String firstName, String lastName, String username, String password, char type){
    User user = new User(firstName, lastName, username, password, type, 'Y');
    adminController.addNewUser(user);
  }
  
  /**
   * Gets a users info
   * 
   * @param username the username of the user to get info for
   */
  public void getUserInfo(String username){
    Account account = adminController.getUserInfo(username);
    System.out.println("\tFirst: " + account.getFirstName()+ "\n\t" + "Last: " + account.getLastName() + "\n\t" + "Username: " + account.getUsername() + "\n\t" + "Password: " + account.getPassword()+ "\n\t" + "Type: " + account.getAccountType() + "\n\t" + "Status: " + account.getStatus());
  }
  
  /**
   * Gets a schools info
   * 
   * @param name the name of the school to get info for
   */
  public void getSchoolInfo(String name){ 
    University u = adminController.getSchoolInformation(name);
    System.out.println(u);
    System.out.println("\tName: " + u.getSchoolName()+"\n\tState: " +
                       u.getState()+"\n\tLocation: " + u.getLocation()+"\n\tControl: " + u.getControl()+ "\n\tNumber of Students: " +
                       u.getNumStudents()+ "\n\t% Female: "+ u.getPercentFemale() + "\n\tSAT Verbal: " + u.getSatVerbal() + 
                       "\n\tSAT Math: " + u.getSatMath()+ "\n\tTuition: " + u.getTuition()+ "\n\t% Receiving Financial Aid: " + 
                       u.getPercentRecFinAid()+"\n\tNumber of Applications: " + u.getNumApplicants()+ "\n\t% Accepted: " + 
                       u.getPercentAccepted()+ "\n\t% Enrolled: " + u.getPercentEnroll()  + "\n\tAcademic Scale: " +
                       u.getAcademicScale() +"\n\tSocial Rating: "+ u.getSocial()+ "\n\tQuality of Life: " + u.getQualOfLife() +
                       "\n\tStudy Area 1: " + u.getStudyArea1()+"\n\tStudy Area 2: " + u.getStudyArea2()+"\n\tStudy Area 3: " + 
                       u.getStudyArea3()+"\n\tStudy Area 4: "  + u.getStudyArea4()+"\n\tStudy Area 5: " + u.getStudyArea5());
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
   * @param perEnroll precent of people who actually enroll
   * @param academicScale the academic scale of the school
   * @param social the scale of social life
   * @param qualOfLife scale of the quality of life of students
 * @throws Exception 
   */
  public void addSchool(String name, String state, String loc, String control, int numStudents, double perFem,
                        int satVerbal, int satMath, double tuition, double perFinancialAid, int numApplicants,
                        double perAccepted, double perEnroll, int academicScale, int social, int qualOfLife,
                        String emp1, String emp2, String emp3, String emp4, String emp5) {
    
    University school = new University(name, state, loc, control, numStudents, perFem,
                                       satVerbal, satMath, tuition, perFinancialAid, numApplicants,
                                       perAccepted, perEnroll, academicScale, social, qualOfLife,
                                       emp1, emp2, emp3, emp4, emp5);
      adminController.addSchool(school);
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
  public void editUser(String firstName, String lastName, String username, String password, char type, char status){
      Account account = new Account(firstName, lastName, username, password, type, status);
	  adminController.editUser(account);
  }
  
  /**
   * Gets all the universities and lists them off
   */
  public void viewUniversities(){
    ArrayList<String> names = adminController.viewUniversities();
    for(String name : names)
      System.out.println("\t"+name);
  }
  
  /**
   * Changes a user's status to deactivated
   * 
   * @param username the username of the user to deactivate
   */
  public void deactivateUser(String username) {
    adminController.deactivateUser(username);
  }
}