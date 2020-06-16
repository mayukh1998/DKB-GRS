/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
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
    
    /*
    @Test
    public void testClerk_view_issue() throws Exception {
        System.out.println("clerk_view_issue");
        Issuemanager instance = new Issuemanager();
        List <Issue> clerklist = Issue.get_issue();
        List<Issue> result = instance.clerk_view_issue();
        List <Issue> expResult = new CopyOnWriteArrayList< Issue >();
        for (Issue i:clerklist)
          {
              Issue clerk = new Issue();
              clerk.setissue_id(i.getissue_id());
              clerk.setsubject(i.getsubject());
              clerk.setdes(i.getdes());
              clerk.setdepartment(i.getdepartment());
              clerk.setdate(i.getdate());
              clerk.setstatus(i.getstatus());
              expResult.add(clerk);
          }
        assertEquals(expResult, result);
    }

   

    
    @Test
    public void testMonitor_issue() throws Exception {
        System.out.println("monitor_issue");
        Issuemanager instance = new Issuemanager();
        List<Issue> result = instance.monitor_issue();
        List <Issue> cmlist = Issue.get_issue();
        List <Issue> expResult = new CopyOnWriteArrayList< Issue >();
        for (Issue i:cmlist)
          {
            Issue cm = new Issue();
            cm.setissue_id(i.getissue_id());
            cm.setsubject(i.getsubject());
            cm.setdes(i.getdes());
            cm.setlocation(i.getlocation());
            cm.setuser(i.getuser());
            cm.setname(i.getname());
            cm.setstatus(i.getstatus());
            cm.setfeedback(i.getfeedback());
            cm.setfeedback_rate(i.getfeedback_rate());
            cm.setdepartment(i.getdepartment());
            cm.setpriority(i.getpriority());
            cm.setphn(i.getphn());
            cm.setemail(i.getemail());
            cm.setdate(i.getdate());
            cm.setminfeed(i.getminfeed());
            expResult.add(cm);
          }
        assertEquals(expResult, result);
    }

    
     */
    
    
    
    @Test
    public void testAct_on_issue() {
        System.out.println("act_on_issue");
        String wd = "Food quality thoroughly checked before distribution.";
        String id = "1100019";
        String phn = "";
        List <Issue> list = Issue.get_issue();
        for (Issue i:list){
        if(i.getissue_id().equals(id)){
            phn=i.getphn();} }
        String expResult = "91"+phn;
        String result = Issuemanager.act_on_issue(wd, id);
        assertEquals(expResult, result);
    }

    
    
    
    
    @Test
    public void testClerk_create_issue() throws Exception {
        int k = 0;
        System.out.println("clerk_create_issue");
        List<Integer> ids = new ArrayList<Integer>();
        List <Issue> list = Issue.get_issue();
        for (Issue i:list){
        ids.add(Integer.parseInt(i.getissue_id())); }
        k = Collections.max(ids,null);
        k = k+1;
        String str = String.valueOf(k);               
        Issue issue = new Issue();
        issue.setissue_id(str);
        issue.setsubject("Empty classrooms");
        issue.setdes("The parents are not sending their children to school. The are making them do odd jobs instead. Sone are engaging into child marriage.");
        issue.setname("Ditipriya Roy");
        issue.setlocation("189/1 Gariahat");
        issue.setstatus("open");
        issue.setuser("109");
        issue.setfeedback(" ");
        issue.setfeedback_rate(" ");
        issue.setdepartment("education");
        issue.setpriority("low");
        issue.setphn("8583992803");
        issue.setemail("me.diti@gmail.com");
        issue.setdate("2020-05-15");
        issue.setminfeed(" ");
        int[] result = Issuemanager.clerk_create_issue(issue);
        int[] expResult = {1,k};
        assertArrayEquals(expResult, result);
    }

  
    
    
    @Test
    public void testAssignissue() {
        System.out.println("assignissue");
        String prior = "high";
        String dept = "food";
        String sta = "assigned";
        String issue_id = "1100021";
        String expResult = issue_id;
        String result = Issuemanager.assignissue(prior, dept, sta, issue_id);
        assertEquals(expResult, result);
    }
    
   
    
    
    @Test
    public void testCloseissue() {
        System.out.println("closeissue");
        String issue_id = "1100013";
        String expResult = "closed";
        String result = Issuemanager.closeissue(issue_id);
        assertEquals(expResult, result);
    }
    
}
