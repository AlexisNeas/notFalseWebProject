package User;

import static org.junit.Assert.*;

import java.util.ArrayList;

import University.*;
import org.junit.Before;
import org.junit.Test;

import DatabaseController.DBController;

public class UserControllerTest {
	private UserController uct;
	private DBController db;
	//private User user = new User("Alexis", "Neas","aneas", "password", 'u', 'Y');
	
	@Before
	public void setUp() {
		uct = new UserController();
		db = new DBController("notfal","csci230");
		db.setUserInfo("John", "User", "juser", "user", 'u','Y');
		
	}

	/*@Test
	public void testUserController() {
		fail("Not yet implemented");
	}*/

	@Test
	public void testSearchSchoolEmptySearch(){
	uct.searchSchool( "!",  "!",  "!",  "!",
	          -1,  -1,  -1,  -1, -1,  -1, -1,  -1,
	          -1,  -1,-1,  -1,-1,  -1, -1,  -1, -1, 
	          -1, -1,  -1, -1,  -1,-1,  -1,"!", "!", 
	          "!", "!", "!");
	int error = uct.getError();
	int expected = 1;
	assertTrue("Cannot search with empty search criteria.", expected == error);
	}	
	
	@Test
	public void testSearchSchoolValid() throws Exception{
	ArrayList<University> universities= uct.searchSchool( "!",  "MINNESOTA",  "!",  "!",
	          -1,  -1,  -1,  -1, -1,  -1, -1,  -1,
	          -1,  -1,-1,  -1,-1,  -1, -1,  -1, -1, 
	          -1, -1,  -1, -1,  -1,-1,  -1,"!", "!", 
	          "!", "!", "!");
	ArrayList<University> expected = db.searchTwo( "!",  "MINNESOTA",  "!",  "!",
	          -1,  -1,  -1,  -1, -1,  -1, -1,  -1,
	          -1,  -1,-1,  -1,-1,  -1, -1,  -1, -1, 
	          -1, -1,  -1, -1,  -1,-1,  -1,"!", "!", 
	          "!", "!", "!");
	assertTrue("Search should not be empty", !universities.isEmpty());
	assertTrue("Cannot search with empty search criteria.", universities.equals(expected));
	}

	@Test
	public void testRemoveSchoolInvalidSchool() {
		boolean removed = uct.removeSchool("Alexis", "juser");
		boolean expected = false;
		assertTrue("The invlid school should not have been removed.",removed == expected);
		
	}	
	
	@Test
	public void testRemoveSchoolNotSavedSchool() {
		boolean removed = uct.removeSchool("HARVARD", "juser");
		assertTrue("Cannot remove school that isn't saved.",removed == false);
	}
	
	@Test
	public void testRemoveSchoolInvalidUser() {
		boolean removed = uct.removeSchool("UNIVERSITY OF MINNESOTA", "Linda");
		assertTrue("The school should not have been removed, user is invalid",removed == false);
	}

	@Test
	public void testRemoveSchoolValid() {
		boolean removed = uct.removeSchool("UNIVERSITY OF MINNESOTA", "juser");
		assertTrue("The school should not have been removed",removed == true);
	}
	
	@Test
	public void testGetSchoolInfoInvalidSchool() {
		University u = uct.getSchoolInfo("LINDA");
		assertTrue("The school is invalid and shouldn't have information", u==null);
	}
	
	@Test
	public void testGetSchoolInfoValid() {
		University u = uct.getSchoolInfo("UNIVERSITY OF MINNESOTA");
		String expected = "UNIVERSITY OF MINNESOTA";
		assertTrue("The school is invalid and shouldn't have information", u.getSchoolName().equals(expected));	
	}
//
/*	@Test
	public void testFindSimilarSchoolsValid() {	
		ArrayList<University> u = uct.findSimilarSchools("UNIVERSITY OF MINNESOTA");
		assertTrue("There shouldn't be similar schools for an invalid school", u.length == 5);
	}*/
	
	@Test
	public void testFindSimilarSchoolsValid() {
		University univ = uct.getSchoolInfo("UNIVERSITY OF MINNESOTA");
		ArrayList<University> u = uct.findSimilarSchools(univ);
		assertTrue("Returned no schools.", u.size() == 5);
	}
	
	@Test
	public void testGetSavedUniversitiesInvalidUser() {
		ArrayList<String> empty = uct.getSavedUniversities("INVALIDUSER");
		assertTrue("The list should be empty", empty.size()==0);
	}
	
	/*@Test
	public void testDisplayResults() {
		fail("Not yet implemented");
	}*/
	
	@Test
	public void testGetSavedUniversitiesValid() throws Exception {
		ArrayList<String> u = uct.getSavedUniversities("juser");
		ArrayList<String> expected = db.getUserSchools("juser");
		assertTrue("Not returning saved schools of user", u.equals(expected));		
	}

/*	@Test
	public void testEditProfile() {
		fail("Not yet implemented");
	}*/

	@Test
	public void testViewProfileInvalidUser() {
		Account a = uct.viewProfile("Linda");
		assertTrue("No profile for invalid user", a== null);
	}
	
	@Test
	public void testViewProfileValid() {
		Account a = uct.viewProfile("juser");
		String expected = "juser";
		assertTrue("No profile for invalid user", a.getUsername().equals(expected));
	}
	
	@Test



	public void testAddSchoolInvalidUser() {

		int addSchool = uct.addSchool("false", "UNIVERSITY OF MINNESOTA");
		int expected = 0;
		assertTrue("User is invalid and school should not be added", addSchool == expected);
	}
	
	@Test
	public void testAddSchoolInvalidSchool() {

		uct.addSchool("juser", "UNIVERSITY OF MINNESOTA");
		int result = uct.addSchool("juser", "UNIVERSITY OF MINNESOTA");
		int expected = 0;
		assertTrue("School is already saved and school should not be added", result == expected);
	}	
	
	@Test
	public void testAddSchoolValid()  {

		DBController dc = new DBController("notfal", "csci230");
		dc.removeSchool("UNIVERSITY OF MINNESOTA", "juser");
		int addSchool = uct.addSchool("juser", "UNIVERSITY OF MINNESOTA");
		int expected = -1;
		assertTrue("School is already saved and school should not be added", addSchool > expected);
	}
	
	@Test//(expected = IllegalArgumentException.class)
	public void testEditProfileInvalidUsername() {		
		uct.editProfile("John", "User","wrongUsername", "password", 'u', 'Y');
		assertTrue("Error should occur", uct.getError() == 2);
	}
	
	@Test
	public void testEditProfileChangeName() {
		uct.editProfile("Betty", "User","juser", "user", 'u', 'Y');
		int expected = 1;
		Account account = db.getUserInfo("juser");
		assertTrue("Three changes should have occured", uct.getChanges() == expected);
		assertTrue("FIRST NAME ISN'T CHANGED", account.getFirstName().equals("Betty"));
	}
	
	@Test
	public void testEditProfileChangeLast() {
		uct.editProfile("John", "Neas","juser", "user", 'u', 'Y');
		int expected = 1;
		Account account = db.getUserInfo("juser");
		assertTrue("Three changes should have occured", uct.getChanges() == expected);
		assertTrue("FIRST NAME ISN'T CHANGED", account.getLastName().equals("Neas"));
	}
	
	@Test
	public void testEditProfileChangePassword() {
	uct.editProfile("John", "User","juser", "password", 'u', 'Y');
	int expected = 1;
	Account account = db.getUserInfo("juser");
	assertTrue("Three changes should have occured", uct.getChanges() == expected);
	assertTrue("FIRST NAME ISN'T CHANGED", account.getPassword().equals("password"));
	}
}


