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

import com.entity.Tushuxinxi;
import com.server.TushuxinxiServer;
import com.util.PageBean;
import net.sf.json.JSONObject;
import com.util.db;
import java.sql.SQLException;
import java.sql.*;
@Controller
public class TushuxinxiController {
	@Resource
	private TushuxinxiServer tushuxinxiService;


   
	@RequestMapping("addTushuxinxi.do")
	public String addTushuxinxi(HttpServletRequest request,Tushuxinxi tushuxinxi,HttpSession session) throws SQLException{
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		tushuxinxi.setAddtime(time.toString().substring(0, 19));
		tushuxinxiService.add(tushuxinxi);
		session.setAttribute("backxx", "添加成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		
		//session.setAttribute("backurl", "tushuxinxiList.do");
		
		return "redirect:postback.jsp";
		//return "redirect:tushuxinxiList.do";
		
		
		
	}
 
//	处理编辑
	@RequestMapping("doUpdateTushuxinxi.do")
	public String doUpdateTushuxinxi(int id,ModelMap map,Tushuxinxi tushuxinxi){
		tushuxinxi=tushuxinxiService.getById(id);
		map.put("tushuxinxi", tushuxinxi);
		return "tushuxinxi_updt";
	}
	
	
	
	
	
//	后台详细
	@RequestMapping("tushuxinxiDetail.do")
	public String tushuxinxiDetail(int id,ModelMap map,Tushuxinxi tushuxinxi){
		tushuxinxi=tushuxinxiService.getById(id);
		map.put("tushuxinxi", tushuxinxi);
		return "tushuxinxi_detail";
	}
//	前台详细
	@RequestMapping("tsxxDetail.do")
	public String tsxxDetail(int id,ModelMap map,Tushuxinxi tushuxinxi){
		tushuxinxi=tushuxinxiService.getById(id);
		map.put("tushuxinxi", tushuxinxi);
		return "tushuxinxidetail";
	}
//	
	@RequestMapping("updateTushuxinxi.do")
	public String updateTushuxinxi(int id,ModelMap map,Tushuxinxi tushuxinxi,HttpServletRequest request,HttpSession session){
		tushuxinxiService.update(tushuxinxi);
		session.setAttribute("backxx", "修改成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		return "redirect:postback.jsp";
		//String url = request.getHeader("Referer");
		//return "redirect:"+url;
		//return "redirect:tushuxinxiList.do";
	}

//	分页查询
	@RequestMapping("tushuxinxiList.do")
	public String tushuxinxiList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Tushuxinxi tushuxinxi, String tushubianhao, String tushumingcheng, String leibie, String zuozhe, String chubanshe, String tupian, String jiage1,String jiage2, String tushujianjie){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 5);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 5);
		
		
		if(tushubianhao==null||tushubianhao.equals("")){pmap.put("tushubianhao", null);}else{pmap.put("tushubianhao", tushubianhao);}		if(tushumingcheng==null||tushumingcheng.equals("")){pmap.put("tushumingcheng", null);}else{pmap.put("tushumingcheng", tushumingcheng);}		if(leibie==null||leibie.equals("")){pmap.put("leibie", null);}else{pmap.put("leibie", leibie);}		if(zuozhe==null||zuozhe.equals("")){pmap.put("zuozhe", null);}else{pmap.put("zuozhe", zuozhe);}		if(chubanshe==null||chubanshe.equals("")){pmap.put("chubanshe", null);}else{pmap.put("chubanshe", chubanshe);}		if(tupian==null||tupian.equals("")){pmap.put("tupian", null);}else{pmap.put("tupian", tupian);}		if(jiage1==null||jiage1.equals("")){pmap.put("jiage1", null);}else{pmap.put("jiage1", jiage1);}		if(jiage2==null||jiage2.equals("")){pmap.put("jiage2", null);}else{pmap.put("jiage2", jiage2);}		if(tushujianjie==null||tushujianjie.equals("")){pmap.put("tushujianjie", null);}else{pmap.put("tushujianjie", tushujianjie);}		
		int total=tushuxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Tushuxinxi> list=tushuxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "tushuxinxi_list";
	}
	
	
	
	@RequestMapping("tsxxList.do")
	public String tsxxList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Tushuxinxi tushuxinxi, String tushubianhao, String tushumingcheng, String leibie, String zuozhe, String chubanshe, String tupian, String jiage1,String jiage2, String tushujianjie){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 5);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 5);
		
		
		if(tushubianhao==null||tushubianhao.equals("")){pmap.put("tushubianhao", null);}else{pmap.put("tushubianhao", tushubianhao);}		if(tushumingcheng==null||tushumingcheng.equals("")){pmap.put("tushumingcheng", null);}else{pmap.put("tushumingcheng", tushumingcheng);}		if(leibie==null||leibie.equals("")){pmap.put("leibie", null);}else{pmap.put("leibie", leibie);}		if(zuozhe==null||zuozhe.equals("")){pmap.put("zuozhe", null);}else{pmap.put("zuozhe", zuozhe);}		if(chubanshe==null||chubanshe.equals("")){pmap.put("chubanshe", null);}else{pmap.put("chubanshe", chubanshe);}		if(tupian==null||tupian.equals("")){pmap.put("tupian", null);}else{pmap.put("tupian", tupian);}		if(jiage1==null||jiage1.equals("")){pmap.put("jiage1", null);}else{pmap.put("jiage1", jiage1);}		if(jiage2==null||jiage2.equals("")){pmap.put("jiage2", null);}else{pmap.put("jiage2", jiage2);}		if(tushujianjie==null||tushujianjie.equals("")){pmap.put("tushujianjie", null);}else{pmap.put("tushujianjie", tushujianjie);}		
		int total=tushuxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Tushuxinxi> list=tushuxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "tushuxinxilist";
	}
	
	@RequestMapping("deleteTushuxinxi.do")
	public String deleteTushuxinxi(int id,HttpServletRequest request){
		tushuxinxiService.delete(id);
		String url = request.getHeader("Referer");
		return "redirect:"+url;
		//return "redirect:tushuxinxiList.do";
	}
	
	
}
