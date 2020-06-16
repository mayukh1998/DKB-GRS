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
 * @author kushanava
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
        String un = "Riyanka";
        String n = "Riyanka Saha";
        String p = "abc";
        String e = "riyasaha@gmail.com";
        String ph = "8583992804";
        String l = "189/1Ultadanga Main Road";
        int expResult = 1;
        int result = RegistrationManager.registerUser(un, n, p, e, ph, l);
        assertEquals(expResult, result);
    }

    
    
    /**
     * Test of registerMinister method, of class RegistrationManager.
     */
    @Test
    public void testRegisterMinister() {
        System.out.println("registerMinister");
        String un = "jyoti";
        String n = "Jyoti Priyo Mallick";
        String p = "jyoti";
        String dept = "food";
        int expResult = 1;
        int result = RegistrationManager.registerMinister(un, n, p, dept);
        assertEquals(expResult, result);
        
    }
    
    

    /**
     * Test of registerClerk method, of class RegistrationManager.
     */
    @Test
    public void testRegisterClerk() {
        System.out.println("registerClerk");
        String un = "gargi";
        String n = "Gargi Banerjee";
        String p = "gargi";
        int expResult = 1;
        int result = RegistrationManager.registerClerk(un, n, p);
        assertEquals(expResult, result);
    }
    
}
