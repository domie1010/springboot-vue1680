<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>学习记录详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  学习记录详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>阶段：</td><td width='39%'>${xuexijilu.jieduan}</td>     <td width='11%'>年级：</td><td width='39%'>${xuexijilu.nianji}</td></tr><tr>     <td width='11%'>科目：</td><td width='39%'>${xuexijilu.kemu}</td>     <td width='11%'>视频名称：</td><td width='39%'>${xuexijilu.shipinmingcheng}</td></tr><tr>     <td width='11%'>学习时长：</td><td width='39%'>${xuexijilu.xuexishichang}</td>     <td width='11%'>学习进度：</td><td width='39%'>${xuexijilu.xuexijindu}</td></tr><tr>     <td width='11%'>学习人：</td><td width='39%'>${xuexijilu.xuexiren}</td>     <td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

