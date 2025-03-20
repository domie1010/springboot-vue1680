package com.controller;

import java.io.File;
import java.io.IOException;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.entity.Xuexijilu;
import com.server.XuexijiluServer;
import com.util.PageBean;
import net.sf.json.JSONObject;
import com.util.db;
import java.sql.SQLException;
import java.sql.*;
@Controller
public class XuexijiluController {
	@Resource
	private XuexijiluServer xuexijiluService;


   
	@RequestMapping("addXuexijilu.do")
	public String addXuexijilu(HttpServletRequest request,Xuexijilu xuexijilu,HttpSession session) throws SQLException{
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		xuexijilu.setAddtime(time.toString().substring(0, 19));
		xuexijiluService.add(xuexijilu);
		session.setAttribute("backxx", "添加成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		
		//session.setAttribute("backurl", "xuexijiluList.do");
		
		return "redirect:postback.jsp";
		//return "redirect:xuexijiluList.do";
		
		
		
	}
 
//	处理编辑
	@RequestMapping("doUpdateXuexijilu.do")
	public String doUpdateXuexijilu(int id,ModelMap map,Xuexijilu xuexijilu){
		xuexijilu=xuexijiluService.getById(id);
		map.put("xuexijilu", xuexijilu);
		return "xuexijilu_updt";
	}
	
	
	
	
	
//	后台详细
	@RequestMapping("xuexijiluDetail.do")
	public String xuexijiluDetail(int id,ModelMap map,Xuexijilu xuexijilu){
		xuexijilu=xuexijiluService.getById(id);
		map.put("xuexijilu", xuexijilu);
		return "xuexijilu_detail";
	}
//	前台详细
	@RequestMapping("xxjlDetail.do")
	public String xxjlDetail(int id,ModelMap map,Xuexijilu xuexijilu){
		xuexijilu=xuexijiluService.getById(id);
		map.put("xuexijilu", xuexijilu);
		return "xuexijiludetail";
	}
//	
	@RequestMapping("updateXuexijilu.do")
	public String updateXuexijilu(int id,ModelMap map,Xuexijilu xuexijilu,HttpServletRequest request,HttpSession session){
		xuexijiluService.update(xuexijilu);
		session.setAttribute("backxx", "修改成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		return "redirect:postback.jsp";
		//String url = request.getHeader("Referer");
		//return "redirect:"+url;
		//return "redirect:xuexijiluList.do";
	}

//	分页查询
	@RequestMapping("xuexijiluList.do")
	public String xuexijiluList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Xuexijilu xuexijilu, String jieduan, String nianji, String kemu, String shipinmingcheng, String xuexishichang1,String xuexishichang2, String xuexijindu, String xuexiren){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(jieduan==null||jieduan.equals("")){pmap.put("jieduan", null);}else{pmap.put("jieduan", jieduan);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(kemu==null||kemu.equals("")){pmap.put("kemu", null);}else{pmap.put("kemu", kemu);}		if(shipinmingcheng==null||shipinmingcheng.equals("")){pmap.put("shipinmingcheng", null);}else{pmap.put("shipinmingcheng", shipinmingcheng);}		if(xuexishichang1==null||xuexishichang1.equals("")){pmap.put("xuexishichang1", null);}else{pmap.put("xuexishichang1", xuexishichang1);}		if(xuexishichang2==null||xuexishichang2.equals("")){pmap.put("xuexishichang2", null);}else{pmap.put("xuexishichang2", xuexishichang2);}		if(xuexijindu==null||xuexijindu.equals("")){pmap.put("xuexijindu", null);}else{pmap.put("xuexijindu", xuexijindu);}		if(xuexiren==null||xuexiren.equals("")){pmap.put("xuexiren", null);}else{pmap.put("xuexiren", xuexiren);}		
		int total=xuexijiluService.getCount(pmap);
		pageBean.setTotal(total);
		List<Xuexijilu> list=xuexijiluService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "xuexijilu_list";
	}
	
	@RequestMapping("xuexijiluList2.do")
	public String xuexijiluList2(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Xuexijilu xuexijilu, String jieduan, String nianji, String kemu, String shipinmingcheng, String xuexishichang1,String xuexishichang2, String xuexijindu, String xuexiren,HttpServletRequest request){
		/*if(session.getAttribute("user")==null){
			return "login";
		}*/
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		pmap.put("xuexiren", (String)request.getSession().getAttribute("username"));
		if(jieduan==null||jieduan.equals("")){pmap.put("jieduan", null);}else{pmap.put("jieduan", jieduan);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(kemu==null||kemu.equals("")){pmap.put("kemu", null);}else{pmap.put("kemu", kemu);}		if(shipinmingcheng==null||shipinmingcheng.equals("")){pmap.put("shipinmingcheng", null);}else{pmap.put("shipinmingcheng", shipinmingcheng);}		if(xuexishichang1==null||xuexishichang1.equals("")){pmap.put("xuexishichang1", null);}else{pmap.put("xuexishichang1", xuexishichang1);}		if(xuexishichang2==null||xuexishichang2.equals("")){pmap.put("xuexishichang2", null);}else{pmap.put("xuexishichang2", xuexishichang2);}		if(xuexijindu==null||xuexijindu.equals("")){pmap.put("xuexijindu", null);}else{pmap.put("xuexijindu", xuexijindu);}		
		
		int total=xuexijiluService.getCount(pmap);
		pageBean.setTotal(total);
		List<Xuexijilu> list=xuexijiluService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "xuexijilu_list2";
	}	
	
	@RequestMapping("xxjlList.do")
	public String xxjlList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Xuexijilu xuexijilu, String jieduan, String nianji, String kemu, String shipinmingcheng, String xuexishichang1,String xuexishichang2, String xuexijindu, String xuexiren){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(jieduan==null||jieduan.equals("")){pmap.put("jieduan", null);}else{pmap.put("jieduan", jieduan);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(kemu==null||kemu.equals("")){pmap.put("kemu", null);}else{pmap.put("kemu", kemu);}		if(shipinmingcheng==null||shipinmingcheng.equals("")){pmap.put("shipinmingcheng", null);}else{pmap.put("shipinmingcheng", shipinmingcheng);}		if(xuexishichang1==null||xuexishichang1.equals("")){pmap.put("xuexishichang1", null);}else{pmap.put("xuexishichang1", xuexishichang1);}		if(xuexishichang2==null||xuexishichang2.equals("")){pmap.put("xuexishichang2", null);}else{pmap.put("xuexishichang2", xuexishichang2);}		if(xuexijindu==null||xuexijindu.equals("")){pmap.put("xuexijindu", null);}else{pmap.put("xuexijindu", xuexijindu);}		if(xuexiren==null||xuexiren.equals("")){pmap.put("xuexiren", null);}else{pmap.put("xuexiren", xuexiren);}		
		int total=xuexijiluService.getCount(pmap);
		pageBean.setTotal(total);
		List<Xuexijilu> list=xuexijiluService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "xuexijilulist";
	}
	
	@RequestMapping("deleteXuexijilu.do")
	public String deleteXuexijilu(int id,HttpServletRequest request){
		xuexijiluService.delete(id);
		String url = request.getHeader("Referer");
		return "redirect:"+url;
		//return "redirect:xuexijiluList.do";
	}
	
	
}
