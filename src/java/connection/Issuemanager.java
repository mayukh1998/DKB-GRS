package connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.HttpURLConnection;
import java.net.URLEncoder;      





public class Issuemanager
{
    
    
    
    
    public List < Issue > clerk_view_issue() throws ClassNotFoundException
    {
        List < Issue > al = new ArrayList < Issue > ();
        try {
         ResultSet rs1 = null;
         Connection con = Dbconnect.getconnection();
         Statement st = con.createStatement();
         rs1 = st.executeQuery("select * from issue");
         while (rs1.next()) {
          Issue issue = new Issue();
          issue.setissue_id(rs1.getString(1));
          issue.setsubject(rs1.getString(2));
          issue.setdes(rs1.getString(3));
          issue.setdepartment(rs1.getString(10));
          issue.setdate(rs1.getString(14));
          issue.setstatus(rs1.getString(7));
          al.add(issue);
         }
        } catch (SQLException ex) {
         Logger.getLogger(Usermanager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
     }
    
    
    
    
    
    
    
    
    public List < Issue >  monitor_issue() throws ClassNotFoundException
    {
        List < Issue > al = new ArrayList < Issue > ();
        try {
         ResultSet rs1 = null;
         Connection con = Dbconnect.getconnection();
         Statement st = con.createStatement();
         rs1 = st.executeQuery("select * from issue");
         while (rs1.next()) {
             
          Issue issue = new Issue();
          
          issue.setissue_id(rs1.getString(1));
          issue.setsubject(rs1.getString(2));
          issue.setdes(rs1.getString(3));
          issue.setlocation(rs1.getString(4));
          issue.setuser(rs1.getString(5));
          issue.setname(rs1.getString(6));
          issue.setstatus(rs1.getString(7));
          issue.setfeedback(rs1.getString(8));
          issue.setfeedback_rate(rs1.getString(9));
          issue.setdepartment(rs1.getString(10));
          issue.setpriority(rs1.getString(11));
          issue.setphn(rs1.getString(12));
          issue.setemail(rs1.getString(13));
          issue.setdate(rs1.getString(14));
          issue.setminfeed(rs1.getString(15));
          
          al.add(issue);
         }
        } catch (SQLException ex) {
         Logger.getLogger(Usermanager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }
   
    
    
    
    
    
    
    
    public String act_on_issue(String wd , String id)
    {
        String pr = "low";
        String sta = "resolved";
        String phn = "" ;
        try{
                        Connection con=Dbconnect.getconnection();
                        Statement st = con.createStatement();
                        Statement stmt = con.createStatement();
                        ResultSet rs = null;
                        rs = st.executeQuery("select * from issue where issue_id= '"+id+"'"); 
                        if(rs.next()){
                            phn = rs.getString(12);
                            }
                        stmt.executeUpdate("UPDATE issue SET minfeed = '"+wd+"', status='"+sta+"' WHERE  issue_id = '"+id+"';");
                        phn="91"+phn;        
                        String apiKey = "apikey=" + "D74sYy/S+Ro-VF2TYNdaUukVKGt5fSyz5CAna89h7Y";
                        //new key : EXW1uyd9D9s-aqWngJiMVc6JKVx98z6VjDhHbFVEBO
			String message = "&message=" + "Your Issue has been resolved. Please login to the portal to give your feedback.";
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + phn;
			// Send data
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
    
    
    
    
    
    
    
    
    public int[]  clerk_create_issue(Issue issue) throws ClassNotFoundException
    {
            int h = 0;
            String k;
            int[] ar = new int[2];
            try {

             Connection con = Dbconnect.getconnection();

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

             PreparedStatement ps = con.prepareStatement("insert into issue values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

             ps.setString(1, k);
             ps.setString(2, s);
             ps.setString(3, des);
             ps.setString(4, l);
             ps.setString(5, un);
             ps.setString(6, n);
             ps.setString(7, sta);
             ps.setString(8, fd);
             ps.setString(9, rt);
             ps.setString(10, d);
             ps.setString(11, pr);
             ps.setString(12, ph);
             ps.setString(13, e);
             ps.setString(14, date1);
             ps.setString(15, min);

             h = ps.executeUpdate();

             ar[1] = Integer.parseInt(k);
             ar[0] = h;
            } catch (Exception e1) {
             System.out.println(e1.getMessage());
            }
  return ar;
    }
    
    
    
    
    
    
    
    
    
    public String assignissue(String prior, String dept, String sta, String id)
    {
       String ret ="" ;
       
       try{

                        Connection con=Dbconnect.getconnection();
                        Statement stmt = con.createStatement();
                        ResultSet rs = null;
                        stmt.executeUpdate("UPDATE issue SET priority = '"+prior+"',  Department = '"+dept+"', status='"+sta+"' WHERE  issue_id = '"+id+"';");
                        ret = id;
                }
                catch(Exception e1)
                {
                System.out.println(e1.getMessage());
                }
       return ret; 
    }
    
    
    
    
    
    
    
    
    
    
    public String closeissue(String id)
    {
        String verified="verified";
        String close="close";
        String stat="";
        String s7="";
      try{  
                ResultSet rs=null;
                
                Connection con = Dbconnect.getconnection();
                Statement st = con.createStatement();
                Statement stmt = con.createStatement();
                rs = st.executeQuery("select * from issue where issue_id = '" + id + "'");
                
                
                if (rs.next()) {
                    s7 = rs.getString(7);
                }
                if(s7.equals(verified))
                {
                    stat = close;
                    stmt.executeUpdate("UPDATE issue SET  status='" + close + "' WHERE  issue_id = '" + id + "';");
                }
                else
                {
                    stat = s7;
                }
                } 
      
      catch (Exception e1){
                System.out.println(e1.getMessage());
                }
       return stat; 
    }
    
    
    
}
