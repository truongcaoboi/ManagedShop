/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Vector;

/**
 *
 * @author Xuan Truong PC
 */
public class Receipt {
    private String mahoadon;
    private Comsumer com;
    private Employee em;
    private Date ngaytao;
    private int trangthai;
    private Date ngayhoanthanh;
    private String tennguoinhan;
    private int giamgia;
    private String hinhthucthanhtoan;
    private String dienthoainguoinhan;
    private String emailnguoinhan;
    private String diachigiaohang;
    private double phivanchuyen;
    private Vector<Product> listPro=new Vector<Product>();
    private String ghichu;

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }
    
    

    public Vector<Product> getListPro() {
        return listPro;
    }

    public void setListPro(Vector<Product> listPro) {
        this.listPro = listPro;
    }
    
    

    public String getMahoadon() {
        return mahoadon;
    }

    public void setMahoadon(String mahoadon) {
        this.mahoadon = mahoadon;
    }

    public Comsumer getCom() {
        return com;
    }

    public void setCom(Comsumer com) {
        this.com = com;
    }

    public Employee getEm() {
        return em;
    }

    public void setEm(Employee em) {
        this.em = em;
    }

    public String getNgaytao() {
        SimpleDateFormat output=new SimpleDateFormat("dd/MM/Y HH:mm");
        return output.format(ngaytao);
    }

    public void setNgaytao(Date ngaytao) {
        this.ngaytao = ngaytao;
    }
    //
    
    //1: đơn hàng mới 2: đơn hàng đang thực hiện 3: đơn hàng đã hoàn thành
    public String getTrangthai() {
        if(trangthai==1){
            return "Mới tạo";
        }else if(trangthai==2){
            return "Đang thực hiện";
        }else{
            return "Đã hoàn thành";
        }
    }

    public void setTrangthai(int trangthai) {
        this.trangthai = trangthai;
    }

    public String getNgayhoanthanh() {
        SimpleDateFormat output=new SimpleDateFormat("dd/MM/Y HH:mm");
        if(this.ngayhoanthanh!=null){
            return output.format(this.ngayhoanthanh);
        }else{
            return "";
        }
    }

    public void setNgayhoanthanh(Date ngayhoanthanh) {
        this.ngayhoanthanh = ngayhoanthanh;
    }

    public String getTennguoinhan() {
        return tennguoinhan;
    }

    public void setTennguoinhan(String tennguoinhan) {
        this.tennguoinhan = tennguoinhan;
    }

    public int getGiamgia() {
        return giamgia;
    }

    public void setGiamgia(int giamgia) {
        this.giamgia = giamgia;
    }

    public String getHinhthucthanhtoan() {
        return hinhthucthanhtoan;
    }

    public void setHinhthucthanhtoan(String hinhthucthanhtoan) {
        this.hinhthucthanhtoan = hinhthucthanhtoan;
    }

    public String getDienthoainguoinhan() {
        return dienthoainguoinhan;
    }

    public void setDienthoainguoinhan(String dienthoainguoinhan) {
        this.dienthoainguoinhan = dienthoainguoinhan;
    }

    public String getEmailnguoinhan() {
        return emailnguoinhan;
    }

    public void setEmailnguoinhan(String emailnguoinhan) {
        this.emailnguoinhan = emailnguoinhan;
    }

    public String getDiachigiaohang() {
        return diachigiaohang;
    }

    public void setDiachigiaohang(String diachigiaohang) {
        this.diachigiaohang = diachigiaohang;
    }

    public double getPhivanchuyen() {
        return phivanchuyen;
    }

    public void setPhivanchuyen(double phivanchuyen) {
        this.phivanchuyen = phivanchuyen;
    }
    
    public double getTonggiatri(){
        double result=0;
        for(Product p:listPro){
            result+=p.getGiaban()*p.getSoluong();
        }
        result-=result*com.getDiemso()/100;
        result-=result*giamgia/100;
        result+=this.phivanchuyen;
        return result;
    }
}
