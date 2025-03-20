<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<TITLE>学习记录查询</TITLE>
	<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
	</head>
	<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr valign="top">
				<td>
					<table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#aec3de">
						<tr align="left" bgcolor="#F2FDFF">
							<td colspan="17" background="images/table_header.gif">学习记录列表</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr valign="top">
			  <td bgcolor="#FFFFFF">
			  <table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#aec3de">
						
					<tr align="right" bgcolor="#ebf0f7">
					  <td colspan="21">
					  <table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" >
						<tr align="left" >
							<td colspan="17">
								<form action="xuexijiluList2.do" name="myform" method="post">
									查询   阶段：<input name="jieduan" type="text" id="jieduan" style='border:solid 1px #000000; color:#666666' size="12" />  年级：<input name="nianji" type="text" id="nianji" style='border:solid 1px #000000; color:#666666' size="12" />  科目：<input name="kemu" type="text" id="kemu" style='border:solid 1px #000000; color:#666666' size="12" />  视频名称：<input name="shipinmingcheng" type="text" id="shipinmingcheng" style='border:solid 1px #000000; color:#666666' size="12" /> 学习进度：<select name='xuexijindu' id='xuexijindu' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="单元1">单元1</option><option value="单元2">单元2</option><option value="单元3">单元3</option><option value="单元4">单元4</option></select>  学习人：<input name="xuexiren" type="text" id="xuexiren" style='border:solid 1px #000000; color:#666666' size="12" />
									<input type="submit" value="查询" />
								</form>								</td>
						</tr></table>
					  </td>
			    </tr>
					
						<tr align="center">
						<td style="padding-left:0px; padding-right:0px;"><table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#ebf0f7">
                          <tr>
                            <td align="center" bgcolor="#ebf0f7" width="30px">序号</td>
                            <td align='center'>阶段</td>    <td align='center'>年级</td>    <td align='center'>科目</td>    <td align='center'>视频名称</td>    <td align='center'>学习时长</td>    <td align='center'>学习进度</td>    <td align='center'>学习人</td>    
                            <td align="center" bgcolor="#ebf0f7" width="150px"> 添加时间 </td>
                            <td align="center" bgcolor="#ebf0f7" width="150px"> 操作 </td>
                          </tr>
                          <%
					int i=0;
				%>
                          <c:forEach items="${list }" var="u">
                            <%
					i++;
				%>
                            <tr align="center" bgcolor="#FFFFFF">
                              <td align="center"><%=i%></td>
                             <td>${u.jieduan}</td>    <td>${u.nianji}</td>    <td>${u.kemu}</td>    <td>${u.shipinmingcheng}</td>    <td>${u.xuexishichang}</td>    <td>${u.xuexijindu}</td>    <td>${u.xuexiren}</td>    
                              <td align="center"> ${u.addtime } </td>
                              <td align="center"><a href="doUpdateXuexijilu.do?id=${u.id }">编辑</a>  <a href="deleteXuexijilu.do?id=${u.id }"
										onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">删除</a> <a href="xxjlDetail.do?id=${u.id }" target="_blank">详细</a></td>
                            </tr>
                          </c:forEach>
                        </table></td>
						</tr>
					</table>
					
					
			  </td>
	  </tr>
		</table>
		
		
		
			<p align="center"> <c:if test="${sessionScope.p==1 }">
		 <c:if test="${page.page>1}">
              <a href="xuexijiluList2.do?page=1" >首页</a>
             <a href="xuexijiluList2.do?page=${page.page-1 }"> 上一页</a>             </c:if>
    	     <c:if test="${page.page<page.totalPage}">
			<a href="xuexijiluList2.do?page=${page.page+1 }">下一页</a>
			<a href="xuexijiluList2.do?page=${page.totalPage }">末页</a>		    </c:if>		
	</c:if>
	</p>
			
			
			
			
			
	</body>
</html>
