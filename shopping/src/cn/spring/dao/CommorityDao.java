package cn.spring.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import cn.spring.dto.PageDto;
import cn.spring.entity.Commority;

@Repository
public class CommorityDao extends AbstractDao{
    
    //从数据库查询与用户搜索的结果，使用like语句
    public List<Commority> getSearchResult(String cname,PageDto pageVo) {
        String sql = "select * from shop_commority where cname like ? order by cid desc limit ?,?";
        int curpage=pageVo.getCurpage()>0?pageVo.getCurpage()-1:0;
        return template.query(sql,new Object[]{new String("%"+cname+"%"),new Integer(curpage*pageVo.getPersize()),new Integer(pageVo.getPersize())}, new BeanPropertyRowMapper<Commority>(Commority.class));
    }
    
    //查询单个商品的总数
    public int getCount(String cname){
        String sql = "select count(*) from shop_commority where cname like ?";
            return  template.queryForObject(sql,new String[]{"%"+cname+"%"},Integer.class);
    }
}
