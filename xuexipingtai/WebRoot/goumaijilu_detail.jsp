<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>购买记录详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  购买记录详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>订单号：</td><td width='39%'>${goumaijilu.dingdanhao}</td>     <td width='11%'>图书编号：</td><td width='39%'>${goumaijilu.tushubianhao}</td></tr><tr>     <td width='11%'>图书名称：</td><td width='39%'>${goumaijilu.tushumingcheng}</td>     <td width='11%'>类别：</td><td width='39%'>${goumaijilu.leibie}</td></tr><tr>     <td width='11%'>作者：</td><td width='39%'>${goumaijilu.zuozhe}</td>     <td width='11%'>出版社：</td><td width='39%'>${goumaijilu.chubanshe}</td></tr><tr>     <td width='11%'>价格：</td><td width='39%'>${goumaijilu.jiage}</td>     <td width='11%'>购买数量：</td><td width='39%'>${goumaijilu.goumaishuliang}</td></tr><tr>     <td width='11%'>购买金额：</td><td width='39%'>${goumaijilu.goumaijine}</td>     <td width='11%'>购买人：</td><td width='39%'>${goumaijilu.goumairen}</td>     </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

