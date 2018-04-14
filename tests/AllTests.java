import DBController.*;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;
import University.*;
import User.*;

@RunWith(Suite.class)
@SuiteClasses({ DBTest.class, UniversityTest.class, AccountControllerTest.class, AccountTest.class,
	AdminControllerTest.class, AdminTest.class, UserControllerTest.class, UserTest.class, FunctionalTesting.class })
public class AllTests {

}
