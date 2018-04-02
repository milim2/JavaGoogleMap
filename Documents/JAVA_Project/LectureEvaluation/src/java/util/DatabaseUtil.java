/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;
import java.sql.*;
import java.sql.DriverManager;

/**
 *
 * @author irene
 */
public class DatabaseUtil {
    
    public static Connection getConnection(){
        try{
            String dbURL = "jdbc:mysql://localhost:3306/LectureEvaluation";
            String dbID = "root";
            String dbPassword = "root";
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(dbURL, dbID, dbPassword);
        } catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}

