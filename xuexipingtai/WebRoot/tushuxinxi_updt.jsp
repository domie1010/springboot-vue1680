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
		<TITLE>修改图书信息</TITLE>
	    
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
	document.location.href="tushuxinxi_add.jsp?id=<%=id%>";
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
			<form action="updateTushuxinxi.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改图书信息<input type="hidden" name="id" value="${tushuxinxi.id}" /></td>
						</tr>
						<tr ><td width="200">图书编号：</td><td><input name='tushubianhao' type='text' id='tushubianhao' value='<%=connDbBean.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">图书名称：</td><td><input name='tushumingcheng' type='text' id='tushumingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeltushumingcheng' /></td></tr>		<tr ><td width="200">类别：</td><td><input name='leibie' type='text' id='leibie' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">作者：</td><td><input name='zuozhe' type='text' id='zuozhe' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">出版社：</td><td><input name='chubanshe' type='text' id='chubanshe' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">图片：</td><td><input name='tupian' type='text' id='tupian' size='50' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('tupian')" style='border:solid 1px #000000; color:#666666'/>&nbsp;*<label id='clabeltupian' /></td></tr>		<tr ><td width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeljiage' /></td></tr>		<tr ><td width="200">图书简介：</td><td><textarea name='tushujianjie' cols='50' rows='5' id='tushujianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.tushubianhao.value='${tushuxinxi.tushubianhao}';</script>	<script language="javascript">document.form1.tushumingcheng.value='${tushuxinxi.tushumingcheng}';</script>	<script language="javascript">document.form1.leibie.value='${tushuxinxi.leibie}';</script>	<script language="javascript">document.form1.zuozhe.value='${tushuxinxi.zuozhe}';</script>	<script language="javascript">document.form1.chubanshe.value='${tushuxinxi.chubanshe}';</script>	<script language="javascript">document.form1.tupian.value='${tushuxinxi.tupian}';</script>	<script language="javascript">document.form1.jiage.value='${tushuxinxi.jiage}';</script>	<script language="javascript">document.form1.tushujianjie.value='${tushuxinxi.tushujianjie}';</script>	
					 </table>
			</form>
   </body>
</html>






<script language=javascript >  
 
 function checkform(){  
 
	var tushumingchengobj = document.getElementById("tushumingcheng"); if(tushumingchengobj.value==""){document.getElementById("clabeltushumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入图书名称</font>";return false;}else{document.getElementById("clabeltushumingcheng").innerHTML="  "; } 	var tupianobj = document.getElementById("tupian"); if(tupianobj.value==""){document.getElementById("clabeltupian").innerHTML="&nbsp;&nbsp;<font color=red>请输入图片</font>";return false;}else{document.getElementById("clabeltupian").innerHTML="  "; } 	var jiageobj = document.getElementById("jiage"); if(jiageobj.value==""){document.getElementById("clabeljiage").innerHTML="&nbsp;&nbsp;<font color=red>请输入价格</font>";return false;}else{document.getElementById("clabeljiage").innerHTML="  "; } 	    


return true;   
}   
popheight=450;
</script>  
