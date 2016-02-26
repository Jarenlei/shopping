package cn.spring.entity;

import org.springframework.stereotype.Repository;

@Repository
public class Notice {

    private String title;
    
    private int nid;

    private String ntype;
    
    private int ntypeId;
    
    
    public String getNtype() {
        return ntype;
    }

    public void setNtype(String ntype) {
        this.ntype = ntype;
    }

    public int getNtypeId() {
        return ntypeId;
    }

    public void setNtypeId(int ntypeId) {
        this.ntypeId = ntypeId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public Notice() {
        super();
    }

    public Notice(String title, int nid) {
        super();
        this.title = title;
        this.nid = nid;
    }
    
}
