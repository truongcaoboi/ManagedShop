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
import model.Comsumer;
import java.sql.*;

public class DataKH {

    public static Vector<Comsumer> getAllKH() {
        Vector<Comsumer> coms = new Vector<Comsumer>();
        String s1="select count(*) from hoadon where k1.makh=hoadon.makh and hoadon.trangthai=1";
        String s2="select count(*) from hoadon where k1.makh=hoadon.makh and hoadon.trangthai=2";
        String s3="select count(*) from hoadon where k1.makh=hoadon.makh and hoadon.trangthai=3";
        String sql = "select k1.*,("+s1+") moitao,("+s2+") thuchien,("+s3+") hoanthanh from khachhang k1";
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con=new DataAccess().getConnect();
            state=con.createStatement();
            rs=state.executeQuery(sql);
            while(rs.next()){
                Comsumer c=new Comsumer();
                c.setDiachi(rs.getString("diachi"));
                c.setMakh(rs.getInt("makh"));
                c.setHoten(rs.getString("hoten"));
                c.setDiemso(rs.getDouble("diemso"));
                c.setDienthoai(rs.getString("dienthoai"));
                c.setEmail(rs.getString("email"));
                c.setMatkhau(rs.getString("matkhau"));
                c.setGioitinh(rs.getInt("gioitinh"));
                c.setDonmoi(rs.getInt("moitao"));
                c.setDondangthuchien(rs.getInt("thuchien"));
                c.setDondahoanthanh(rs.getInt("hoanthanh"));
                coms.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return coms;
    }
    
    public static Comsumer getKH(String makh){
        Comsumer c = null;
        String s1="select count(*) from hoadon where k1.makh=hoadon.makh and hoadon.trangthai=1";
        String s2="select count(*) from hoadon where k1.makh=hoadon.makh and hoadon.trangthai=2";
        String s3="select count(*) from hoadon where k1.makh=hoadon.makh and hoadon.trangthai=3";
        String sql = "select k1.*,("+s1+") moitao,("+s2+") thuchien,("+s3+") hoanthanh from khachhang k1 where k1.makh="+makh;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con=new DataAccess().getConnect();
            state=con.createStatement();
            rs=state.executeQuery(sql);
            while(rs.next()){
                c=new Comsumer();
                c.setDiachi(rs.getString("diachi"));
                c.setMakh(rs.getInt("makh"));
                c.setHoten(rs.getString("hoten"));
                c.setDiemso(rs.getDouble("diemso"));
                c.setDienthoai(rs.getString("dienthoai"));
                c.setEmail(rs.getString("email"));
                c.setMatkhau(rs.getString("matkhau"));
                c.setGioitinh(rs.getInt("gioitinh"));
                c.setDonmoi(rs.getInt("moitao"));
                c.setDondangthuchien(rs.getInt("thuchien"));
                c.setDondahoanthanh(rs.getInt("hoanthanh"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return c;
    }
    
    public static Vector<Comsumer> Search(String txtSearch){
        String makh="";
        try{
            makh=Integer.parseInt(txtSearch)+"";
        }catch(Exception e){
            makh="0";
            e.printStackTrace();
        }
        Vector<Comsumer> coms = new Vector<Comsumer>();
        String s1="select count(*) from hoadon where k1.makh=hoadon.makh and hoadon.trangthai=1";
        String s2="select count(*) from hoadon where k1.makh=hoadon.makh and hoadon.trangthai=2";
        String s3="select count(*) from hoadon where k1.makh=hoadon.makh and hoadon.trangthai=3";
        String sql = "select k1.*,("+s1+") moitao,("+s2+") thuchien,("+s3+") hoanthanh from khachhang k1 where k1.makh="+makh+" or hoten like \'%"+txtSearch+"%\' or dienthoai like"
                + "\'%"+txtSearch+"%\' or email like \'%"+txtSearch+"%\'";
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con=new DataAccess().getConnect();
            state=con.createStatement();
            rs=state.executeQuery(sql);
            while(rs.next()){
                Comsumer c=new Comsumer();
                c.setDiachi(rs.getString("diachi"));
                c.setMakh(rs.getInt("makh"));
                c.setHoten(rs.getString("hoten"));
                c.setDiemso(rs.getDouble("diemso"));
                c.setDienthoai(rs.getString("dienthoai"));
                c.setEmail(rs.getString("email"));
                c.setMatkhau(rs.getString("matkhau"));
                c.setGioitinh(rs.getInt("gioitinh"));
                c.setDonmoi(rs.getInt("moitao"));
                c.setDondangthuchien(rs.getInt("thuchien"));
                c.setDondahoanthanh(rs.getInt("hoanthanh"));
                coms.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return coms;
    }
}
