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
public class IssuemanagerTest {
    
    public IssuemanagerTest() {
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
     * Test of clerk_view_issue method, of class Issuemanager.
     */
    @Test
    public void testClerk_view_issue() throws Exception {
        System.out.println("clerk_view_issue");
        Issuemanager instance = new Issuemanager();
        List<Issue> expResult = null;
        List<Issue> result = instance.clerk_view_issue();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of monitor_issue method, of class Issuemanager.
     */
    @Test
    public void testMonitor_issue() throws Exception {
        System.out.println("monitor_issue");
        Issuemanager instance = new Issuemanager();
        List<Issue> expResult = null;
        List<Issue> result = instance.monitor_issue();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of act_on_issue method, of class Issuemanager.
     */
    @Test
    public void testAct_on_issue() {
        System.out.println("act_on_issue");
        String wd = "Food quality thoroughly checked before distribution.";
        String id = "1111";
        String expResult = "";
        String result = Issuemanager.act_on_issue(wd, id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       
    }

    /**
     * Test of clerk_create_issue method, of class Issuemanager.
     */
    @Test
    public void testClerk_create_issue() throws Exception {
        System.out.println("clerk_create_issue");
        Issue issue = null;
        int[] expResult = null;
        int[] result = Issuemanager.clerk_create_issue(issue);
        assertArrayEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of assignissue method, of class Issuemanager.
     */
    @Test
    public void testAssignissue() {
        System.out.println("assignissue");
        String prior = "Medium";
        String dept = "Food";
        String sta = "Open";
        String issue_id = "1111";
        String expResult = "";
        String result = Issuemanager.assignissue(prior, dept, sta, issue_id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of closeissue method, of class Issuemanager.
     */
    @Test
    public void testCloseissue() {
        System.out.println("closeissue");
        String issue_id = "1111";
        String expResult = "";
        String result = Issuemanager.closeissue(issue_id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       
    }
    
}
