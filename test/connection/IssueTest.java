/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.util.ArrayList;
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
public class IssueTest {
    
    public IssueTest() {
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


    @Test
    public void testInsertClerk() {
        System.out.println("insertClerk");
        String un = "gargi";
        String n = "Gargi Banerjee";
        String p = "gargi";
        String cid = "c104";
        int expResult = 1;
        int result = Issue.insertClerk(un, n, p, cid);
        assertEquals(expResult, result);
    }


    
    
    @Test
    public void testInsertUser() {
        System.out.println("insertUser");
        String un = "Riyanka";
        String n = "Riyanka Saha";
        String p = "abc";
        String e = "riyasaha@gmail.com";
        String ph = "8583992804";
        String l = "189/1Ultadanga Main Road";
        int k = 110;
        int expResult = 1;
        int result = Issue.insertUser(un, n, p, e, ph, l, k);
        assertEquals(expResult, result);
    }
	
	
	
    @Test
    public void testInsertMinister() {
        System.out.println("insertMinister");
        String un = "jyoti";
        String n = "Jyoti Priyo Mallick";
        String p = "jyoti";
        String dept = "food";
        int k = 110;
        int expResult = 1;
        int result = Issue.insertMinister(un, n, p, dept, k);
        assertEquals(expResult, result);
    }


    @Test
    public void testInsert_issue() {
        System.out.println("insert_issue");
        String k = "1100021";
        String s = "Deteriorating food quality";
        String des = "The food in the ration shops are not of good quality.The pulses often have too much sand and brittle chunks in them.";
        String l = "189/1 Ultadanga";
        String un = "108";
        String n = "Riyanka Saha";
        String sta = "open";
        String fd = " ";
        String rt = " ";
        String d = "food";
        String pr = "low";
        String ph = "8583992804";
        String e = "me.riyasaha@gmail.com";
        String date1 = "2020-04-08";
        String min = " ";
        int expResult = 1;
        int result = Issue.insert_issue(k, s, des, l, un, n, sta, fd, rt, d, pr, ph, e, date1, min);
        assertEquals(expResult, result);
    }

    
    @Test
    public void testUpdate_issue() {
        System.out.println("update_issue");
        String userid = "108";
        String priority = "high";
        String issue_id = "1100020";
        String dept = "food";
        String sta = "assigned";
        String feedback = " ";
        String feedback_rate = " ";
        String wd = " Resolved";
        int expResult = 1;
        int result = Issue.update_issue(userid, priority, issue_id, dept, sta, feedback, feedback_rate, wd);
        assertEquals(expResult, result);
    }

    
 
}
