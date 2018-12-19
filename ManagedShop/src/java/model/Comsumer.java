/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Xuan Truong PC
 */
public class Comsumer {
    private int makh;
    private String hoten;
    private String diachi;
    private String dienthoai;
    private String email;
    private String matkhau;
    private int gioitinh;
    private double diemso;
    private int solanmuahang;
    private int sodonhang;
    private int donmoi;
    private int dondangthuchien;
    private int dondahoanthanh;

    public int getDonmoi() {
        return donmoi;
    }

    public void setDonmoi(int donmoi) {
        this.donmoi = donmoi;
    }

    public int getDondangthuchien() {
        return dondangthuchien;
    }

    public void setDondangthuchien(int dondangthuchien) {
        this.dondangthuchien = dondangthuchien;
    }

    public int getDondahoanthanh() {
        return dondahoanthanh;
    }

    public void setDondahoanthanh(int dondahoanthanh) {
        this.dondahoanthanh = dondahoanthanh;
    }
    
    

    public int getSolanmuahang() {
        return solanmuahang;
    }

    public void setSolanmuahang(int solanmuahang) {
        this.solanmuahang = solanmuahang;
    }

    public int getSodonhang() {
        return sodonhang;
    }

    public void setSodonhang(int sodonhang) {
        this.sodonhang = sodonhang;
    }
    
    

    public int getMakh() {
        return makh;
    }

    public void setMakh(int makh) {
        this.makh = makh;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getDienthoai() {
        return dienthoai;
    }

    public void setDienthoai(String dienthoai) {
        this.dienthoai = dienthoai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getGioitinh() {
        if(gioitinh==1){
            return "Nam";
        }else{
            return "Nữ";
        }
    }

    public void setGioitinh(int gioitinh) {
        this.gioitinh = gioitinh;
    }

    public double getDiemso() {
        return diemso;
    }

    public void setDiemso(double diemso) {
        this.diemso = diemso;
    }
    
    
}
