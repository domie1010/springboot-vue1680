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
<title>购买记录</title>

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
<%
if(request.getSession().getAttribute("username")==null)
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.do';</script>");
	return;
}
  String id="";


 



   %>


	
	<script language="javascript">
function checkform()
{
	var goumaishuliangobj = document.getElementById("goumaishuliang"); if(goumaishuliangobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(goumaishuliangobj.value)){document.getElementById("clabelgoumaishuliang").innerHTML=""; }else{document.getElementById("clabelgoumaishuliang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      var goumaijinej=1;if(document.getElementById("jiage").value!=""){goumaijinej=goumaijinej*parseFloat(document.getElementById("jiage").value);}if(document.getElementById("goumaishuliang").value!=""){goumaijinej=goumaijinej*parseFloat(document.getElementById("goumaishuliang").value);}document.getElementById("goumaijine").value=goumaijinej;	
}
function gow()
{
	document.location.href="goumaijiluadd.jsp?id=<%=id%>";
}
</script>


<body>
<jsp:include page="qttop.jsp"></jsp:include>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">购买记录</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con"> 
					
					<% 




%>

  
<form action="addGoumaijilu.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CCCCCC" style="border-collapse:collapse" class="newsline">
						
						<tr ><td width="200">订单号：</td><td><input name='dingdanhao' type='text' id='dingdanhao' value='<%=connDbBean.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">图书编号：</td><td><input name='tushubianhao' type='text' id='tushubianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.tushubianhao.value='<%=connDbBean.readzd("tushuxinxi","tushubianhao","id",request.getParameter("id"))%>';document.form1.tushubianhao.setAttribute("readOnly",'true');</script>		<tr ><td width="200">图书名称：</td><td><input name='tushumingcheng' type='text' id='tushumingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.tushumingcheng.value='<%=connDbBean.readzd("tushuxinxi","tushumingcheng","id",request.getParameter("id"))%>';document.form1.tushumingcheng.setAttribute("readOnly",'true');</script>		<tr ><td width="200">类别：</td><td><input name='leibie' type='text' id='leibie' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.leibie.value='<%=connDbBean.readzd("tushuxinxi","leibie","id",request.getParameter("id"))%>';document.form1.leibie.setAttribute("readOnly",'true');</script>		<tr ><td width="200">作者：</td><td><input name='zuozhe' type='text' id='zuozhe' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zuozhe.value='<%=connDbBean.readzd("tushuxinxi","zuozhe","id",request.getParameter("id"))%>';document.form1.zuozhe.setAttribute("readOnly",'true');</script>		<tr ><td width="200">出版社：</td><td><input name='chubanshe' type='text' id='chubanshe' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.chubanshe.value='<%=connDbBean.readzd("tushuxinxi","chubanshe","id",request.getParameter("id"))%>';document.form1.chubanshe.setAttribute("readOnly",'true');</script>		<tr ><td width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiage.value='<%=connDbBean.readzd("tushuxinxi","jiage","id",request.getParameter("id"))%>';document.form1.jiage.setAttribute("readOnly",'true');</script>		<tr ><td width="200">购买数量：</td><td><input name='goumaishuliang' type='text' id='goumaishuliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelgoumaishuliang' />必需数字型</td></tr>		<tr ><td width="200">购买金额：</td><td><input name='goumaijine' type='text' id='goumaijine' value='' onblur='' style='border:solid 1px #000000; color:#666666' readonly='readonly' /> 此项不必填写，系统自动计算</td></tr>		<tr 0><td width="200">购买人：</td><td><input name='goumairen' type='text' id='goumairen' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=(String)request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						      <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
			<script language="javascript">popheight = 450;</script>
					
			</div>	
		</div>
	</div>		
</div>
<jsp:include page="qtdown.jsp"></jsp:include>


</body>
</html>

