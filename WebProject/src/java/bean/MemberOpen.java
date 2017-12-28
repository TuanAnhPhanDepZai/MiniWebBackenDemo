/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Tuan Anh
 */
public class MemberOpen {

    private int idmember;
    private String bietdanh;
    private String gmail;
    private String noicongtac;
    private String nghenghiep;
    private String muctieu;

    public MemberOpen(){
        
    }

    public MemberOpen(int idmember, String bietdanh, String gmail, String noicongtac, String nghenghiep, String muctieu) {
        this.idmember = idmember;
        this.bietdanh = bietdanh;
        this.gmail = gmail;
        this.noicongtac = noicongtac;
        this.nghenghiep = nghenghiep;
        this.muctieu = muctieu;
    }

    public int getIdmember() {
        return idmember;
    }

    public void setIdmember(int idmember) {
        this.idmember = idmember;
    }

    public String getBietdanh() {
        return bietdanh;
    }

    public void setBietdanh(String bietdanh) {
        this.bietdanh = bietdanh;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getNoicongtac() {
        return noicongtac;
    }

    public void setNoicongtac(String noicongtac) {
        this.noicongtac = noicongtac;
    }

    public String getNghenghiep() {
        return nghenghiep;
    }

    public void setNghenghiep(String nghenghiep) {
        this.nghenghiep = nghenghiep;
    }

    public String getMuctieu() {
        return muctieu;
    }

    public void setMuctieu(String muctieu) {
        this.muctieu = muctieu;
    }
    
    
            
}
