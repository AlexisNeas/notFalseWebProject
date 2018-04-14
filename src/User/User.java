package User;

/**
 * Provides the logic for the User class 
 * author: Jess Hansen
 * date: 2/27/2018
 */


public class User extends Account {
  /**
   * Basic constructor method for the User class
   */
  public User(String firstName, String lastName, String username, String password, char accountType, char status){
    super(firstName,lastName,username,password,accountType,status);
  }
}