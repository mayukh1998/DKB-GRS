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
        String un = "abcd";
        String n = "abcd";
        String p = "abcd";
        String cid = "c106";
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
        int k = 0;
        int expResult = 0;
        int result = Issue.insertUser(un, n, p, e, ph, l, k);
        assertEquals(expResult, result);
    }
/*

    @Test
    public void testInsertMinister() {
        System.out.println("insertMinister");
        String un = "jyoti";
        String n = "Jyoti Priyo Mallick";
        String p = "";
        String dept = "Food";
        int k = 0;
        int expResult = 0;
        int result = Issue.insertMinister(un, n, p, dept, k);
        assertEquals(expResult, result);
    }


    @Test
    public void testInsert_issue() {
        System.out.println("insert_issue");
        String k = "";
        String s = "";
        String des = "";
        String l = "";
        String un = "";
        String n = "";
        String sta = "";
        String fd = "";
        String rt = "";
        String d = "";
        String pr = "";
        String ph = "";
        String e = "";
        String date1 = "";
        String min = "";
        int expResult = 0;
        int result = Issue.insert_issue(k, s, des, l, un, n, sta, fd, rt, d, pr, ph, e, date1, min);
        assertEquals(expResult, result);
    }


    @Test
    public void testUpdate_issue() {
        System.out.println("update_issue");
        String userid = "";
        String priority = "";
        String issue_id = "";
        String dept = "";
        String sta = "";
        String feedback = "";
        String feedback_rate = "";
        String wd = "";
        int expResult = 0;
        int result = Issue.update_issue(userid, priority, issue_id, dept, sta, feedback, feedback_rate, wd);
        assertEquals(expResult, result);
    }

 
    @Test
    public void testGet_issue() {
        System.out.println("get_issue");
        List<Issue> expResult = null;
        List<Issue> result = Issue.get_issue();
        assertEquals(expResult, result);
    }


    @Test
    public void testGetuserlist() {
        System.out.println("getuserlist");
        List<Issue> expResult = null;
        List<Issue> result = Issue.getuserlist();
        assertEquals(expResult, result);
    }


    @Test
    public void testGetclerklist() {
        System.out.println("getclerklist");
        List<Issue> expResult = null;
        List<Issue> result = Issue.getclerklist();
        assertEquals(expResult, result);
    }

 
    @Test
    public void testGetministerlist() {
        System.out.println("getministerlist");
        List<Issue> expResult = null;
        List<Issue> result = Issue.getministerlist();
        assertEquals(expResult, result);
    }


    @Test
    public void testGetcmchecklist() {
        System.out.println("getcmchecklist");
        List<Issue> expResult = null;
        List<Issue> result = Issue.getcmchecklist();
        assertEquals(expResult, result);
    }
    */
    
}
