
package connection;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author mayuk
 */
public class LoginManagerTest {
    
    public LoginManagerTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of UserLogin method, of class LoginManager.
     */
    @Test
    public void testUserLogin() {
        System.out.println("UserLogin");
        String username = "mayukh";
        String password = "ac123";
        String expResult = "102";
        String result = LoginManager.UserLogin(username, password);
        assertEquals(expResult, result);
    }

    /**
     * Test of MinisterLogin method, of class LoginManager.
     */
    @Test
    public void testMinisterLogin() {
        System.out.println("MinisterLogin");
        String username = "jyoti";
        String password = "jyoti";
        String expResult = "1109";
        String result = LoginManager.MinisterLogin(username, password);
        assertEquals(expResult, result);
    }

    /**
     * Test of ClerkLogin method, of class LoginManager.
     */
    @Test
    public void testClerkLogin() {
        System.out.println("ClerkLogin");
        String username = "kushanva";
        String password = "1234";
        String expResult = "c101";
        String result = LoginManager.ClerkLogin(username, password);
        assertEquals(expResult, result);
    }

    
    
    /**
     * Test of CMLogin method, of class LoginManager.
     */
    @Test
    public void testCMLogin() {
        System.out.println("CMLogin");
        String username = "cm";
        String password = "cm123";
        boolean expResult = true;
        boolean result = LoginManager.CMLogin(username, password);
        assertEquals(expResult, result);
    }
    
}
