package cn.spring.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.spring.dto.PageDto;
import cn.spring.entity.Commority;

@Controller
@RequestMapping(value="main")
public class MainController extends AbstractController{
	
    private final static int PER_SIZE=3;
    
    @RequestMapping(value = "index.htm")
    public ModelAndView forIndex(HttpServletRequest request) {
        ModelAndView mv=new ModelAndView("index");
        String feature=request.getRealPath(File.separator)+env.getValue("featurebanner");
        webDto.setImageList(logic.getImages(feature));
        webDto.setNoticeList(logic.getNotices());
        mv.addObject("webDto",webDto);
        return mv;
    }
    
    @RequestMapping(value = "index")
    public ModelAndView forWeb(HttpServletRequest request) {
        ModelAndView mv=new ModelAndView("index");
        String feature=request.getRealPath(File.separator)+env.getValue("featurebanner");
        webDto.setImageList(logic.getImages(feature));
        webDto.setNoticeList(logic.getNotices());
        mv.addObject("webDto",webDto);
        return mv;
    }
 
    /**
     * 使用@ResponseBody注解为前台返回ajax数据
     * 另外可使用@RequestBody注解将前台传过来的json值转化为相应的实体类
     * 必须使用三个Jackson的三个依赖包
     * */
    @ResponseBody
    @RequestMapping(value="getcomm",method=RequestMethod.POST)
    public List<Commority> getComList(String typeId,String type){
        List<Commority> comList=new ArrayList<Commority>();
                comList.add(new Commority(type,typeId));
                comList.add(new Commority("Google","Nexus 5"));
        return comList;
    }
    
    @RequestMapping("delsession")
    public String deleteSeesion(HttpSession session){
        session.invalidate();
        return "redirect:/main/index";
    }
    
    //搜索商品
    @RequestMapping(value="searchcom",method=RequestMethod.GET)
    public ModelAndView searchCommority(@ModelAttribute Commority comm,Map<String,Object> map,@ModelAttribute PageDto pageVo){
        ModelAndView mv=new ModelAndView("searchResult");
        String cname=comm.getCname();
        int count=searchLogic.getCount(cname);
        pageVo.setPersize(PER_SIZE);
        pageVo.setMaxpage(count,PER_SIZE);
        pageVo.setPreFlag(pageVo.getCurpage());
        pageVo.setNextFlag(pageVo.getCurpage(), pageVo.getMaxpage());
        searchDto.setSearchResultList(searchLogic.getSearchResult(cname,pageVo));
        searchDto.setCname(comm.getCname());
        map.put("pageVo",pageVo);
        map.put("searchDto", searchDto);
        mv.addAllObjects(map);
    	return mv;
    }
       
    //个人快乐购的页面
    @RequestMapping(value="getperson")
    public String getPerson(){
        return "person";
    }
}