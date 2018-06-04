package classes;


import classes.myConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dell
 */
public class arraylist1 {
    
    int sid,mid;
    String sname,p_category,problem;
    boolean pending,read,waiting,completed;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getP_category() {
        return p_category;
    }

    public void setP_category(String p_category) {
        this.p_category = p_category;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    public boolean isPending() {
        return pending;
    }

    public void setPending(boolean pending) {
        this.pending = pending;
    }

    public boolean isRead() {
        return read;
    }

    public void setRead(boolean read) {
        this.read = read;
    }

    public boolean isWaiting() {
        return waiting;
    }

    public void setWaiting(boolean waiting) {
        this.waiting = waiting;
    }

    public boolean isCompleted() {
        return completed;
    }

    public void setCompleted(boolean completed) {
        this.completed = completed;
    }
    
    public void allset()
    {
        try {
            ArrayList<arraylist1> al=new ArrayList<arraylist1>();
            String q = "select * from tbissues";
            myConnection obj = new myConnection();
            PreparedStatement pst = obj.db.prepareStatement(q);
            ResultSet rs;
            rs = pst.executeQuery();
            while(rs.next())
            {
                 arraylist1 obj1=new arraylist1();
                 int s = rs.getInt("sid");
                 int m = rs.getInt("mid");
                 String sn = rs.getString("sname");
                 String pcat = rs.getString("p_category");
                 String pr = rs.getString("problem");
                 boolean pen = rs.getBoolean("pending");
                 boolean re = rs.getBoolean("read");
                 boolean wa = rs.getBoolean("waiting");
                 boolean co = rs.getBoolean("completed");
                 
                 obj1.setSid(s);
                 obj1.setMid(m);
                 obj1.setSname(sn);
                 obj1.setP_category(pcat);
                 obj1.setProblem(pr);
                 obj1.setPending(pen);
                 obj1.setRead(re);
                 obj1.setWaiting(wa);
                 obj1.setCompleted(co);
                 
                 al.add(obj1);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(arraylist1.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

}
    
    