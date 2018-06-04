/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Dell
 */
public class myConnection {
    public Connection db;
    
    public myConnection()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            db=DriverManager.getConnection("jdbc:mysql://localhost/practice", "root", "");
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
    }    
}

