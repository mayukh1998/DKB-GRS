
package connection;



import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.*;


public class RegistrationManager
{
    
    
    
    public static int registerUser(String un,String n,String p,String e,String ph,String l)
    {
        int h = 0;
        int k=0;
        List<Integer> ids = new ArrayList<Integer>();
        try{
            List <Issue> list = Issue.getuserlist();
            for (Issue i:list)
                {
                    ids.add(Integer.parseInt(i.getuser()));
                }
                        k = Collections.max(ids,null);
                        k = k+1;
                        h = Issue.insertUser(un, n, p, e, ph, l, k);
        }catch(Exception ex){
		System.out.println("Error during updation"+ex);
		}
       return h;

    }

    
    
    
    
    
    
    public static int registerMinister(String un,String n,String p, String dept)
    {
    int h = 0;
        int k=0;
        List<Integer> ids = new ArrayList<Integer>();
        try{
            List <Issue> list = Issue.getministerlist();
            for (Issue i:list)
                {
                    ids.add(Integer.parseInt(i.getuser()));
                }
                        k = Collections.max(ids,null);
                        k = k+1;
                        h = Issue.insertMinister(un, n, p, dept, k);
        }catch(Exception ex){
		System.out.println("Error during updation"+ex);
		}
       return h;
    }

    
    
    
    
    
    
    
    public static int registerClerk(String un,String n,String p)
    {
       int h = 0;
       int num=0;
       int k=0;
       String cid;
       List<Integer> ids = new ArrayList<Integer>();         
       try{
            List <Issue> list = Issue.getclerklist();
            for (Issue i:list)
                {
                    cid = i.getuser();
                    String[] parts = cid.split("c"); 
                    String fp = parts[1];
                    num = Integer.parseInt(fp);
                    ids.add(num);
                }  
            k = Collections.max(ids,null);
            k = k+1;
            cid = "c"+k ;
            h = Issue.insertClerk(un, n, p, cid);
        }catch(Exception ex){
            System.out.println("Error during updation"+ex);
	}
    return h;
    }
}
