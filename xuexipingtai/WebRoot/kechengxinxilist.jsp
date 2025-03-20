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
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>

<%

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
					
					
<form action="kcxxList.do" name="myform" method="post">
									查询  阶段：<select name='jieduan' id='jieduan' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="小学">小学</option><option value="初中">初中</option><option value="高中">高中</option></select> 年级：<select name='nianji' id='nianji' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="1年级">1年级</option><option value="2年级">2年级</option><option value="3年级">3年级</option><option value="4年级">4年级</option><option value="5年级">5年级</option><option value="6年级">6年级</option></select> 科目：<select name='kemu' id='kemu' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="语文">语文</option><option value="数学">数学</option><option value="英语">英语</option><option value="政治">政治</option><option value="历史">历史</option><option value="地理">地理</option><option value="生物">生物</option><option value="物理">物理</option><option value="化学">化学</option></select>  视频名称：<input name="shipinmingcheng" type="text" id="shipinmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
									<input type="submit" value="查询" /> 
								</form>	

	
<br />
<table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#ebf0f7">
                          <tr>
                            <td align="center" bgcolor="#ebf0f7" width="30px">序号</td>
                            <td bgcolor='#ebf0f7'>阶段</td>    <td bgcolor='#ebf0f7'>年级</td>    <td bgcolor='#ebf0f7'>科目</td>    <td bgcolor='#ebf0f7'>视频名称</td>    <td bgcolor='#ebf0f7'>学习视频</td>    <td bgcolor='#ebf0f7'>浏览次数</td>    
                            <td align="center" bgcolor="#ebf0f7" width="150px"> 添加时间 </td>
                            <td align="center" bgcolor="#ebf0f7" width="50px"> 操作 </td>
                          </tr>
                          <%
					int i=0;
				%>
                          <c:forEach items="${list}" var="u">
                            <%
					i++;
				%>
                            <tr align="center" bgcolor="#FFFFFF">
                              <td align="center"><%=i%></td>
                             <td>${u.jieduan}</td>    <td>${u.nianji}</td>    <td>${u.kemu}</td>    <td>${u.shipinmingcheng}</td>    <td><a href='play.jsp?spwj=${u.xuexishipin}' target='_blank'>点此播放</a></td>    <td>${u.lancishu}</td>    
                              <td align="center"> ${u.addtime} </td>
                              <td align="center"><a href="kcxxDetail.do?id=${u.id}">详细</a></td>
                            </tr>
                          </c:forEach>
                        </table>
<br>

<p align="center"> <c:if test="${sessionScope.p==1 }">
		 <c:if test="${page.page>1}">
              <a href="kcxxList.do?page=1" >首页</a>
             <a href="kcxxList.do?page=${page.page-1 }"> 上一页</a>             </c:if>
    	     <c:if test="${page.page<page.totalPage}">
			<a href="kcxxList.do?page=${page.page+1 }">下一页</a>
			<a href="kcxxList.do?page=${page.totalPage }">末页</a>		    </c:if>		
	</c:if>
	</p>




					
			</div>	
		</div>
	</div>		
</div>
<jsp:include page="qtdown.jsp"></jsp:include>


</body>
</html>

