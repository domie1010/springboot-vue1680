<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>图书信息详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  图书信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>图书编号：</td><td width='39%'>${tushuxinxi.tushubianhao}</td><td  rowspan=6 align=center><a href=${tushuxinxi.tupian} target=_blank><img src=${tushuxinxi.tupian} width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>图书名称：</td><td width='39%'>${tushuxinxi.tushumingcheng}</td></tr><tr><td width='11%' height=44>类别：</td><td width='39%'>${tushuxinxi.leibie}</td></tr><tr><td width='11%' height=44>作者：</td><td width='39%'>${tushuxinxi.zuozhe}</td></tr><tr><td width='11%' height=44>出版社：</td><td width='39%'>${tushuxinxi.chubanshe}</td></tr><tr><td width='11%' height=44>价格：</td><td width='39%'>${tushuxinxi.jiage}</td></tr><tr><td width='11%' height=100  >图书简介：</td><td width='39%' colspan=2 height=100 >${tushuxinxi.tushujianjie}</td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

