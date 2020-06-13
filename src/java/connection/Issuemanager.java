package connection;


import java.util.List;
import java.util.*;
import java.io.*;
import java.net.URL;
import java.net.HttpURLConnection;
import java.net.URLEncoder;      
import java.util.concurrent.CopyOnWriteArrayList;





public class Issuemanager
{
    
    
    
    
    public List < Issue > clerk_view_issue() throws ClassNotFoundException
    {
        List <Issue> clerklist = Issue.get_issue();
        List <Issue> newlist = new CopyOnWriteArrayList< Issue >();
        for (Issue i:clerklist)
          {
              Issue clerk = new Issue();
              clerk.setissue_id(i.getissue_id());
              clerk.setsubject(i.getsubject());
              clerk.setdes(i.getdes());
              clerk.setdepartment(i.getdepartment());
              clerk.setdate(i.getdate());
              clerk.setstatus(i.getstatus());
              newlist.add(clerk);
          }
        return newlist;
     }
    
    
    
    
    
    
    
    
    public List < Issue >  monitor_issue() throws ClassNotFoundException
    {
        List <Issue> list = Issue.get_issue();
        List <Issue> newlist = new CopyOnWriteArrayList< Issue >();
        for (Issue i:list)
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
            
            newlist.add(cm);
          }
        return newlist;
    }
   
    
    
    
    
    
    
    
    
    
    public static String act_on_issue(String wd , String id)
    {
        String prior = "";
        String sta = "resolved";
        String user = "";
        String phn = "" ;
        String dept="";
        String feedback="";
        String feedback_rate="";
        try{
                        List <Issue> al = Issue.get_issue();
                        for (Issue i:al)
                         {
                            if(i.getissue_id().equals(id))
                            {
                            user = i.getuser();
                            phn = i.getphn();
                            prior = i.getpriority();
                            dept = i.getdepartment();
                            feedback = i.getfeedback();
                            feedback_rate = i.getfeedback_rate();
                            }
                         }
                        int h = Issue.update_issue(user, prior, id, dept, sta, feedback, feedback_rate, wd);

                        phn="91"+phn;        
                        String apiKey = "apikey=" + "EXW1uyd9D9s-Qv2hLuQWaQl3qoBDQyAeIAg6IexnE4";
                        //new key : EXW1uyd9D9s-aqWngJiMVc6JKVx98z6VjDhHbFVEBO
			String message = "&message=" + "Your Issue has been resolved. Please login to the portal to give your feedback.";
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + phn;
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close(); 
        }
       catch(Exception e1){
                System.out.println(e1.getMessage());
                }
       return phn; 
    }
    
    
    
    
    
    
    
    
    
    
    
    public static int[]  clerk_create_issue(Issue issue) throws ClassNotFoundException
    {
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
    
    
    
    
    
    
    
    
    
    public static String assignissue(String prior, String dept, String sta, String issue_id)
    {
        String ret ="" ;
        String user = "";
        String feedback="";
        String feedback_rate="";
        String wd = "";
       try{
        List <Issue> al = Issue.get_issue();
                        for (Issue i:al)
                         {
                            if(i.getissue_id().equals(issue_id))
                            {
                                feedback = i.getfeedback();
                                feedback_rate = i.getfeedback_rate();
                                wd = i.getminfeed();
                                user = i.getuser();
                            }
                         }
                        Issue.update_issue(user, prior, issue_id, dept, sta, feedback, feedback_rate, wd);
                        ret = issue_id;
                }
                catch(Exception e1)
                {
                System.out.println(e1.getMessage());
                }
       return ret; 
    }
    
    
    
    
    
    
    
    
    
    
    public static String closeissue(String issue_id)
    {
        String verified="verified";
        String closed="closed";
        String stat="";
        String user="";
        String status="";
        String prior="";
        String dept="";
        String feedback="";
        String feedback_rate="";
        String wd="";
        
      try{  
            List <Issue> al = Issue.get_issue();
                for (Issue i:al)
                    {
                    if(i.getissue_id().equals(issue_id))
                    {
                        user = i.getuser();
                        prior = i.getpriority();
                        dept = i.getdepartment();
                        status = i.getstatus();
                        feedback = i.getfeedback();
                        feedback_rate = i.getfeedback_rate();
                        wd = i.getminfeed();
                            }
                }                
                
                if(status.equals(verified))
                {
                    stat = closed;
                    Issue.update_issue(user, prior, issue_id, dept, stat, feedback, feedback_rate, wd);
                    }
                else
                {
                    stat = status;
                }
                } 
      
      catch (Exception e1){
                System.out.println(e1.getMessage());
                }
       return stat; 
    }
    
    
    
}
