/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
        String username = "Dipayan";
        String password = "dipayan123";
        String expResult = "";
        String result = LoginManager.UserLogin(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of MinisterLogin method, of class LoginManager.
     */
    @Test
    public void testMinisterLogin() {
        System.out.println("MinisterLogin");
        String username = "jyoti";
        String password = "jyoti";
        String expResult = "";
        String result = LoginManager.MinisterLogin(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of ClerkLogin method, of class LoginManager.
     */
    @Test
    public void testClerkLogin() {
        System.out.println("ClerkLogin");
        String username = "kushu";
        String password = "1234";
        String expResult = "";
        String result = LoginManager.ClerkLogin(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       
    }

    /**
     * Test of CMLogin method, of class LoginManager.
     */
    @Test
    public void testCMLogin() {
        System.out.println("CMLogin");
        String username = "cm";
        String password = "cm123";
        boolean expResult = false;
        boolean result = LoginManager.CMLogin(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       
    }
    
}
