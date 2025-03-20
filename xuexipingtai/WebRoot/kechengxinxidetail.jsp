<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>课程信息</title>

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
				<div class="name">课程信息</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con"> 
					
					
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%'>阶段：</td><td width='39%'>${kechengxinxi.jieduan}</td>
     <td width='11%'>年级：</td><td width='39%'>${kechengxinxi.nianji}</td></tr><tr>
     <td width='11%'>科目：</td><td width='39%'>${kechengxinxi.kemu}</td>
     <td width='11%'>视频名称：</td><td width='39%'>${kechengxinxi.shipinmingcheng}</td></tr><tr>
     <td width='11%'>学习视频：</td><td width='39%'>${kechengxinxi.xuexishipin}</td>
     <td width='11%'>浏览次数：</td><td width='39%'>${kechengxinxi.lancishu}</td>
     </tr><tr>							 
                                <td colspan="4"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
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
    for(HashMap map:new db().getpinglun("kechengxinxi",id)){
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
                                </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
<input type=button name=Submit52 value=打印 onClick="javascript:window.print()"  /> <input type="button" name="kechengxinxixuexi" value="学习" onClick="javascript:location.href='xuexijiluadd.jsp?id=${kechengxinxi.id}';"> <!--jixaaxnnxiu-->
<input type=button name=Submit53 value=评论 onClick="javascript:hsgpinglun('kechengxinxi','<%=id%>')"/>
</td></tr>
    
  </table>
					
			</div>	
		</div>
	</div>		
</div>
<jsp:include page="qtdown.jsp"></jsp:include>


</body>
</html>

