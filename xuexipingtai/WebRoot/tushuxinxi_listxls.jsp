<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="tushuxinxihsgb" scope="page" class="com.bean.TushuxinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=tushuxinxi.xls");
%>
<html>
  <head>
    <title>图书信息</title>
  </head>

  <body >
 <%
			String sql="select * from tushuxinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td align='center'>图书编号</td>    <td align='center'>图书名称</td>    <td align='center'>类别</td>    <td align='center'>作者</td>    <td align='center'>出版社</td>    <td  width='90' align='center'>图片</td>    <td align='center'>价格</td>        
	
    <td width="120" align="center" bgcolor="CCFFFF">添加时间</td>
    
  </tr>
   <%		
				List pagelist3=tushuxinxihsgb.getAllTushuxinxi(10);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.tushubianhao}</td>    <td>${u.tushumingcheng}</td>    <td>${u.leibie}</td>    <td>${u.zuozhe}</td>    <td>${u.chubanshe}</td>    <td width='90' align='center'><a href='${u.tupian}' target='_blank'><img src='${u.tupian}' width=88 height=99 border=0 /></a></td>    <td>${u.jiage}</td>        
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

