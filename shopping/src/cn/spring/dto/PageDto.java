package cn.spring.dto;

import org.springframework.stereotype.Repository;

@Repository
public class PageDto {

    /**
     * 最大检索的条数
     */
    private int totalcount;
    
    /**
     * 检索结果的最大页数
     */
    private int maxpage;
    
    /**
     * 当前要检索的页码
     */
    private int curpage;

    private boolean preFlag;
    
    private boolean nextFlag;
    
    /**
     * 每页要显示的最多条目数
     */
    private int persize;

    public int getTotalcount() {
        return totalcount;
    }

    public void setTotalcount(int totalcount) {
        this.totalcount = totalcount;
    }

    public int getMaxpage() {
        return maxpage;
    }

    public void setMaxpage(int maxpage) {
        this.maxpage = maxpage;
    }

    public void setMaxpage(int totalcount,int persize){
        this.maxpage = (totalcount+persize-1) / persize;
    }
    
    public int getCurpage() {
        return curpage;
    }

    public void setCurpage(int curpage) {
        this.curpage = curpage;
    }

    public boolean isPreFlag() {
        return preFlag;
    }

    public void setPreFlag(boolean preFlag) {
        this.preFlag = preFlag;
    }

    public void setPreFlag(int curpage) {
        this.preFlag = curpage<=1;
    }
    
    public boolean isNextFlag() {
        return nextFlag;
    }

    public void setNextFlag(boolean nextFlag) {
        this.nextFlag = nextFlag;
    }
    
    public void setNextFlag(int curpage,int maxpage) {
        this.nextFlag = curpage>=maxpage;
    }

    public int getPersize() {
        return persize;
    }

    public void setPersize(int persize) {
        this.persize = persize;
    }

}
