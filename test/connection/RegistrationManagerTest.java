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
public class RegistrationManagerTest {
    
    public RegistrationManagerTest() {
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
     * Test of registerUser method, of class RegistrationManager.
     */
    @Test
    public void testRegisterUser() {
        System.out.println("registerUser");
        String un = "";
        String n = "";
        String p = "";
        String e = "";
        String ph = "";
        String l = "";
        int expResult = 0;
        int result = RegistrationManager.registerUser(un, n, p, e, ph, l);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of registerMinister method, of class RegistrationManager.
     */
    @Test
    public void testRegisterMinister() {
        System.out.println("registerMinister");
        String un = "";
        String n = "";
        String p = "";
        String dept = "";
        int expResult = 0;
        int result = RegistrationManager.registerMinister(un, n, p, dept);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of registerClerk method, of class RegistrationManager.
     */
    @Test
    public void testRegisterClerk() {
        System.out.println("registerClerk");
        String un = "";
        String n = "";
        String p = "";
        int expResult = 0;
        int result = RegistrationManager.registerClerk(un, n, p);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
