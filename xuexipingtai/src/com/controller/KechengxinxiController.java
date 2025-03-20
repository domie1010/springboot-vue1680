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

import com.entity.Kechengxinxi;
import com.server.KechengxinxiServer;
import com.util.PageBean;
import net.sf.json.JSONObject;
import com.util.db;
import java.sql.SQLException;
import java.sql.*;
@Controller
public class KechengxinxiController {
	@Resource
	private KechengxinxiServer kechengxinxiService;


   
	@RequestMapping("addKechengxinxi.do")
	public String addKechengxinxi(HttpServletRequest request,Kechengxinxi kechengxinxi,HttpSession session) throws SQLException{
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		kechengxinxi.setAddtime(time.toString().substring(0, 19));
		kechengxinxiService.add(kechengxinxi);
		session.setAttribute("backxx", "添加成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		
		//session.setAttribute("backurl", "kechengxinxiList.do");
		
		return "redirect:postback.jsp";
		//return "redirect:kechengxinxiList.do";
		
		
		
	}
 
//	处理编辑
	@RequestMapping("doUpdateKechengxinxi.do")
	public String doUpdateKechengxinxi(int id,ModelMap map,Kechengxinxi kechengxinxi){
		kechengxinxi=kechengxinxiService.getById(id);
		map.put("kechengxinxi", kechengxinxi);
		return "kechengxinxi_updt";
	}
	
	
	
	
	
//	后台详细
	@RequestMapping("kechengxinxiDetail.do")
	public String kechengxinxiDetail(int id,ModelMap map,Kechengxinxi kechengxinxi){
		kechengxinxi=kechengxinxiService.getById(id);
		map.put("kechengxinxi", kechengxinxi);
		return "kechengxinxi_detail";
	}
//	前台详细
	@RequestMapping("kcxxDetail.do")
	public String kcxxDetail(int id,ModelMap map,Kechengxinxi kechengxinxi){
		kechengxinxi=kechengxinxiService.getById(id);
		map.put("kechengxinxi", kechengxinxi);
		return "kechengxinxidetail";
	}
//	
	@RequestMapping("updateKechengxinxi.do")
	public String updateKechengxinxi(int id,ModelMap map,Kechengxinxi kechengxinxi,HttpServletRequest request,HttpSession session){
		kechengxinxiService.update(kechengxinxi);
		session.setAttribute("backxx", "修改成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		return "redirect:postback.jsp";
		//String url = request.getHeader("Referer");
		//return "redirect:"+url;
		//return "redirect:kechengxinxiList.do";
	}

//	分页查询
	@RequestMapping("kechengxinxiList.do")
	public String kechengxinxiList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Kechengxinxi kechengxinxi, String jieduan, String nianji, String kemu, String shipinmingcheng, String xuexishipin, String lancishu1,String lancishu2){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(jieduan==null||jieduan.equals("")){pmap.put("jieduan", null);}else{pmap.put("jieduan", jieduan);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(kemu==null||kemu.equals("")){pmap.put("kemu", null);}else{pmap.put("kemu", kemu);}		if(shipinmingcheng==null||shipinmingcheng.equals("")){pmap.put("shipinmingcheng", null);}else{pmap.put("shipinmingcheng", shipinmingcheng);}		if(xuexishipin==null||xuexishipin.equals("")){pmap.put("xuexishipin", null);}else{pmap.put("xuexishipin", xuexishipin);}		if(lancishu1==null||lancishu1.equals("")){pmap.put("lancishu1", null);}else{pmap.put("lancishu1", lancishu1);}		if(lancishu2==null||lancishu2.equals("")){pmap.put("lancishu2", null);}else{pmap.put("lancishu2", lancishu2);}		
		int total=kechengxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Kechengxinxi> list=kechengxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "kechengxinxi_list";
	}
	
	
	
	@RequestMapping("kcxxList.do")
	public String kcxxList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Kechengxinxi kechengxinxi, String jieduan, String nianji, String kemu, String shipinmingcheng, String xuexishipin, String lancishu1,String lancishu2){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(jieduan==null||jieduan.equals("")){pmap.put("jieduan", null);}else{pmap.put("jieduan", jieduan);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(kemu==null||kemu.equals("")){pmap.put("kemu", null);}else{pmap.put("kemu", kemu);}		if(shipinmingcheng==null||shipinmingcheng.equals("")){pmap.put("shipinmingcheng", null);}else{pmap.put("shipinmingcheng", shipinmingcheng);}		if(xuexishipin==null||xuexishipin.equals("")){pmap.put("xuexishipin", null);}else{pmap.put("xuexishipin", xuexishipin);}		if(lancishu1==null||lancishu1.equals("")){pmap.put("lancishu1", null);}else{pmap.put("lancishu1", lancishu1);}		if(lancishu2==null||lancishu2.equals("")){pmap.put("lancishu2", null);}else{pmap.put("lancishu2", lancishu2);}		
		int total=kechengxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Kechengxinxi> list=kechengxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "kechengxinxilist";
	}
	
	@RequestMapping("deleteKechengxinxi.do")
	public String deleteKechengxinxi(int id,HttpServletRequest request){
		kechengxinxiService.delete(id);
		String url = request.getHeader("Referer");
		return "redirect:"+url;
		//return "redirect:kechengxinxiList.do";
	}
	
	@RequestMapping("quchongKechengxinxi.do")
	public void quchongKechengxinxi(Kechengxinxi kechengxinxi,HttpServletResponse response){
		   Map<String,Object> map=new HashMap<String,Object>();
		   map.put("shipinmingcheng", kechengxinxi.getShipinmingcheng());
		   System.out.println("shipinmingcheng==="+kechengxinxi.getShipinmingcheng());
		   System.out.println("shipinmingcheng222==="+kechengxinxiService.quchongKechengxinxi(map));
		   JSONObject obj=new JSONObject();
		   if(kechengxinxiService.quchongKechengxinxi(map)!=null){
				 obj.put("info", "ng");
			   }else{
				   obj.put("info", "视频名称可以用！");
				  
			   }
		   response.setContentType("text/html;charset=utf-8");
		   PrintWriter out=null;
		   try {
			out=response.getWriter();
			out.print(obj);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			out.close();
		}
	}
}
