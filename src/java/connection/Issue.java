package connection;

import java.sql.*;
import java.io.Serializable;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Issue implements Serializable
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
    
    
}	