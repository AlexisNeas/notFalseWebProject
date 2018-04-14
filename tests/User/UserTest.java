/**
 * 
 */
package User;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

/**
 * Provides test methods for the User class 
 * @author jhansen001
 * date: 4/8/2018
 */
public class UserTest {
    User user;
	/**
	 * Initializes the user object to use in the test methods
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception { 
		this.user = new User("Alexis", "Neas", "juser", "user", 'u', 'Y');
	}

	/**
	 * Tests if the constructor for the User class works
	 */
	@Test
	public void testUserConstructor() {
		User result = this.user;
		User expResult = new User("Alexis", "Neas", "juser", "user", 'u', 'Y');
		assertEquals("User account exists.",expResult, result);
	}
	
	/**
	 * Tests the constructor for the User class doesn't work when 
	 * given an invalid User object
	 */
	@Test
	public void testInvalidUserConstructor() {
		User result = this.user;
		User expResult = new User("Jess", "Neas", "juser", "user", 'u', 'Y');
		assertFalse("User account exists.",expResult.equals(result));
	}
	

}
