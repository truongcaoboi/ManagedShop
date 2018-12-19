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
import java.util.*;
import java.sql.*;
import model.Employee;

public class DataEmployee {

    public static Vector<Employee> getAllEmployee() {
        Vector<Employee> ems = new Vector<Employee>();
        String sql = "select * from nhanvien";
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                Employee e = new Employee();
                e.setGioitinh(rs.getInt("gioitinh"));
                e.setHoten(rs.getString("hoten"));
                e.setManv(rs.getInt("manv"));
                e.setTendangnhap(rs.getString("tendangnhap"));
                e.setVaitro(rs.getInt("vaitro"));
                e.setMatkhau(rs.getString("matkhau"));
                ems.add(e);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return ems;
    }

    public static Employee getEmployee(String manv) {
        String sql = "select * from nhanvien where manv=" + manv;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        Employee e = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                e = new Employee();
                e.setGioitinh(rs.getInt("gioitinh"));
                e.setHoten(rs.getString("hoten"));
                e.setManv(rs.getInt("manv"));
                e.setTendangnhap(rs.getString("tendangnhap"));
                e.setVaitro(rs.getInt("vaitro"));
                e.setMatkhau(rs.getString("matkhau"));
            }
        } catch (Exception e1) {
            e1.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return e;
    }

    public static Vector<Employee> searchEmployee(String search) {
        String ma = "";
        if (search.equals("")) {
            ma = "1";
        } else {
            try {
                ma = Integer.parseInt(search) + "";
            } catch (Exception e) {
                ma = "1";
                e.printStackTrace();
            }
        }
        Vector<Employee> ems = new Vector<Employee>();
        String sql = "select * from nhanvien where manv=" + ma + " or hoten like \'%" + search + "%\' or tendangnhap like \'%" + search + "%\'";
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                Employee e = new Employee();
                e.setGioitinh(rs.getInt("gioitinh"));
                e.setHoten(rs.getString("hoten"));
                e.setManv(rs.getInt("manv"));
                e.setTendangnhap(rs.getString("tendangnhap"));
                e.setVaitro(rs.getInt("vaitro"));
                e.setMatkhau(rs.getString("matkhau"));
                ems.add(e);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return ems;
    }

    public static String searchEmployee1(String search) {
        String ma = "";
        if (search.equals("")) {
            ma = "1";
        } else {
            try {
                ma = Integer.parseInt(search) + "";
            } catch (Exception e) {
                ma = "1";
                e.printStackTrace();
            }
        }
        String sql = "select * from nhanvien where manv=" + ma + " or hoten like \'%" + search + "%\' or tendangnhap like \'%" + search + "%\'";
        return sql;
    }

    public static void UpdatePass(String pass, String manv) {
        String sql = "update nhanvien set matkhau=\'" + pass + "\' where manv=" + manv;
        Connection con = null;
        Statement state = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
    }

    public static void UpdateRole(String role, String manv) {
        String sql = "update nhanvien set vaitro=" + role + " where manv=" + manv;
        Connection con = null;
        Statement state = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
    }

    public static void insertEmployee(String tendn, String ht, String role, String gioitinh) {
        String sql = "insert into nhanvien(tendangnhap,hoten,vaitro,gioitinh,matkhau) values(\'" + tendn + "\',\'" + ht + "\'," + role + "," + gioitinh + ",\'123456\')";
        Connection con = null;
        Statement state = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
    }

    public static Employee checkLogin(String user, String pass) {
        Employee e = null;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        String sql="select * from nhanvien where tendangnhap=\'"+user+"\' and matkhau=\'"+pass+"\'";
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs=state.executeQuery(sql);
            if(rs.next()){
                e=new Employee();
                e.setGioitinh(rs.getInt("gioitinh"));
                e.setHoten(rs.getString("hoten"));
                e.setManv(rs.getInt("manv"));
                e.setTendangnhap(rs.getString("tendangnhap"));
                e.setVaitro(rs.getInt("vaitro"));
                e.setMatkhau(rs.getString("matkhau"));
            }
        } catch (Exception e1) {
            e1.printStackTrace();
        } finally {
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return e;
    }
    
    public static void UpdateTK(String tennv,String gioitinh,String manv){
        String sql = "update nhanvien set hoten=\'"+tennv+"\',gioitinh="+gioitinh+" where manv="+manv;
        Connection con = null;
        Statement state = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
    }
}
