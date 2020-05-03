package connection;


import java.util.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Usermanager {
    
    
    
    
    
 public List < Issue > user_view_issue(String username) throws ClassNotFoundException {
  List < Issue > al = new ArrayList < Issue > ();
  try {


   ResultSet rs1 = null;
   Connection con = Dbconnect.getconnection();
   Statement st = con.createStatement();
   rs1 = st.executeQuery("select * from issue where user_id = '" + username + "' ");
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








 public int acquireissue(String id, String ui) {
  int res = 0;
  try {
   String first = "";
   String second = "";
   String cid = "";
   String c = "c";

   Connection con = Dbconnect.getconnection();
   Statement st = con.createStatement();
   ResultSet rs = null;
   rs = st.executeQuery("select * from issue where issue_id = '" + id + "'");
   if (rs.next()) {
    cid = rs.getString(5);
    first = cid.substring(0, 1);
    second = cid.substring(1, cid.length());
   }

   if (first.equals(c)) {
    cid = ui;
    PreparedStatement ps = con.prepareStatement("Update issue Set user_id = '" + cid + "' where issue_id = '" + id + "'");
    ps.executeUpdate();
    res = 1;
   } else {
    res = 2;
   }
  } catch (Exception e1) {
   System.out.println(e1.getMessage());
  }
  return res;
 }








 public int[] user_create_issue(Issue issue) throws ClassNotFoundException {
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





 
 

 public int givefeedback(Issue issue) throws ClassNotFoundException {

  int h = 0;
  try {
   String rate, cl, ii, feed;
   Connection con = Dbconnect.getconnection();


   rate = issue.getfeedback_rate();
   ii = issue.getissue_id();
   feed = issue.getfeedback();

   int rt = Integer.parseInt(rate);
   Statement st = con.createStatement();
   Statement st1 = con.createStatement();
   cl = "verified";

   if (rt < 3) {
    cl = "open";
   }

   PreparedStatement ps = con.prepareStatement("Update issue Set feedback = '" + feed + "',feedback_rate = '" + rate + "', status = '" + cl + "' where issue_id = '" + ii + "'");


   h = ps.executeUpdate();
   h = rt;
  } catch (Exception e1) {
   System.out.println(e1.getMessage());
  }
  return h;
 }
}