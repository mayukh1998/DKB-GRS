/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;


import java.sql.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Dbconnect
 {  
        private static Connection con = null;
        public static Connection getconnection(){  
        try
        {
        Class.forName("com.mysql.jdbc.Driver");  //locahost:3306
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grs", "mysqldb2018", "mysqldb2018");
        }
        catch(Exception ex){ex.printStackTrace();}  
        return con;  
        }  
    
}
            
    
