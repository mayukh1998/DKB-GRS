
package connection;



import java.util.*;



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
    
    
