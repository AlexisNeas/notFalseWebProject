package User;
import java.util.*;
import University.*;
/**
 * Provides the logic for the User class 
 * author: Jess Hansen
 * date: 2/27/2018
 */


public class User extends Account {
	
  ArrayList<University> array;

  /**
   * Basic constructor method for the User class
   */
  public User(String firstName, String lastName, String username, String password, char accountType, char status){
    super(firstName,lastName,username,password,accountType,status);
  }
  
  public void setRecentSearch(ArrayList<University> list)
  {
	  this.array = list;
  }
  public ArrayList<University> getRecentSearch()
  {
	  return this.array;
  }
}