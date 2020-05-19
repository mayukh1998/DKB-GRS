/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.util.ArrayList;
import java.util.Collections;
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
        List<Issue> expResult = new ArrayList <Issue>();
        List<Issue> result = Usermanager.user_view_issue(userid);
        assertEquals(expResult, result);
        
    }
    
    
    /**
     * Test of acquireissue method, of class Usermanager.
     */
    @Test
    public void testAcquireissue() {
        System.out.println("acquireissue");
        String issue_id = "1100015";
        String ui = "102";
        int expResult = 1;
        int result = Usermanager.acquireissue(issue_id, ui);
        assertEquals(expResult, result);
    }

    
    
    /**
     * Test of user_create_issue method, of class Usermanager.
     */
    @Test
    public void testUser_create_issue() throws Exception {
        int k=0;
        System.out.println("user_create_issue");
        List<Integer> ids = new ArrayList<Integer>();
        List <Issue> list = Issue.get_issue();
        for (Issue i:list){
        ids.add(Integer.parseInt(i.getissue_id()));
        }
        k = Collections.max(ids,null);
        k = k+1;
        String str = String.valueOf(k);               
        Issue issue = new Issue();
        issue.setissue_id(str);
        issue.setsubject("Deteriorating food quality");
        issue.setdes("The food in the ration shops are not of good quality.The pulses often have too much sand and brittle chunks in them.");
        issue.setname("Riyanka Saha");
        issue.setlocation("189/1 Ultadanga");
        issue.setstatus("open");
        issue.setuser("108");
        issue.setfeedback(" ");
        issue.setfeedback_rate(" ");
        issue.setdepartment("food");
        issue.setpriority("low");
        issue.setphn("8583992804");
        issue.setemail("me.riyasaha@gmail.com");
        issue.setdate("2020-04-08");
        issue.setminfeed(" ");
        int[] expResult = {1,k};
        int[] result = Usermanager.user_create_issue(issue);
        assertArrayEquals(expResult, result);
    }

    
    
    /**
     * Test of givefeedback method, of class Usermanager.
     */
    @Test
    public void testGivefeedback() throws Exception {
        System.out.println("givefeedback");
        Issue issue = new Issue();
        issue.setissue_id("1100019");
        issue.setfeedback_rate("4");
        issue.setfeedback("The food quality has improved.");
        int expResult = 4;
        int result = Usermanager.givefeedback(issue);
        assertEquals(expResult, result);
    }
    
}
