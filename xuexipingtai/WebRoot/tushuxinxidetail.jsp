﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>图书信息</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="qtimages/css/reset.css" rel="stylesheet" />
<link href="qtimages/css/main.css" rel="stylesheet"/>
<link href="qtimages/css/sub.css" rel="stylesheet"/>
<script src="qtimages/jquery.js"></script> 
<script src="js/jquery.SuperSlide.2.1.1.js"></script>

<script type="text/javascript" src="qtimages/inc.js"></script>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
</head>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%
	String id=request.getParameter("id");
	
     %>
<body>
<jsp:include page="qttop.jsp"></jsp:include>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">图书信息</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con"> 
					
					
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>图书编号：</td><td width='39%'>${tushuxinxi.tushubianhao}</td><td  rowspan=6 align=center><a href=${tushuxinxi.tupian} target=_blank><img src=${tushuxinxi.tupian}  width=228 height=215 border=0></a></td></tr><tr>
         <td width='11%' height=44>图书名称：</td><td width='39%'>${tushuxinxi.tushumingcheng}</td></tr><tr>
         <td width='11%' height=44>类别：</td><td width='39%'>${tushuxinxi.leibie}</td></tr><tr>
         <td width='11%' height=44>作者：</td><td width='39%'>${tushuxinxi.zuozhe}</td></tr><tr>
         <td width='11%' height=44>出版社：</td><td width='39%'>${tushuxinxi.chubanshe}</td></tr><tr>
         
         <td width='11%' height=44>价格：</td><td width='39%'>${tushuxinxi.jiage}</td></tr><tr>
         
         <td width='11%' height=100  >图书简介：</td><td width='39%' colspan=2 height=100 >${tushuxinxi.tushujianjie}</td></tr><tr>							 
                                <td colspan="3"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
                                  <tr>
                                    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
                                    <td width="471" bgcolor='#CCFFFF'>评价内容</td>
                                    <td width="88" bgcolor='#CCFFFF'>评分</td>
                                    <td width="88" bgcolor='#CCFFFF'>评论人</td>
                                    <td width="138" align="center" bgcolor="CCFFFF">评论时间</td>
                                  </tr>
								  <%@page import="com.util.db"%>
                                   <%
								   int pli=0;
    for(HashMap map:new db().getpinglun("tushuxinxi",id)){
	pli=pli+1;
     %>
                                   <tr>
                                    <td width="30" align="center" bgcolor='#CCFF99'><%=pli%></td>
                                    <td width="471" bgcolor='#CCFF99'><%=map.get("pinglunneirong") %></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pingfen") %></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pinglunren") %></td>
                                    <td width="138" align="center" bgcolor="CCFF99"><%=map.get("addtime") %></td>
                                  </tr>
                                  <%
								 
								  }
								   %>
                                </table></td>
                                </tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
<input type=button name=Submit52 value=打印 onClick="javascript:window.print()" /> <input type="button" name="tushuxinxigoumai" value="购买" onClick="javascript:location.href='goumaijiluadd.jsp?id=${tushuxinxi.id}';"> <!--jixaaxnnxiu-->
<input type=button name=Submit53 value=评论 onClick="javascript:hsgpinglun('tushuxinxi','<%=id%>')"/>
</td></tr>
    
  </table>
					
			</div>	
		</div>
	</div>		
</div>
<jsp:include page="qtdown.jsp"></jsp:include>


</body>
</html>

