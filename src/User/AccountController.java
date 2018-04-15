package User;

import DatabaseController.DBController;
/**
 * Provides the logic for the Account Controller class 
 * @author jhansen001
 * date: 3/20/2018
 */
public class AccountController {
  /**
   * Instance of the DBController class
   */
  private DBController dbController;
  
  /**
   * Constructor for the AccountController class
   * Initializes the DBController
   */
  public AccountController(){
    this.dbController = new DBController("notfal", "csci230");
  }
  
  /**
   * Checks if the user's credentials are valid or not and logs them in
   * @param username is the username of the account trying to log on
   * @param password of the user trying to log on
   * @return Account of the account being logged in
   */
  public int logOn(String username, String password){
	   
    Account user = dbController.getUserInfo(username);
    
    if(user == null)
        return -1;
    else if(user != null && !password.equals(user.getPassword()))
    	return -1;
    else if(user.getStatus() == 'N')
    	return -2;
    else
    {
      if(user.getAccountType() == 'u')
      {
        return 1;
      }
      else // admin signed in
      {
        return 2;
      }
    }
	  
  }
  
  /**
   * If the user is logged on, 
   * the user is able to log off using this method 
   * @param account of the user being logged off
   */
  public void logOff(Account account){
    account.logOff();
    
  }
}