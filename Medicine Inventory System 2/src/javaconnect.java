

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Life
 */
import java.sql.*;
import java.sql.DriverManager;


public class javaconnect { public static Connection getConnetion()
    {
     Connection con =  null;
     
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/medicine","root","");
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
     return con; 
    
}}
