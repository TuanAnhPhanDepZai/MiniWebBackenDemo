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
public class GrammarGuide {
    private int idgrammarguideline;
    private String grammarname;
    private String grammarimage;
    private String context ;

    public GrammarGuide(int idgrammarguideline, String grammarname, String grammarimage, String context) {
        this.idgrammarguideline = idgrammarguideline;
        this.grammarname = grammarname;
        this.grammarimage = grammarimage;
        this.context = context;
    }

    public GrammarGuide(String grammarname ){
        this.grammarname = grammarname;
    }
    
    public GrammarGuide(int id , String grammarimage){
        this.idgrammarguideline = id ;
        this.grammarimage = grammarimage ;
    }
    public int getIdgrammarguideline() {
        return idgrammarguideline;
    }

    public void setIdgrammarguideline(int idgrammarguideline) {
        this.idgrammarguideline = idgrammarguideline;
    }

    public String getGrammarname() {
        return grammarname;
    }

    public void setGrammarname(String grammarname) {
        this.grammarname = grammarname;
    }

    public String getGrammarimage() {
        return grammarimage;
    }

    public void setGrammarimage(String grammarimage) {
        this.grammarimage = grammarimage;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }
    
    
}
