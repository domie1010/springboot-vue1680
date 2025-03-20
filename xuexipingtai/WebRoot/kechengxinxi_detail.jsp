<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>课程信息详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  课程信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>阶段：</td><td width='39%'>${kechengxinxi.jieduan}</td>     <td width='11%'>年级：</td><td width='39%'>${kechengxinxi.nianji}</td></tr><tr>     <td width='11%'>科目：</td><td width='39%'>${kechengxinxi.kemu}</td>     <td width='11%'>视频名称：</td><td width='39%'>${kechengxinxi.shipinmingcheng}</td></tr><tr>     <td width='11%'>学习视频：</td><td width='39%'><a href="play.jsp?spwj=${kechengxinxi.xuexishipin}">点此播放</a></td>     <td width='11%'>浏览次数：</td><td width='39%'>${kechengxinxi.lancishu}</td>     </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

