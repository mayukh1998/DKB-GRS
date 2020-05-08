
package connection;





import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class RegistrationManager
{
    
    
    
    public int registerUser(String un,String n,String p,String e,String ph,String l)
    {
        int h = 0;
        int k=0;
         try{

                        Connection con=Dbconnect.getconnection();
                        Statement st = con.createStatement();
                        ResultSet rs = null;
                        rs = st.executeQuery("select * from user ORDER BY user_id DESC");
                        if(rs.next()){
                            k = rs.getInt(5);
                            }
                        k = k+1;

                        PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?)");

                        ps.setString(1,e);
                        ps.setString(2,un);
                        ps.setString(3,p);
                        ps.setString(4,n);
                        ps.setInt(5,k);
                        ps.setString(6,ph);
                        ps.setString(7,l);

                        h = ps.executeUpdate();
         }catch(Exception ex){
		System.out.println("Error during updation"+ex);
		}
       return h;

    }

    
    
    
    
    
    
    public int registerMinister(String un,String n,String p, String dept)
    {
       int h = 0;
        int k=0;
         try{
                        Connection con=Dbconnect.getconnection();
                        Statement st = con.createStatement();
                        ResultSet rs = null;
                        rs = st.executeQuery("select * from minister ORDER BY min_id DESC");
                        if(rs.next()){
                            k = rs.getInt(5);
                            }
                        k = k+1;
                        PreparedStatement ps = con.prepareStatement("insert into minister values(?,?,?,?,?)");

                        ps.setString(1,un);
                        ps.setString(2,p);
                        ps.setInt(3,k);
                        ps.setString(4,n);
                        ps.setString(5,dept);
                        
                        h = ps.executeUpdate();
                }catch(Exception ex){
		System.out.println("Error during updation"+ex);
		}
       return h;
    }

    
    
    
    
    
    
    
    public int registerClerk(String un,String n,String p)
    {

       int h = 0;
       int k=0;
       String cid;
       try{
                        Connection con=Dbconnect.getconnection();
                        Statement st = con.createStatement();
                        ResultSet rs = null;
                        rs = st.executeQuery("select * from clerk ORDER BY clerk_id DESC");
                        if(rs.next()){
                            cid = rs.getString(1);
                            String[] parts = cid.split("c"); 
                            String fp = parts[1];
                            k = Integer.parseInt(fp);
                            }
                        k = k+1;
                        cid = "c"+k ;
                        PreparedStatement ps = con.prepareStatement("insert into clerk values(?,?,?,?)");

                        ps.setString(1,cid);
                        ps.setString(2,n);
                        ps.setString(3,un);
                        ps.setString(4,p);
                        
                        h = ps.executeUpdate();
                }catch(Exception ex){
		System.out.println("Error during updation"+ex);
		}
       return h;
    }
    
    
}
