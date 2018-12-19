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
public class Employee {
    private int manv;
    private String tendangnhap;
    private String matkhau;
    private String hoten;
    private int vaitro;
    private int gioitinh;

    public int getManv() {
        return manv;
    }

    public void setManv(int manv) {
        this.manv = manv;
    }

    public String getTendangnhap() {
        return tendangnhap;
    }

    public void setTendangnhap(String tendangnhap) {
        this.tendangnhap = tendangnhap;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public int getVaitro() {
        return vaitro;
    }

    public void setVaitro(int vaitro) {
        this.vaitro = vaitro;
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
    
    
}
