package cn.spring.logic;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import cn.spring.dao.NoticeDao;
import cn.spring.entity.Notice;

@Component
public class NoticeLogic {

    @Resource
    private NoticeDao noticeDao;
    
    /**
     * 
     * getNoticeByIdを実行する。<br>
     * @param nid
     * @return Notice
     */
    public Notice getNoticeById(int nid) {
            
            return noticeDao.getNoticeById(nid);
    }
        
    
}
