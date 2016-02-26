package cn.spring.logic;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import cn.spring.dao.CommorityDao;
import cn.spring.dto.PageDto;
import cn.spring.entity.Commority;

@Component
public class SearchLogic {

    @Resource
    private CommorityDao commDao;

    public List<Commority> getSearchResult(String cname,PageDto pageVo) {
        
        return commDao.getSearchResult(cname,pageVo);
    }

    public int getCount(String cname){
        return commDao.getCount(cname);
    }
    
}
