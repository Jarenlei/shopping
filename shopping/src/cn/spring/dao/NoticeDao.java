package cn.spring.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import cn.spring.entity.Notice;

@Repository
public class NoticeDao extends AbstractDao{
  
    /**
     * 
     * getNoticeByIdを実行する。<br>
     * 使用此方法queryForObject(String sql, Object[] args, Class requiredType) 返回的是数据的一列，且返回的是java的基本类型
     * 使用此方法queryForObject(String sql, Object[] args, RowMapper<Notice> rowMapper) 返回的是一项，其结果可以是自定义的类型
     * @param nid
     * @return Notice
     */
    public Notice getNoticeById(int nid) {
        String sql="select * from shop_notice where nid=?";
        return template.queryForObject(sql, new Integer[]{nid}, new BeanPropertyRowMapper<Notice>(Notice.class));
    }

    public List<Notice> getIndexNotice(int i) {
        String sql="select * from shop_notice order by nid DESC limit 0,?";
       return template.query(sql,new Integer[]{i}, new BeanPropertyRowMapper<Notice>(Notice.class));
    }

    
}
