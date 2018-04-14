
package User;

import static org.junit.Assert.*;
import User.Account;
import org.junit.Before;
import org.junit.Test;

/**
 * @author Zachary Vetter
 * @version 4/8/18
 */
public class AccountTest {

 private Account acct;
 
 @Before
 public void setUp() throws Exception {
  acct = new Account("First", "Last", "user", "pass", 'u', 'Y');
 }

 @Test(expected = IllegalArgumentException.class)
 public void testAccountInvalidType() {
  new Account("First", "Last", "user", "pass", 'x', 'Y');
 }
 
 @Test
 (expected = IllegalArgumentException.class)
 public void testAccountInvalidStatus() {
  new Account("First", "Last", "user", "pass", 'u', 'X');
 }

 @Test
 public void testGetFirstName() {
  String expected = "First";
  String result = acct.getFirstName();
  assertTrue("The first name of the account is \"First\"", expected.equals(result));
 }

 @Test
 public void testGetLastName() {
  String expected = "Last";
  String result = acct.getLastName();
  assertTrue("The last name of the account is \"Last\"", expected.equals(result));
 }

 @Test
 public void testGetUsername() {
  String expected = "user";
  String result = acct.getUsername();
  assertTrue("The username of the account is \"user\"", expected.equals(result));
 }

 @Test
 public void testGetPassword() {
  String expected = "pass";
  String result = acct.getPassword();
  assertTrue("The password of the account is \"pass\"", expected.equals(result));
 }

 @Test
 public void testGetAccountType() {
  char expected = 'u';
  char result = acct.getAccountType();
  assertTrue("The type of the account is \"u\"", expected == result);
 }

 @Test
 public void testGetStatus() {
  char expected = 'Y';
  char result = acct.getStatus();
  assertTrue("The status of the account is \"Y\"", expected == result);
 }

 @Test
 public void testSetFirstNameCorrect() {
  String expected = "Success";
  acct.setFirstName(expected);
  String result = acct.getFirstName();
  assertTrue("The first name of the account did not change", expected.equals(result));
 }

 @Test
 public void testSetLastNameCorrect() {
  String expected = "Success";
  acct.setLastName(expected);
  String result = acct.getLastName();
  assertTrue("The last name of the account did not change", expected.equals(result));
 }

 @Test
 public void testSetPasswordCorrect() {
  String expected = "Success";
  acct.setPassword(expected);
  String result = acct.getPassword();
  assertTrue("The password of the account did not change", expected.equals(result));
 }

 @Test
 public void testSetAccountTypeCorrect() {
  char expected = 'a';
  acct.setAccountType(expected);
  char result = acct.getAccountType();
  assertTrue("The type of the account did not change", expected == result);
 }
 
 @Test(expected = IllegalArgumentException.class)
 public void testSetAccountTypeInvalid() {
  acct.setAccountType('x');
 }

 @Test
 public void testSetStatusCorrect() {
  char expected = 'N';
  acct.setStatus(expected);
  char result = acct.getStatus();
  assertTrue("The status of the account did not change", expected == result);
 }
 
 @Test(expected = IllegalArgumentException.class)
 public void testSetAccountStatusInvalid() {
  acct.setStatus('X');
 }

 @Test
 public void testLogOn() {
  boolean expected = true;
  acct.logOn();
  boolean result = acct.isLoggedOn();
  assertTrue("The account should be logged on", expected == result);
 }

 @Test
 public void testLogOff() {
  boolean expected = false;
  acct.logOn();
  boolean check = true;
  boolean checkResult = acct.isLoggedOn();
  assertTrue("The account never logged on", check == checkResult);
  acct.logOff();
  boolean result = acct.isLoggedOn();
  assertTrue("The account should be logged off", expected == result);
 }

 @Test
 public void testIsLoggedOn() {
  boolean expected1 = false;
  boolean result1 = acct.isLoggedOn();
  assertTrue("The account should be logged off", expected1 == result1);
  
  acct.logOn();
  boolean expected2 = true;
  boolean result2 = acct.isLoggedOn();
  assertTrue("The account should be logged on", expected2 == result2);
 }
 
 @Test
 public void testEqualsTrue() {
	 Account acct2 = new Account("First", "Last", "user", "pass", 'u', 'Y');
	 boolean result = acct.equals(acct2);
	 assertTrue("The accounts are not equal", result);
 }
 
 @Test
 public void testEqualsFalse() {
	 Account error = new Account("Last", "First", "pass", "user", 'a', 'N');
	 boolean result = acct.equals(error);
	 assertTrue("The accounts should be different but are equal", !result);
 }

}
