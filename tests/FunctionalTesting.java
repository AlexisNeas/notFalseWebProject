import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;
import DatabaseController.*;
import University.*;
import User.*;

public class FunctionalTesting {
	private UserInteraction userInteractions;
	private AdminInteractions adminInteractions;
	private AccountInteractions accountInteractions;
	private AdminController adminController;
	private DBController dbController;
	private UserController userController;
	
	
	@Before
	public void setUp() throws Exception {
		 userInteractions = new UserInteraction();
		 adminInteractions = new AdminInteractions();
		 accountInteractions = new AccountInteractions();
		 adminController = new AdminController();
		 dbController = new DBController("notfal", "csci230");
		 userController = new UserController();
		 dbController.deleteSchool("Vetters School");
	}

	@Test
	public void testLogOnU1U3() {
		Account account = accountInteractions.logOn("juser", "user");
		boolean loggedOn = account.isLoggedOn();
		boolean expected = true;
		assertTrue("The account should be logged on", loggedOn==expected);
	}

	
	@Test
	public void testLogOnU1U2() {
		Account account = accountInteractions.logOn("nadmin", "admin");
		boolean loggedOn = account.isLoggedOn();
		boolean expected = true;
		assertTrue("The account should be logged on", loggedOn==expected);
	}
	
	@Test
	public void testLogOnAlt1InvalidUser() {
		Account account = accountInteractions.logOn("THISISNOTAUSERNAME", "password");
		assertTrue("The account should not be logged on", account==null);
	}
	
	@Test
	public void testLogOnAlt2InvalidPassword() {
		Account account = accountInteractions.logOn("juser", "WRONGPASSWORD");
		boolean loggedOn = account.isLoggedOn();
		boolean expected = false;
		assertTrue("The account should not be logged on", loggedOn==expected);
	}
	
	@Test
	public void testLogOffU4() {
		Account account = accountInteractions.logOn("juser", "user");
		boolean loggedOn = account.isLoggedOn();
		account.logOff();
		boolean loggedOff = account.isLoggedOn();
		assertTrue("Account is not logged off", loggedOn != loggedOff);
	}
	
	@Test
	public void testViewUniversitiesU5() {
		ArrayList<String> universities = adminController.viewUniversities();
		ArrayList<String> expected = dbController.getListOfSchools();
		assertTrue("Not all of the schools are returned", universities.equals(expected));
	}
	
	@Test
	public void testEditSchoolU7Main() {
		adminInteractions.addSchool("Vetters School", "NORTH DAKOTA", "BISMARCK",
				"STATE", 5, 1.0, 1, 1, 1.0, 1.0, 1, 1.0, 1.0, 1, 1, 1, "",
				"", "", "", "");
		University original = adminController.getSchoolInformation("Vetters School");
		String state = original.getState();
		String location = original.getLocation();
		int numStudents = original.getNumStudents();

		adminInteractions.editSchool("Vetters School", "Minnesota", "Loserville",
				"STATE", 1, 1.0, 1, 1, 1.0, 1.0, 1, 1.0, 1.0, 1, 1, 1, "",
				"", "", "", "");
		University edited = adminController.getSchoolInformation("Vetters School");
		
		String stateE = edited.getState();
		String locationE = edited.getLocation();
		int numStudentsE = edited.getNumStudents();	
		
		assertTrue("State did not change", !stateE.equals(state));
		assertTrue("State did not change", stateE.equals("Minnesota"));
		assertTrue("Location did not change", !locationE.equals(location) && locationE.equals("Loserville"));
		assertTrue("Number of students did not change", numStudentsE!=numStudents && numStudentsE==1);

		dbController.deleteSchool("Vetters School");
	}
	
	
	@Test
	public void testViewUsersU8( ) {
		ArrayList<Account> array = adminController.getListOfUsers();
		ArrayList<Account> expected = dbController.getListOfUsers();
		assertTrue("Users were not returned", array.equals(expected));
	}
	
	@Test
	public void testAddUsersU9ValidUser() {
		adminInteractions.addNewUser("ZVets", "New", "TESTING", "password", 'a');
		Account user = adminController.getUserInfo("TESTING");
		ArrayList<Account> accounts = dbController.getListOfUsers();
		assertTrue("User is not added to list of accounts" , accounts.contains(user));
		dbController.deleteUser("TESTING");
	}
	
	@Test
	public void testAddUsersU9ExistingUser() {
		adminInteractions.addNewUser("ZVets", "New", "TESTING", "password", 'a');
		Account user = adminController.getUserInfo("TESTING");
		ArrayList<Account> accounts = dbController.getListOfUsers();
		assertTrue("User is not added to list of accounts" , accounts.contains(user));
		
		adminController.addNewUser(user);
		int error = adminController.getError();
		int expected = 1;
		assertTrue("Error did not occur when trying to add a user that already exists.", error == expected);
		dbController.deleteUser("TESTING");
	}
	
	
	@Test
	public void testEditUserAndSaveAccountU10U11() {
		adminInteractions.addNewUser("ZVets", "New", "TESTING", "password", 'a');
		User expected = new User("Zachary", "Vetter", "TESTING", "password", 'a', 'Y');
		adminInteractions.editUser("Zachary", "Vetter", "TESTING", "password", 'a', 'Y');
		Account result = adminController.getUserInfo("TESTING");
		assertTrue("The users are not equal", expected.equals(result));
		dbController.deleteUser("TESTING");
	}
	
	@Test
	public void testAddSchoolAndSaveSchoolU6U12() {
		ArrayList<String> schoolList = adminController.viewUniversities();
		assertTrue("The school was already in the database", !schoolList.contains("Vetters School"));
		adminInteractions.addSchool("Vetters School", "NORTH DAKOTA", "BISMARCK",
				"STATE", 5, 1.0, 1, 1, 1.0, 1.0, 1, 1.0, 1.0, 1, 1, 1, "",
				"", "", "", "");
		schoolList = adminController.viewUniversities();
		dbController.deleteSchool("Vetters School");
		assertTrue("The school was not added", schoolList.contains("Vetters School"));
		
	}
	
	@Test
	public void testSearchAndViewResultsU13U15() {
		University expected = new University("Vetters School", "NORTH DAKOTA", "BISMARCK",
				"STATE", 5, 1.0, 1, 1, 1.0, 1.0, 1, 1.0, 1.0, 1, 1, 1, "",
				"", "", "", "");
		dbController.addNewSchool(expected);
		ArrayList<University> results = userController.searchSchool("!", "NORTH DAKOTA", "!", "!",
				-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
				-1, -1, -1, -1, -1, -1, "!", "!", "!", "!", "!");
		dbController.deleteSchool("Vetters School");
		assertTrue("The school did not show up in the result list", results.contains(expected));
		
	}
	
	@Test
	public void testSearchNoCriteriaU13Alt1() {
		ArrayList<University> results = userController.searchSchool("!", "!", "!", "!",
				-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
				-1, -1, -1, -1, -1, -1, "!", "!", "!", "!", "!");
		assertTrue("The results should be 0", results == null);
	}
	
	@Test

	public void testDeactivateUserU14() {
		adminInteractions.addNewUser("ZVets", "New", "TESTING", "password", 'a');
		adminInteractions.deactivateUser("TESTING");
		char result = adminController.getUserInfo("TESTING").getStatus();
		assertTrue("The users are not equal", 'N' == result);
		dbController.deleteUser("TESTING");
	}
	
	@Test
	public void testAddSchoolViewSavedSchoolsAndRemoveSavedSchoolsU16U19U21() {
		adminInteractions.addNewUser("ZVets", "New", "TESTING", "password", 'a');
		userInteractions.addSchool("YALE", "TESTING");
		ArrayList<String> savedSchools = userController.getSavedUniversities("TESTING");
		assertTrue("Yale should be saved to the user", savedSchools.contains("YALE"));
		userInteractions.remove("YALE", "TESTING");
		savedSchools = userController.getSavedUniversities("TESTING");
		assertTrue("Yale should not be saved to the user", !savedSchools.contains("YALE"));
		dbController.deleteUser("TESTING");
	}
	
	@Test
	public void testViewSavedSchoolsNoSchoolU16Alt1() throws Exception {
		adminInteractions.addNewUser("ZVets", "New", "TESTING", "password", 'a');
		ArrayList<String> savedSchools = userController.getSavedUniversities("TESTING");
		assertTrue("The size of the list should be 0", savedSchools.size() == 0);
		dbController.deleteUser("TESTING");
	}
	
	@Test
	public void testViewProfileU17() {
		adminInteractions.addNewUser("ZVets", "New", "TESTING", "password", 'u');
		User expected = new User("ZVets", "New", "TESTING", "password", 'u', 'Y');
		Account profile = userController.viewProfile("TESTING");
		assertTrue("The account information is not the same", profile.equals(expected));
		dbController.deleteUser("TESTING");
	}
	
	@Test
	public void testEditProfileU18() {
		adminInteractions.addNewUser("ZVets", "New", "TESTING", "password", 'u');
		Account expected = userController.viewProfile("TESTING");
		userInteractions.editProfile("ZVets", "Vetter", "TESTING", "password", 'u', 'Y');
		Account result = userController.viewProfile("TESTING");
		assertTrue("The user profile was not updated", !expected.equals(result));
		dbController.deleteUser("TESTING");
	}
	
	@Test
	public void testViewSchoolInformationU20() {
		University school = dbController.getSchoolInfo("YALE");
		University testSchool = userController.getSchoolInfo("YALE");
		assertTrue("The school information does not match", school.equals(testSchool));
	}
	
	@Test
	public void testViewSimilarSchoolsU22() {
		ArrayList<University> yaleSimilar = userController.findSimilarSchools(userController.getSchoolInfo("YALE"));
		ArrayList<University> tempSchool = userController.findSimilarSchools(userController.getSchoolInfo("CASE WESTERN"));
		assertTrue("The lists should not be the same", !yaleSimilar.equals(tempSchool));
	}
	
	

}
