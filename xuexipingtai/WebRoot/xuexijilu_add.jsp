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
		<TITLE>添加学习记录</TITLE>
	    

 	<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>      
	</head>
<%
  String id="";
   %>

<script language="javascript">

function gows()
{
	document.location.href="xuexijilu_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>
	<body>
			<form action="addXuexijilu.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">添加学习记录</td>
						</tr>
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
   </body>
</html>






<script language=javascript >  
 
 function checkform(){  
 
	var xuexishichangobj = document.getElementById("xuexishichang"); if(xuexishichangobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(xuexishichangobj.value)){document.getElementById("clabelxuexishichang").innerHTML=""; }else{document.getElementById("clabelxuexishichang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
