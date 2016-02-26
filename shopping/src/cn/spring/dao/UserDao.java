package cn.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import cn.spring.entity.User;

@Repository
public class UserDao extends AbstractDao{
	
	
	public List<User> getUsers(){	
		List<User> list=new ArrayList<User>();
		String sql="select * from shop_user where delflag=1";
		RowMapper<User> rowMapper=new BeanPropertyRowMapper<User>(User.class);
		list=template.query(sql, rowMapper);
		return list;
	}
	
	public User getUser(String uname){
	    String sql="select * from shop_user where uname=?";
	    return template.queryForObject(sql,new String[]{uname},new BeanPropertyRowMapper<User>(User.class));
	}

    public int insert(User user) {
        int result=0;
        String sql="insert into shop_user(uname,password,registtime,umail,sex,telphone) values(?,?,NOW(),?,?,?)";
        Object args[]=new Object[]{user.getUname(),user.getPassword(),user.getUmail(),user.getSex(),user.getTelphone()};
        result=template.update(sql, args);
        return result;
        
    }

    public int select(String uname) {
        int res=1;
        String sql="select count(*) from shop_user where uname=?";
        res=template.queryForObject(sql,new String[]{uname},Integer.class);
        return res;
    }

    public User getUserByUser(User user) {
        User user1=null;
        String sql = "select * from shop_user where uname=? and password=?";
        try{
            user1 = template.queryForObject(sql, new String[]{user.getUname(),user.getPassword()},new BeanPropertyRowMapper<User>(User.class));
        }catch(Exception ex){
            return null;
        }
        return user1;
    }
}
