/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
//RANK() OVER (
//        ORDER BY val
//    ) my_rank

/**
 *
 * @author Xuan Truong PC
 */
import model.*;
import java.sql.*;
import java.util.*;

public class Data {

    public Vector<Product> getProducts(int ma, String name, String kichCo, String mau, int ncc, int loai) {
        Vector<Product> products = new Vector<Product>();
        String sql = "select p.*, n.tennhacungcap name,t.tenloai tl from sanpham p,nhacungcap n,loaisanpham t where p.manhacungcap=n.manhacungcap and p.maloaisp=t.maloaisp";
        if (ma > 0) {
            sql += " and p.masp=" + ma;
        }
        if (!name.equals("")) {
            sql += " and p.tensanpham like \'%" + name + "%\'";
        }
        if (!kichCo.equals("")) {
            sql += " and (p.kichco like \'" + kichCo + "%\' or p.kichco like \'%,"+kichCo+"%\')";
        }
        if (!mau.equals("")) {
            sql += " and p.mau=\'" + mau.substring(0) + "\'";
        }
        if (ncc > 0) {
            sql += " and p.manhacungcap=" + ncc;
        }
        if (loai > 0) {
            sql += " and p.maloaisp=" + loai;
        }
        System.out.print(sql);
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                Product p = new Product();
                p.setGia(rs.getDouble("gia"));
                p.setHinhAnh(rs.getString("hinhanh"));
                p.setKichCo(rs.getString("kichco"));
                p.setMaSP(rs.getInt("masp"));
                p.setLoaiSP(rs.getInt("maloaisp"));
                p.setMau(rs.getString("mau"));
                p.setMoTa(rs.getString("mota"));
                p.setNhacc(rs.getInt("manhacungcap"));
                p.setSoLuong(rs.getInt("soluongtonkho"));
                p.setTenSP(rs.getString("tensanpham"));
                p.setTenloaisp(rs.getString("tl"));
                p.setTenncc(rs.getString("name"));
                products.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return products;
    }

    public String getProducts1(int ma, String name, String kichCo, String mau, int ncc, int loai) {
        Vector<Product> products = new Vector<Product>();
        String sql = "select p.*, n.tennhacungcap name,t.tenloai tl from sanpham p,nhacungcap n,loaisanpham t where p.manhacungcap=n.manhacungcap and p.maloaisp=t.maloaisp";
        if (ma > 0) {
            sql += " and p.masp=" + ma;
        }
        if (!name.equals("")) {
            sql += " and p.tensanpham like \'%" + name + "%\'";
        }
        if (!kichCo.equals("")) {
            sql += " and (p.kichco like \'" + kichCo + "%\' or p.kichco like \'%,"+kichCo+"%\')";
        }
        if (!mau.equals("")) {
            sql += " and p.mau=\'" + mau.substring(0) + "\'";
        }
        if (ncc > 0) {
            sql += " and p.manhacungcap=" + ncc;
        }
        if (loai > 0) {
            sql += " and p.maloaisp=" + loai;
        }
        sql+=" order by p.id";
        System.out.print(sql);
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                Product p = new Product();
                p.setGia(rs.getDouble("gia"));
                p.setHinhAnh(rs.getString("hinhanh"));
                p.setKichCo(rs.getString("kichco"));
                p.setMaSP(rs.getInt("masp"));
                p.setLoaiSP(rs.getInt("maloaisp"));
                p.setMau(rs.getString("mau"));
                p.setMoTa(rs.getString("mota"));
                p.setNhacc(rs.getInt("manhacungcap"));
                p.setSoLuong(rs.getInt("soluongtonkho"));
                p.setTenSP(rs.getString("tensanpham"));
                p.setTenloaisp(rs.getString("tl"));
                p.setTenncc(rs.getString("name"));
                products.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return sql;
    }

    public Vector<Suplier> getSupliers() {
        String sql = "select * from nhacungcap";
        Vector<Suplier> supliers = new Vector<Suplier>();
        try {

        } catch (Exception e) {
            e.printStackTrace();
        }
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                Suplier s = new Suplier();
                s.setMa(rs.getInt("manhacungcap"));
                s.setDiachi(rs.getString("diachi"));
                s.setEmail(rs.getString("email"));
                s.setMaSoThue(rs.getString("masothue"));
                s.setTen(rs.getString("tennhacungcap"));
                s.setDienthoai(rs.getString("dienthoai"));
                supliers.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return supliers;
    }

    public Vector<TypeProduct> getTypes() {
        String sql = "select * from loaisanpham";
        Vector<TypeProduct> types = new Vector<TypeProduct>();
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                TypeProduct t = new TypeProduct();
                t.setMa(rs.getInt("maloaisp"));
                t.setName(rs.getString("tenloai"));
                types.add(t);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return types;
    }

    public Vector<String> getMaus() {
        String sql = "select DISTINCT mau  from sanpham";
        Vector<String> maus = new Vector<String>();
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                maus.add(rs.getString("mau"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return maus;
    }

    public Product getProduct(String id) {
        String sql = "select p.*, n.tennhacungcap name,t.tenloai tl from sanpham p,nhacungcap n,loaisanpham t where p.manhacungcap=n.manhacungcap and p.maloaisp=t.maloaisp and p.masp="+id;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        Product p = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs = state.executeQuery(sql);
            while (rs.next()) {
                p = new Product();
                p.setGia(rs.getDouble("gia"));
                p.setHinhAnh(rs.getString("hinhanh"));
                p.setKichCo(rs.getString("kichco"));
                p.setMaSP(rs.getInt("masp"));
                p.setLoaiSP(rs.getInt("maloaisp"));
                p.setMau(rs.getString("mau"));
                p.setMoTa(rs.getString("mota"));
                p.setNhacc(rs.getInt("manhacungcap"));
                p.setSoLuong(rs.getInt("soluongtonkho"));
                p.setTenSP(rs.getString("tensanpham"));
                p.setTenloaisp(rs.getString("tl"));
                p.setTenncc(rs.getString("name"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return p;
    }
    
    public String UpdateProduct(String ma,String ten,String gia,String soluong,String mota,String hinh,String kc,String ncc,String loai,String mau){
        String sql="update sanpham set tensanpham=\'"+ten+"\',gia="+gia+",soluongtonkho="+soluong+",hinhanh=\'"+hinh+"\',mota=\'"+mota+"\',kichco=\'"+kc+"\',manhacungcap="+ncc+",maloaisp="+loai+",mau=\'"+mau+"\' where masp="+ma;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        Product p = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return sql;
    }
    
    
    public String InsertProduct(String ten,String gia,String soluong,String mota,String hinh,String ncc,String loai,String mau,String kic){
        String sql="insert into sanpham(tensanpham,gia,soluongtonkho,mota,hinhanh,manhacungcap,maloaisp,mau,kichco) values("
                + "\'"+ten+"\',"+gia+","+soluong+",\'"+mota+"\',\'"+hinh+"\',"+ncc+","+loai+",\'"+mau+"\',\'"+kic+"\')";
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        Product p = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return sql;
    }
    
    public String InsertType(String ten){
        String sql="insert into loaisanpham(tenloai) values(\'"+ten+"\')";
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        Product p = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return sql;
    }
    
    public Vector<Suplier> getSupliers(String ten,String mathue,String phone,String ma){
        Vector<Suplier>supliers=new Vector<Suplier>();
        String sql="select * from nhacungcap where manhacungcap>0";
        int x=0;
        try{
            x=Integer.parseInt(ma);
        }catch(Exception e){
            x=0;
        }
        if(x>0){
            sql+=" and manhacungcap="+ma;
        }
        if(!ten.equals("")){
            sql+=" and tennhacungcap like \'%"+ten+"%\'";
        }
        if(!mathue.equals("")){
            sql+=" and masothue like \'%"+mathue+"%\'";
        }
        if(!phone.equals("")){
            sql+=" and dienthoai like \'%"+phone+"%\'";
        }
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs=state.executeQuery(sql);
            while(rs.next()){
                Suplier s=new Suplier();
                s.setDiachi(rs.getString("diachi"));
                s.setDienthoai(rs.getString("dienthoai"));
                s.setEmail(rs.getString("email"));
                s.setMa(rs.getInt("manhacungcap"));
                s.setTen(rs.getString("tennhacungcap"));
                s.setMaSoThue(rs.getString("masothue"));
                supliers.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return supliers;
    }
    
    public String insertSuplier(String ten,String thue,String dt,String dc,String email){
        String sql="insert into nhacungcap(tennhacungcap,email,masothue,dienthoai,diachi) values(\'"+ten+"\',\'"+email+"\',\'"+thue+"\',\'"+dt+"\',\'"+dc+"\')";
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return sql;
    }
    
    public String updateSuplier(String ten,String thue,String dt,String dc,String email,String ma){
        String sql="update nhacungcap set tennhacungcap=\'"+ten+"\',masothue=\'"+thue+"\',dienthoai=\'"+dt+"\',diachi=\'"+dc+"\',email=\'"+email+"\' where manhacungcap="+ma;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            state.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return sql;
    }
    
    public Suplier getSuplier(String ma){
        String sql="select * from nhacungcap where manhacungcap="+ma;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        Suplier s=null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs=state.executeQuery(sql);
            while(rs.next()){
                s=new Suplier();
                s.setDiachi(rs.getString("diachi"));
                s.setDienthoai(rs.getString("dienthoai"));
                s.setEmail(rs.getString("email"));
                s.setMa(rs.getInt("manhacungcap"));
                s.setTen(rs.getString("tennhacungcap"));
                s.setMaSoThue(rs.getString("masothue"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return s;
    }
    
    public static boolean CheckDuplicate(String ten,String table,String col){
        String sql="";
        if(table.equals("loaisanpham")){
            sql="select * from loaisanpham where "+col+"=\'"+ten+"\'";
        }else {
            sql="select * from "+table+" where "+col+"=\'"+ten+"\'";
        }
        Connection con=null;
        Statement state=null;
        ResultSet rs=null;
        try{
            con=new DataAccess().getConnect();
            state=con.createStatement();
            rs=state.executeQuery(sql);
            int count=0;
            while(rs.next()){
                count++;
            }
            if(count==0){
                return false;
            }else{
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return false;
    }
    
    public static Vector<Tinh> getTinhs(){
        String sql="select * from tinhthanh";
        Vector<Tinh> tinhs=new Vector<Tinh>();
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs=state.executeQuery(sql);
            while(rs.next()){
                Tinh t=new Tinh();
                t.setMaTinh(rs.getInt("matt"));
                t.setTentinh(rs.getString("tentinhthanh"));
                tinhs.add(t);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return tinhs;
    }
    
    public static Vector<Huyen> getHuyens(String matinh){
        String sql="select * from huyen where matt="+matinh;
        Vector<Huyen> huyens=new Vector<Huyen>();
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;
        try {
            con = new DataAccess().getConnect();
            state = con.createStatement();
            rs=state.executeQuery(sql);
            while(rs.next()){
                Huyen h=new Huyen();
                h.setMaHuyen(rs.getInt("mahuyen"));
                h.setTenHuyen(rs.getString("tenhuyen"));
                h.setPhi(rs.getDouble("phivanchuyen"));
                h.setMatinh(rs.getInt("matt"));
                huyens.add(h);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DataAccess.CloseResultSet(rs);
            DataAccess.CloseStatement(state);
            DataAccess.CloseConnect(con);
        }
        return huyens;
    }
    
    public static void updateTinh(String ma,String ten){
        String sql="update tinhthanh set tentinhthanh=\'"+ten+"\' where matt="+ma;
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
    
    public static void updateHuyen(String ma,String ten,String phi){
        String sql="update huyen set tenhuyen=\'"+ten+"\',phivanchuyen="+phi+" where mahuyen="+ma;
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
