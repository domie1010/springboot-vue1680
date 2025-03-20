package com.controller;

import java.io.File;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.entity.Xinwentongzhi;
import com.entity.Yonghuzhuce;
import com.entity.Tushuxinxi;import com.entity.Kechengxinxi;//jixacxishxu1

import com.server.XinwentongzhiServer;
import com.server.YonghuzhuceServer;
import com.server.TushuxinxiServer;import com.server.KechengxinxiServer;//jixacxishxu2

import com.util.PageBean;

@Controller
public class IndexController {
	
	
	@Resource
	private XinwentongzhiServer xinwentongzhiService;
	@Resource
	private YonghuzhuceServer yonghuzhuceServer;
	@Resource	private TushuxinxiServer tushuxinxiServer;	@Resource	private KechengxinxiServer kechengxinxiServer;	//jixacxishxu3
	
	
	
//	首页显示内容
	@RequestMapping("index.do")
	public String showIndex(ModelMap map){

		List<Xinwentongzhi> syxinwentongzhi1=xinwentongzhiService.getsyxinwentongzhi1(null);
		List<Xinwentongzhi> syxinwentongzhi2=xinwentongzhiService.getsyxinwentongzhi2(null);
		List<Xinwentongzhi> syxinwentongzhi3=xinwentongzhiService.getsyxinwentongzhi3(null);

		List<Yonghuzhuce> syyonghuzhuce1=yonghuzhuceServer.getsyyonghuzhuce1(null);
		List<Tushuxinxi> sytushuxinxi1=tushuxinxiServer.getsytushuxinxi1(null);		List<Tushuxinxi> sytushuxinxi2=tushuxinxiServer.getsytushuxinxi2(null);		List<Tushuxinxi> sytushuxinxi3=tushuxinxiServer.getsytushuxinxi3(null);		List<Kechengxinxi> sykechengxinxi1=kechengxinxiServer.getsykechengxinxi1(null);		List<Kechengxinxi> sykechengxinxi2=kechengxinxiServer.getsykechengxinxi2(null);		List<Kechengxinxi> sykechengxinxi3=kechengxinxiServer.getsykechengxinxi3(null);		//jixacxishxu4
		
	    map.put("syxinwentongzhi1", syxinwentongzhi1);
	    map.put("syxinwentongzhi2", syxinwentongzhi2);
	    map.put("syxinwentongzhi3", syxinwentongzhi3);
	    map.put("syyonghuzhuce1", syyonghuzhuce1);
	    map.put("sytushuxinxi1", sytushuxinxi1);	    map.put("sytushuxinxi2", sytushuxinxi2);	    map.put("sytushuxinxi3", sytushuxinxi3);	    map.put("sykechengxinxi1", sykechengxinxi1);	    map.put("sykechengxinxi2", sykechengxinxi2);	    map.put("sykechengxinxi3", sykechengxinxi3);	    //jixacxishxu5

		return "default";
	}

	

	
}
