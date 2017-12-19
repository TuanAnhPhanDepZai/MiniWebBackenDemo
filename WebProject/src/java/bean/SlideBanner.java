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
public class SlideBanner {
    
    private int idslidebanner ;
    private String slidename;
    private String slidecontent;
    private String slideimage;

    public SlideBanner(String slidename, String slidecontent, String slideimage) {
        
        this.slidename = slidename;
        this.slidecontent = slidecontent;
        this.slideimage = slideimage;
    }

   

  

    public String getSlidename() {
        return slidename;
    }

    public void setSlidename(String slidename) {
        this.slidename = slidename;
    }

    public String getSlidecontent() {
        return slidecontent;
    }

    public void setSlidecontent(String slidecontent) {
        this.slidecontent = slidecontent;
    }

    public String getSlideimage() {
        return slideimage;
    }

    public void setSlideimage(String slideimage) {
        this.slideimage = slideimage;
    }
    
    
}
