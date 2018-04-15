package User;

import static org.junit.Assert.*;
import User.Account;
import org.junit.Before;
import org.junit.Test;
/**
 * Test methods for the logOn method in the account controller
 * @author jhansen001
 * date: 4/8/2018
 */
public class AccountControllerTest {
  
	AccountController aController;
	
	/**
	 * Initializes the account controller object to be used in the tests
	 * @throws Exception
	 */
    @Before
	public void setUp() throws Exception {
	    aController = new AccountController();
	  }
	  
    /**
     * Tests the log on method for a valid user
     */
	@Test
	public void testLogOnForValidUser() {
		String userName = "juser";
		String password = "user";
		Account expResult = new User("John", "User", "juser", "user", 'u', 'Y');
	    Account result = aController.logOn(userName,password);
	    
	    assertTrue("Account is logged in.",expResult.equals(result));
	}
	
	/**
	 * Tests the log on method for invalid username
	 */
	@Test
	public void testLogOnForInvalidUsername() {
		String userName = "Jess";
		String password = "user";
		Account expResult = new User("juser", "User", "juser", "user", 'u', 'Y'); 
	    Account result = aController.logOn(userName,password);
	    assertFalse("Username provided is invalid.",expResult.equals(result));
	}
	
	/**
	 * Tests the log on method for an invalid password
	 */
	@Test
	public void testLogOnForInvalidPassword() {
		String userName = "juser";
		String password = "password";
		Account expResult = new User("Alexis", "Neas", "juser", "user", 'u', 'Y'); 
		Account result = aController.logOn(userName,password);
	    
		assertFalse("Password provided is invalid.",expResult.equals(result));
	}
	
	/**
	 * Tests the log on method for a deactivated account
	 */
	@Test
	public void testLogOnForDeactivatedAccount() {
		String userName = "trevor";
		String password = "password";
		Account expResult = new User("Rovert", "Wensman", userName , password, 'u', 'N'); 
		Account result = aController.logOn(userName,password);
	    
		assertFalse("Account is deactivated.",expResult.equals(result));
	}
	
	/**
	 * Tests log off method for a valid user
	 */
	@Test
	public void testLogOffForValidUser() {
		Account user = new User("Alexis", "Neas", "juser", "user", 'u', 'Y'); 
		boolean expResult = false;
	    aController.logOff(user);
	    boolean result = user.isLoggedOn();
	    
	    assertEquals("Account is logged off.",expResult, result);
	}
	

	/**
	 * Tests the log off method for a valid admin account
	 */
	@Test
	public void testLogOffForValidAdmin() {
		String userName = "nadmin";
		Account admin = new User("Noreen", "Admin", "nadmin", "admin", 'a', 'Y'); 
		boolean expResult = false;
	    aController.logOff(admin);
	    boolean result = admin.isLoggedOn();
	    
	    assertEquals("Account logged on for: " + userName,expResult, result);
	}
	
	/**
	 * Test log on method for a valid admin account
	 */
	@Test
	public void testLogOnForValidAdmin() {
		String userName = "nadmin";
		String password = "admin";
		Admin expResult = new Admin("Noreen", "Admin", "nadmin", "admin", 'a', 'Y'); 
	    Account result = aController.logOn(userName,password);
	    
	    assertTrue("Account is logged in.",expResult.equals(result));
	}
	
}
