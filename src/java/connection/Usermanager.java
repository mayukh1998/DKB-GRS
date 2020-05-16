package connection;


import java.util.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;




public class Usermanager {
    
    
    
    
    
 public static List < Issue > user_view_issue(String userid) throws ClassNotFoundException {
        List <Issue> al = Issue.get_issue();
        List <Issue> newlist = new CopyOnWriteArrayList< Issue >();
        for (Issue i:al)
          {
              Issue user = new Issue();
              if(i.getuser().equals(userid)){
              user.setissue_id(i.getissue_id());
              user.setsubject(i.getsubject());
              user.setdes(i.getdes());
              user.setdepartment(i.getdepartment());
              user.setdate(i.getdate());
              user.setstatus(i.getstatus());
              user.setminfeed(i.getminfeed());
              newlist.add(user);
              }
           }
  return newlist;
 }




 
 




 public static int acquireissue(String issue_id, String ui) {
  int res = 0;
  try {
   String first = "";
   String second = "";
   String cid = "";
   String prior="";
   String dept="";
   String status="";
   String feedback="";
   String feedback_rate="";
   String wd = "";
   String c = "c";
   
   List <Issue> al = Issue.get_issue();
                        for (Issue i:al)
                         {
                            if(i.getissue_id().equals(issue_id))
                            {
                                prior = i.getpriority();
                                dept = i.getdepartment();
                                status = i.getstatus();
                                feedback = i.getfeedback();
                                feedback_rate = i.getfeedback_rate();
                                wd = i.getminfeed();
                                cid = i.getuser();
                                first = cid.substring(0, 1);
                                second = cid.substring(1, cid.length());
                            }
                         }
        if (first.equals(c)) {
        cid = ui;
        Issue.update_issue(cid, prior, issue_id, dept, status,feedback, feedback_rate, wd);
        res = 1;
       } else {
        res = 2;
       }
    } catch (Exception e1) {
    System.out.println(e1.getMessage());
    }
  return res;
 }




 
 




 public static int[] user_create_issue(Issue issue) throws ClassNotFoundException {
  int h = 0;
  String k;
  int[] ar = new int[2];
  try {
     String s, des, l, n, un, sta, fd, rt, d, pr, ph, e, date1, min;

        k = issue.getissue_id();
        s = issue.getsubject();
        des = issue.getdes();
        l = issue.getlocation();
        un = issue.getuser();
        n = issue.getname();
        sta = issue.getstatus();
        fd = issue.getfeedback();
        rt = issue.getfeedback_rate();
        d = issue.getdepartment();
        pr = issue.getpriority();
        ph = issue.getphn();
        e = issue.getemail();
        date1 = issue.getdate();
        min = issue.getminfeed();
        
        
        h = Issue.insert_issue(k,s,des,l,un,n,sta,fd,rt,d,pr,ph,e,date1,min);

   ar[1] = Integer.parseInt(k);
   ar[0] = h;
  } catch (Exception e1) {
   System.out.println(e1.getMessage());
  }
  return ar;
 }





 
 

 public static int givefeedback(Issue issue) throws ClassNotFoundException {

  int h = 0;
  try {
   String feedback_rate, status, issue_id, feedback,user,prior,dept;
   user="";
   prior="";
   dept="";
   feedback_rate = issue.getfeedback_rate();
   issue_id = issue.getissue_id();
   feedback = issue.getfeedback();
   int rt = Integer.parseInt(feedback_rate);
   status = "verified";
   List <Issue> al = Issue.get_issue();
        for (Issue i: al) {
            if (i.getissue_id().equals(issue_id)) {
             user = i.getuser();
             prior = i.getpriority();
             dept = i.getdepartment();
            }
           }
   if (rt < 3) {
    status = "open";
   }
   h = Issue.update_issue(user, prior, issue_id, dept, status, feedback, feedback_rate, issue_id);
   h = rt;
  } catch (Exception e1) {
   System.out.println(e1.getMessage());
  }
  return h;
 }
 
 
}