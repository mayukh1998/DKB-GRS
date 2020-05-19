package connection;


import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;    
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Issue
{
    
    private String issue_id;
    private String subject;
    private String description;
    private String name;
    private String status;
    private String feedback;
    private String feedback_rate;
    private String department;
    private String location;
    private String priority;
    private String phn;
    private String email;
    private String date;
    private String minfeed;
    private String user_id;
    private String un;
    private String pwd;
    
    
    
    public String getissue_id() {
        return issue_id;
    }
    public void setissue_id(String issue_id) {
        this.issue_id = issue_id;
    }
    public String getsubject() {
        return subject;
    }
    public void setsubject(String subject) {
        this.subject = subject;
    }
    public String getdes() {
        return description;
    }
    public void setdes(String description) {
        this.description = description;
    }
    public String getname() {
        return name;
    }
    public void setname(String name) {
        this.name = name;
    }
    public String getuser() {
        return user_id;
    }
    public void setuser(String user_id) {
        this.user_id = user_id;
    }
    public String getstatus() {
        return status;
    }
    public void setstatus(String status) {
        this.status = status;
    }
    
    public String getfeedback() {
        return feedback;
    }
    public void setfeedback(String feedback) {
        this.feedback = feedback;
    }
    public String getfeedback_rate() {
        return feedback_rate;
    }
    public void setfeedback_rate(String feedback_rate) {
        this.feedback_rate = feedback_rate;
    }
    
    public String getdepartment() {
        return department;
    }
    public void setdepartment(String department) {
        this.department = department;
    }
    
    public String getpriority() {
        return priority;
    }
    public void setpriority(String priority) {
        this.priority = priority;
    }
    public String getphn() {
        return phn;
    }
    public void setphn(String phn) {
        this.phn = phn;
    }
    public String getlocation() {
        return location;
    }
    public void setlocation(String location) {
        this.location = location;
    }
    public String getemail() {
        return email;
    }
    public void setemail(String email) {
        this.email = email;
    }  
    public String getdate() {
        return date;
    }
    public void setdate(String date) {
        this.date = date;
    }
    public String getminfeed() {
        return minfeed;
    }
    public void setminfeed(String minfeed) {
        this.minfeed = minfeed;
    }
    public String getusername() {
        return un;
    }
    public void setusername(String un) {
        this.un = un;
    }
    public String getpwd() {
        return pwd;
    }
    public void setpwd(String pwd) {
        this.pwd = pwd;
    }
    
    
    
    
    
    
    
   
    
    
    
    
    
    public static int insertClerk(String un,String n,String p, String cid){
        int h=0;
        try{
            Connection conn = Dbconnect.getconnection();
            PreparedStatement ps = conn.prepareStatement("insert into clerk values(?,?,?,?)");                
                ps.setString(1,cid);
                ps.setString(2,n);
                ps.setString(3,un);
                ps.setString(4,p);
                h = ps.executeUpdate();
            conn.close();
        }
        catch(SQLException ex) {
         Logger.getLogger(Usermanager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return h;
    }
    
    
  
    
    
    
    
    
    
    public static int insertUser(String un,String n,String p,String e,String ph,String l, int k){
        int h=0;
        try{
        Connection con = Dbconnect.getconnection();
        PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?)");
                        ps.setString(1,e);
                        ps.setString(2,un);
                        ps.setString(3,p);
                        ps.setString(4,n);
                        ps.setInt(5,k);
                        ps.setString(6,ph);
                        ps.setString(7,l);
                        h = ps.executeUpdate();
            con.close();
        }
        catch(SQLException ex) {
         Logger.getLogger(Usermanager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return h;
    }
    
    
    
    
    
    
    
    
    
    
    
    public static int insertMinister(String un,String n,String p, String dept, int k){
        int h=0;
        try{
            Connection con = Dbconnect.getconnection();
            PreparedStatement ps = con.prepareStatement("insert into minister values(?,?,?,?,?)");
                ps.setString(1,un);
                ps.setString(2,p);
                ps.setInt(3,k);
                ps.setString(4,n);
                ps.setString(5,dept);
            h = ps.executeUpdate();
            con.close();
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return h;
    }
    
    
    
    
    
    
    
    
    
    public static int insert_issue(String k,String s,String des,String l,String un,String n,String sta, String fd,String rt,String d,String pr,String ph,String e,String date1,String min )
    {
        int result=0;
        try{
            Connection con = Dbconnect.getconnection();
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

             result = ps.executeUpdate();
            con.close(); 
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        
        return result;
    }
    
    
    
    
    
    
    
    
    
    
    public static int update_issue(String userid, String priority, String issue_id, String dept, String sta,String feedback, String feedback_rate, String wd)
    {
        int h = 0;
        try{
            Connection con=Dbconnect.getconnection();
            Statement stmt = con.createStatement();
            h = stmt.executeUpdate("UPDATE issue SET user_id= '"+userid+"', priority = '"+priority+"',  Department = '"+dept+"', status = '"+sta+"',feedback = '"+feedback+"', feedback_rate = '"+feedback_rate+"', minfeed = '"+wd+"' WHERE  issue_id = '"+issue_id+"';");
            con.close();
        }
        catch(SQLException ex) {
        Logger.getLogger(Usermanager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return h;
    }
    
    
    
    
    
    
    
    
    
  public static List < Issue > get_issue()
    {
        List < Issue > al = new CopyOnWriteArrayList< Issue >();
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
   
  
  
  
  
  
  
  
  
  
  
  
  
  
    public static List < Issue > getuserlist()
    {
        List < Issue > userlist = new CopyOnWriteArrayList< Issue >();
        try{
        ResultSet rs = null;
        Connection con = Dbconnect.getconnection();
        Statement st = con.createStatement();
        rs = st.executeQuery("select * from user");
        while(rs.next()){
            Issue user = new Issue(); 
            user.setemail(rs.getString(1));
            user.setusername(rs.getString(2));
            user.setpwd(rs.getString(3));
            user.setname(rs.getString(4));
            user.setuser(rs.getString(5));
            user.setphn(rs.getString(6));
            user.setlocation(rs.getString(7));
            userlist.add(user);
        }
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return userlist;
    }
    
    
    
    
    
    
    
    
    public static List < Issue > getclerklist(){
        int k=0;
        List < Issue > clerklist = new CopyOnWriteArrayList< Issue >();
        try{
        ResultSet rs = null;
        Connection con = Dbconnect.getconnection();
        Statement st = con.createStatement();
        rs = st.executeQuery("select * from clerk");
        while(rs.next()){
                Issue clerk = new Issue(); 
                clerk.setusername(rs.getString(3));
                clerk.setpwd(rs.getString(4));
                clerk.setname(rs.getString(2));
                clerk.setuser(rs.getString(1));
                clerklist.add(clerk);
            }
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return clerklist;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    public static List < Issue > getministerlist(){
        List < Issue > ministerlist = new CopyOnWriteArrayList< Issue >();
        try{
        ResultSet rs = null;
        Connection con = Dbconnect.getconnection();
        Statement st = con.createStatement();
        rs = st.executeQuery("select * from minister");
        while(rs.next()){
            Issue minister = new Issue();
            minister.setusername(rs.getString(1));
            minister.setpwd(rs.getString(2));
            minister.setname(rs.getString(4));
            minister.setuser(rs.getString(3));
            minister.setdepartment(rs.getString(5));
            ministerlist.add(minister);
        }
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return ministerlist;
    }
    
  
    
    
    
    
    
    
    
    public static List < Issue > getcmchecklist(){
        int k=0;
        String cid;
        List < Issue > cmlist = new CopyOnWriteArrayList< Issue >();
        try{
        ResultSet rs = null;
        Connection con = Dbconnect.getconnection();
        Statement st = con.createStatement();
        rs = st.executeQuery("select * from cm");
        while(rs.next()){
                cid = rs.getString(1);
                Issue cm = new Issue(); 
                cm.setusername(rs.getString(1));
                cm.setpwd(rs.getString(2));
                cmlist.add(cm);
            }
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return cmlist;
    }
    
    
    
}	


