package connection;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class dbconnect 
{
public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grs", "root", "admin");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return con;
    }
}	