package User;
/**
 * Provides a class that directly interacts with user and
 * calls methods from the Account Controller
 * author: Jess Hansen
 * date: 3/20/2018
 */
public class AccountInteractions {
 /**
  * Instance of the AccountController class
  */
  private AccountController aController;
  
  /**
   * Constructor for the AccountInteractions class
   * Initializes the AccountController object
   */
  public AccountInteractions() {
   this.aController = new AccountController();
  }
  /**
   * Checks if the user's credentials are valid and either
   * logs them in or supplies them with an error message to try again
   * @param username of the account logging on
   * @param password of the account logging on
   * @return Account of the account being logged on
   */
  public int logOn(String username, String password){
    return aController.logOn(username,password);
  }
  
  /**
   * If the user is logged on, the user is able to log off using this method 
   * @param account is an Account object of the account being logged off
   */
  public void logOff(Account account){
    
    aController.logOff(account);
    if(!account.isLoggedOn())
      System.out.println("The account is now logged off");
    else
      System.out.println("ERROR: The account did not log off");
  }
   
  
  
  
 

}