package cn.spring.dto;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.spring.entity.Notice;

@Repository
public class ForWebDto {
    
	private List<String> imageList;

	private List<Notice> noticeList;
	
    public List<Notice> getNoticeList() {
        return noticeList;
    }

    public void setNoticeList(List<Notice> noticeList) {
        this.noticeList = noticeList;
    }

    public List<String> getImageList() {
		return imageList;
	}

	public void setImageList(List<String> imageList) {
		this.imageList = imageList;
	}	
	
}
