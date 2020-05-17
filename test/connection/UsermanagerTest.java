/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.util.List;
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
public class UsermanagerTest {
    
    public UsermanagerTest() {
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
     * Test of user_view_issue method, of class Usermanager.
     */
    @Test
    public void testUser_view_issue() throws Exception {
        System.out.println("user_view_issue");
        String userid = "";
        List<Issue> expResult = null;
        List<Issue> result = Usermanager.user_view_issue(userid);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of acquireissue method, of class Usermanager.
     */
    @Test
    public void testAcquireissue() {
        System.out.println("acquireissue");
        String issue_id = "";
        String ui = "";
        int expResult = 0;
        int result = Usermanager.acquireissue(issue_id, ui);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of user_create_issue method, of class Usermanager.
     */
    @Test
    public void testUser_create_issue() throws Exception {
        System.out.println("user_create_issue");
        Issue issue = null;
        int[] expResult = null;
        int[] result = Usermanager.user_create_issue(issue);
        assertArrayEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of givefeedback method, of class Usermanager.
     */
    @Test
    public void testGivefeedback() throws Exception {
        System.out.println("givefeedback");
        Issue issue = null;
        int expResult = 0;
        int result = Usermanager.givefeedback(issue);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
