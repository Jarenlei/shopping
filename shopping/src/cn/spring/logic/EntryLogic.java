package cn.spring.logic;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import cn.spring.dao.UserDao;
import cn.spring.entity.User;

@Component
public class EntryLogic {
        
    @Resource
    private UserDao userDao;

    public int insert(User user) {
       return userDao.insert(user);
    }

    public int select(String uname) {
        return userDao.select(uname);
    }

    public User getUserByNameAndPass(User user) {
        
        return userDao.getUserByUser(user);
    }
    
}
