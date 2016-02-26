package cn.spring.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("notice")
public class NoticesController extends AbstractController{

    @RequestMapping(value="index")
    public ModelAndView getNotice(@RequestParam(value="nid",required=true)int nid,Map<String,Object> map){
        ModelAndView mv=new ModelAndView("notice");
        map.put("singleNotice", noticeLogic.getNoticeById(nid));
        mv.addAllObjects(map);
        return mv;
    }
}
