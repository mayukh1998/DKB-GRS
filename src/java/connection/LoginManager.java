
package connection;



import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import java.util.concurrent.CopyOnWriteArrayList;



public class LoginManager  
{
    
    
    
    public static String UserLogin(String username,String password)
    {
        String status = null;
        String userid= null;
        List <Issue> userlist = Issue.getuserlist();
        outer:
        for (Issue i:userlist)
          {
              if(i.getusername().equals(username))
            {
                if(i.getpwd().equals(password))
                    {
                    userid = i.getuser();
                    status = userid;
                    break outer;
                }
            }
              else{
                  status = "fail";
              }
        }
        return status;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    public static String MinisterLogin(String username,String password)
    {
        String status = null;
        String userid= null;
        String verifyuser=null;
        List <Issue> userlist = Issue.getministerlist();
        outer:
        for (Issue i:userlist)
          {
              if(i.getusername().equals(username))
            {
                if(i.getpwd().equals(password))
                    {
                    userid = i.getuser();
                    status = userid;
                    break outer;
                }
            }
              else{
                  status = "fail";
              }
        }
        return status;
    }
    
    
    
    
    
    
    
    
    public static String ClerkLogin(String username,String password)
    {
        String status = null;
        String userid= null;
        List <Issue> clerklist = Issue.getclerklist();
        outer:
        for (Issue i:clerklist)
          {
              if(i.getusername().equals(username))
            {
                if(i.getpwd().equals(password))
                    {
                    userid = i.getuser();
                    status = userid;
                    break outer;
                }
            }
              else{
                  status = "fail";
              }
        }
        return status;
    }
    
    
    
    
    
    
    
    
    
    
    public static boolean CMLogin(String username,String password)
    {
       boolean status = false;
        String verifyuser=null;
        List <Issue> cmlist = Issue.getcmchecklist();
        outer:
        for (Issue i:cmlist)
          {
              if(i.getusername().equals(username))
            {
                if(i.getpwd().equals(password))
                    {
                    verifyuser=i.getusername();
                    status = true;
                    break outer;
                }
            }
              else{
                  status = false;
              }
        }
        return status;
    }
    
    
}
    
    
=======



public class LoginManager  
{
    
    
    
    public boolean CMLogin(String username,String password)
    {
        boolean status = false;
        try{
        
        String user = null;
        Connection con = Dbconnect.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from cm where username= '"+username+"' and password='"+password+"'");
        status = rs.next();
        }
        catch(Exception e)
        {
        System.out.println("Error in Login "+e.getMessage());
        }
        return status;
    }
    
    
    
    
    public boolean MinisterLogin(String username,String password)
    {
       boolean status = false;
        try{
        
        String user = null;
        Connection con = Dbconnect.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from minister where username= '"+username+"' and password='"+password+"'");
        status = rs.next();
        }
        catch(Exception e)
        {
        System.out.println("Error in Login "+e.getMessage());
        }
        return status; 
    }
    
    
    
    
    
    
    public boolean ClerkLogin(String username,String password)
    {
       boolean status = false;
        try{
        
        String user = null;
        Connection con = Dbconnect.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from clerk where user_name= '"+username+"' and password='"+password+"'");
        status = rs.next();
        }
        catch(Exception e)
        {
        System.out.println("Error in Login "+e.getMessage());
        }
        return status; 
    }
    
    
    
    
    
    public boolean UserLogin(String username,String password)
    {
        boolean status = false;
        try{
        
        String user = null;
        Connection con = Dbconnect.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user where user_name= '"+username+"' and password='"+password+"'");
        status = rs.next();
        }
        catch(Exception e)
        {
        System.out.println("Error in Login "+e.getMessage());
        }
        return status;
    }
}
>>>>>>> origin/master
