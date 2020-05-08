
package connection;



import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



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
