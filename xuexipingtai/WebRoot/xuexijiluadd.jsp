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
<title>学习记录</title>

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
	var xuexishichangobj = document.getElementById("xuexishichang"); if(xuexishichangobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(xuexishichangobj.value)){document.getElementById("clabelxuexishichang").innerHTML=""; }else{document.getElementById("clabelxuexishichang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      
}
function gow()
{
	document.location.href="xuexijiluadd.jsp?id=<%=id%>";
}
</script>


<body>
<jsp:include page="qttop.jsp"></jsp:include>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">学习记录</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con"> 
					
					<% 




%>

  
<form action="addXuexijilu.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CCCCCC" style="border-collapse:collapse" class="newsline">
						
						<tr ><td width="200">阶段：</td><td><input name='jieduan' type='text' id='jieduan' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jieduan.value='<%=connDbBean.readzd("kechengxinxi","jieduan","id",request.getParameter("id"))%>';document.form1.jieduan.setAttribute("readOnly",'true');</script>		<tr ><td width="200">年级：</td><td><input name='nianji' type='text' id='nianji' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.nianji.value='<%=connDbBean.readzd("kechengxinxi","nianji","id",request.getParameter("id"))%>';document.form1.nianji.setAttribute("readOnly",'true');</script>		<tr ><td width="200">科目：</td><td><input name='kemu' type='text' id='kemu' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.kemu.value='<%=connDbBean.readzd("kechengxinxi","kemu","id",request.getParameter("id"))%>';document.form1.kemu.setAttribute("readOnly",'true');</script>		<tr ><td width="200">视频名称：</td><td><input name='shipinmingcheng' type='text' id='shipinmingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shipinmingcheng.value='<%=connDbBean.readzd("kechengxinxi","shipinmingcheng","id",request.getParameter("id"))%>';document.form1.shipinmingcheng.setAttribute("readOnly",'true');</script>		<tr ><td width="200">学习时长：</td><td><input name='xuexishichang' type='text' id='xuexishichang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelxuexishichang' />必需数字型</td></tr>		<tr ><td width="200">学习进度：</td><td><select name='xuexijindu' id='xuexijindu'><option value="单元1">单元1</option><option value="单元2">单元2</option><option value="单元3">单元3</option><option value="单元4">单元4</option></select></td></tr>		<tr ><td width="200">学习人：</td><td><input name='xuexiren' type='text' id='xuexiren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=(String)request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
		
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

