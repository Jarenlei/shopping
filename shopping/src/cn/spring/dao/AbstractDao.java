package cn.spring.dao;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public abstract class AbstractDao {
        
    @Resource
    protected JdbcTemplate template;
}
