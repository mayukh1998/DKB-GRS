
package connection;

import java.sql.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author mayukh
 */ 
    
    

public class Dbconnect
 {  
        private static Connection con = null;
        public static Connection getconnection(){  
        try
        {
        Class.forName("com.mysql.jdbc.Driver");  //localhost:3306/ 
        //
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grs", "root", "admin");
        }
        catch(Exception ex){ex.printStackTrace();}  
        return con;  
    }  
    
}