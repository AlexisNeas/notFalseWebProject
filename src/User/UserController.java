package User;
import java.util.*;
import DatabaseController.*;
import University.*;

/**
 * Class that interacts with the constructed Database Controller and account controller. Interacts with the classes based on User Interactions
 * 
 * @author Alexis Neas
 * @version 3/20/18
 */

public class UserController {
  /**
   * Instance of the DBController class
   */
 private DBController dbController;
 
 /**
  * The error that occurred
  */
 private int error;
 
 /**
  * Changes made to user profile
  */
 private int changes;
 /**
  * User Controller constructor
  */
 public UserController()
 {
   this.dbController = new DBController("notfal", "csci230");
 }
 
  /**
   * Takes a list of search criteria inputed by user, and returns a list of Universities
   * in an order of relevance
   * 
   * @param schoolName Name of the school to search for.
   * @param stateName Name of the state for schools.
   * @param location Location area of a school.
   * @param control Private State or City control.
   * @param lowNumberOfStudents Lower limit for student population.
   * @param upNumberOfStudents Upper limit for student population.
   * @param lowPercentFemale Lower limit for Percent Female.
   * @param upPercentFemale Upper limit for Percent Female.
   * @param lowSATVerbal Lower limit for SATVerbal.
   * @param upSATVerbal Upper limit for SATVerbal.
   * @param lowSATMath Lower limit for SATMath.
   * @param upSATMath Upper limit for SATMath.
   * @param lowExpenses Lower limit for Expenses.
   * @param upExpenses Upper limit for Expenses.
   * @param lowPercentEnrolled Lower limit for Percent Enrolled.
   * @param upPercentEnrolled Upper limit for Percent Enrolled.
   * @param lowAcademicsScale Lower limit for Academics Scale.
   * @param upAcademicsScale Upper limit for Academics Scale.
   * @param lowSocialScale Lower limit for Social Scale.
   * @param upSocialScale Upper limit for Social Scale.
   * @param lowQualityOfLifeScale Lower limit for Quality Of Life Scale.
   * @param upQualityOfLifeScale Upper limit for Quality Of Life Scale.
   * @param emphases1 one of the emphases of the university
   * @param emphases2 one of the emphases of the university
   * @param emphases3 one of the emphases of the university
   * @param emphases4 one of the emphases of the university
   * @param emphases5 one of the emphases of the university
   * 
   * @return the university objects closest to the search in an ArrayList
 * @throws Exception 
   */
  public ArrayList<University> searchSchool(String schoolName, String stateName, String location, String control,
          int lowNumberOfStudents, int upNumberOfStudents,  
          double lowPercentFemale, double upPercentFemale, 
          double lowSATVerbal, double upSATVerbal,
          double lowSATMath, double upSATMath,
          double lowExpenses, double upExpenses,
          double lowPercentRecFinAid, double upPercentRecFinAid,
          int lowNumApplicants, int upNumApplicants,
          double lowPercentAccepted, double upPercentAccepted,
          double lowPercentEnrolled, double upPercentEnrolled,
          
          int lowAcademicsScale, int upAcademicsScale,
          int lowSocialScale, int upSocialScale,
          int lowQualityOfLifeScale, int upQualityOfLifeScale,
          String emphases1,String emphases2,String emphases3,
          String emphases4,String emphases5){

     
		try {
			return dbController.searchTwo( schoolName,  stateName,  location,  control,
			          lowNumberOfStudents,  upNumberOfStudents,  
			          lowPercentFemale,  upPercentFemale, 
			          lowSATVerbal,  upSATVerbal,
			          lowSATMath,  upSATMath,
			          lowExpenses,  upExpenses,
			          lowPercentRecFinAid,  upPercentRecFinAid,
			          lowNumApplicants,  upNumApplicants,
			          lowPercentAccepted,  upPercentAccepted,
			          lowPercentEnrolled,  upPercentEnrolled,
			         
			          lowAcademicsScale,  upAcademicsScale,
			          lowSocialScale,  upSocialScale,
			          lowQualityOfLifeScale,  upQualityOfLifeScale,
			          emphases1, emphases2, emphases3,
			          emphases4, emphases5);
		} catch (Exception e) {
			
			return null;
		}
		
	 
     
                               
  }
  
  /**
   * Removes a school from a user's list of saved schools
   * 
   * @param university the name of university to be removed
   * @param user the user that the university is being removed from
   * 
   * @return returns a boolean to indicate the university has been removed
   */
  
  public boolean removeSchool(String university, String user)
  {
    return dbController.removeSchool(university, user);
  }
  
  /**
   * Gets the information for the selected school
   * 
   * @param school the name of the school to get the information about
   * 
   * @return returns a University containing all of the information
   */
  public University getSchoolInfo(String school)
  {
     return dbController.getSchoolInfo(school); 
  }
  
  /**
   * Adds a school to the user's list of saved schools
   * 
   * @param user the name of user saving the school
   * @param school school to be added to user's list
 * @throws Exception 
   */
  public int addSchool(String user, String school)
  {
   try {
	return dbController.userSaveSchool(user, school);
   } catch (Exception e) {
	e.printStackTrace();
	return 0;
   } 
  }
  
  /**
   * Find similar schools to the one selected
   * 
   * @param university the university to be compared to
   * @return list of 5 universities most similar to university
   */
  public ArrayList<University> findSimilarSchools(University university)
  {
   return dbController.findSimilarSchools(university); 
  }
  
  
  /**
   * Gets a list of user's saved universities
   * 
   * @param username the username to get the saved universities from
   * 
   * @return the list of schools that have been saved by user
 * @throws Exception 
   */
  public ArrayList<String> getSavedUniversities(String username)
  {
   try {
	   return dbController.getUserSchools(username);
   } catch (Exception e) {
	   error = 2;
	   return new ArrayList<String>();
   } 
  }
  
  /**
   * Edits the user's profile and saves changes
   * 
   * @param username the user's username
   * @param password the user's password
   * @param firstName the user's first name
   * @param lastName the user's last name
   * @param type the type of account
   * @param status the status of the account
   */
  public int editProfile(String firstName, String lastName, String username, String password, char type, char status)
  {
	  
	  try {
		  dbController.setUserInfo(firstName, lastName, username,  password,  type,  status);  
		  return 0;
	  }
	  
	  catch(IllegalArgumentException e)
	  {
		return -1;
	  }
	  
  }
  
  /**
   * Allows the user to view their profile
   * 
   * @param username the user's username
   * 
   * @return an account object with the users information
   * 
   */
  public Account viewProfile(String username)
  {
    return dbController.getUserInfo(username);
  }
  
  public int getError()
  {
	return this.error;  
  }
  
  public int getChanges()
  {
	return this.changes;  
  }

}

  
  