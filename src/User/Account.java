package User;
/**
 * Account entity super class to User and Admin. 
 * 
 * @author Zachary Vetter
 * @version 4/8/18
 */
public class Account {
  
  /**
   * Says if this account is logged in or not
   */
  private boolean loggedIn;
  
  /**
   * The account's first name
   */
  private String firstName;
  
  /**
   * The account's last name
   */
  private String lastName;
  
  /**
   * Account username
   */
  private String username;
  
  /**
   * Password for the account
   */
  private String password;
  
  /**
   * Account type designating user or admin
   */
  private char accountType;
  
  /**
   * Status of active or deactivated
   */
  private char status;
  
  
  
  /**
   * Account constructor
   * 
   * @param firstName
   * @param lastName
   * @param username
   * @param password
   * @param accountType
   * @param status
   * 
   * @throws IllegalArgumentException if account type or status are invalid
   */
  public Account(String firstName, String lastName, String username, String password, char accountType,
                 char status) {
    if(accountType != 'a' && accountType != 'u')
    {
    	throw new IllegalArgumentException("Account Type must be 'a' or 'u'");
    }
    if(status != 'Y' && status != 'N')
    {
    	throw new IllegalArgumentException("Status must be 'Y' or 'N'");
    }
    if(password.equals(""))
    {
    	throw new IllegalArgumentException("Password cannot be empty");
    }
    this.firstName = firstName;
    this.lastName = lastName;
    this.username = username;
    this.password = password;
    this.accountType = accountType;
    this.status = status;
    this.loggedIn = false;
  }

  /**
   * Gets the account's first name
   * 
   * @return first name
   */
  public String getFirstName(){
    return firstName;
  }
  
  /**
   * Gets the account's last name
   * 
   * @return last name
   */
  public String getLastName(){
    return lastName;
  }
  
  /**
   * Gets the account username
   * 
   * @return username
   */
  public String getUsername(){
    return username;
  }
  
  /**
   * Gets the account password
   * 
   * @return password
   */
  public String getPassword(){
    return password;
  }
  
  /**
   * Gets the account type of user or admin
   * 
   * @return account type
   */
  public char getAccountType(){
    return accountType;
  }
  
  /**
   * Returns whether or not the account is active or not
   * 
   * @return account status
   */
  public char getStatus(){
    return status;
  }
  
  /**
   * Sets the first name for the person's account
   * 
   * @param name the new first name
   */
  public void setFirstName(String name){
    this.firstName = name;
  }
  
  /**
   * Sets the new last name for the person's account
   * 
   * @param name the new last name
   */
  public void setLastName(String name){
    this.lastName = name;
  }
  
  /**
   * Sets the account password
   * 
   * @param pass the new password
   */
  public void setPassword(String pass){
    if(!pass.equals("")){
    	this.password = pass;
    }
    else
    	throw new IllegalArgumentException("Password cannot be empty");
  }
  
  /**
   * Sets the account type to user or admin
   * 
   * @param type the account type
   * 
   * @throws IllegalArgumentException if the account type is not 'a' or 'u'
   */
  public void setAccountType(char type){
	  if(type != 'a' && type != 'u')
	  {
		  throw new IllegalArgumentException("Account Type must be 'a' or 'u'");
	  }
	  this.accountType = type;
  }
  
  /**
   * Sets the status of the account to active or inactive
   * 
   * @param stat the new status of the account
   * 
   * @throws IllegalArgumentException status must be 'Y' or 'N'
   */
  public void setStatus(char stat){
	  if(stat != 'Y' && stat != 'N')
	  {
		throw new IllegalArgumentException("Status must be 'Y' or 'N'");
	  }
	  this.status = stat;
  }
  
  /**
   * Logs the account on
   */
  public void logOn(){
    this.loggedIn = true;
  }
  
  /**
   * Logs the account off
   */
  public void logOff(){
    this.loggedIn = false;
  }
  
  /**
   * Checks to see if the account is currently logged on
   * 
   * @return a boolean with the value true if the account is logged on
   */
  public boolean isLoggedOn(){
    return this.loggedIn;
  }
  
  /**
   * Checks to see if two account objects are equal
   * 
   * @param object the object to see if it is equal to the account
   * 
   * @return true if the accounts have equal information and false if they dont or the object isnt an account
   */
  @Override public boolean equals(Object object)
  {
	  if(object instanceof Account)
	  {
		  Account other = (Account)object; 
	      return (this.firstName.equals(other.getFirstName()) && this.lastName.equals(other.getLastName())
			 && this.username.equals(other.getUsername()) && this.password.equals(other.getPassword())
			 && this.accountType == other.getAccountType() && this.status == other.getStatus());
      }
	  else
		  return false;
  }
}