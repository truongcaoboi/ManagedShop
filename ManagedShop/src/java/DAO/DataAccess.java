/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author Xuan Truong PC
 */
import java.sql.*;
public class DataAccess {
    private String driver="com.mysql.cj.jdbc.Driver";
    private String url="jdbc:mysql://localhost:3306/javaweb7?autoReconnect=true&useSSL=false&useUnicode=yes&characterEncoding=UTF-8";
    private String user="root";
    private String pass="";
    
    public Connection getConnect(){
        Connection con=null;
        try{
            Class.forName(driver);
            con=DriverManager.getConnection(url,user,pass);
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
    
    public static void CloseConnect(Connection con){
        try{
            if(con!=null){
                con.close();
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public static void CloseStatement(Statement con){
        try{
            if(con!=null){
                con.close();
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public static void CloseResultSet(ResultSet con){
        try{
            if(con!=null){
                con.close();
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
