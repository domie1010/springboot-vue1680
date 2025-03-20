<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="xuexijiluhsgb" scope="page" class="com.bean.XuexijiluBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xuexijilu.xls");
%>
<html>
  <head>
    <title>学习记录</title>
  </head>

  <body >
 <%
			String sql="select * from xuexijilu  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td align='center'>阶段</td>    <td align='center'>年级</td>    <td align='center'>科目</td>    <td align='center'>视频名称</td>    <td align='center'>学习时长</td>    <td align='center'>学习进度</td>    <td align='center'>学习人</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">添加时间</td>
    
  </tr>
   <%		
				List pagelist3=xuexijiluhsgb.getAllXuexijilu(9);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.jieduan}</td>    <td>${u.nianji}</td>    <td>${u.kemu}</td>    <td>${u.shipinmingcheng}</td>    <td>${u.xuexishichang}</td>    <td>${u.xuexijindu}</td>    <td>${u.xuexiren}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

