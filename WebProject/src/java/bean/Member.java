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
public class Member {
    
    private int idmember ;
    private String membername ;
    private String memberpass ;
    private int  categorymemberid ;
    private String name ;
    private String memberImage ;

    public Member( String membername, String memberpass, int  categorymemberid, String name) {
      
        this.membername = membername;
        this.memberpass = memberpass;
        this.categorymemberid = categorymemberid;
        this.name = name;
    }

    public Member() {
       
    }


    public String getMembername() {
        return membername;
    }

    public void setMembername(String membername) {
        this.membername = membername;
    }

    public String getMemberpass() {
        return memberpass;
    }

    public void setMemberpass(String memberpass) {
        this.memberpass = memberpass;
    }

    public int  getCategorymemberid() {
        return categorymemberid;
    }

    public void setCategorymemberid(int categorymemberid) {
        this.categorymemberid = categorymemberid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMemberImage() {
        return memberImage;
    }

    public void setMemberImage(String memberImage) {
        this.memberImage = memberImage;
    }

    public int getIdmember() {
        return idmember;
    }

    public void setIdmember(int idmember) {
        this.idmember = idmember;
    }
    
    
}
