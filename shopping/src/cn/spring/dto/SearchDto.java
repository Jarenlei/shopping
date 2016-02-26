package cn.spring.dto;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.spring.entity.Commority;

@Repository
public class SearchDto {

    private String cname;
    
    private List<Commority> searchResultList;

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public List<Commority> getSearchResultList() {
        return searchResultList;
    }

    public void setSearchResultList(List<Commority> searchResultList) {
        this.searchResultList = searchResultList;
    }
    
}
