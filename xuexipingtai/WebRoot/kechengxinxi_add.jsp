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
		<TITLE>添加课程信息</TITLE>
	    

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
	document.location.href="kechengxinxi_add.jsp?id=<%=id%>";
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
			<form action="addKechengxinxi.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">添加课程信息</td>
						</tr>
						<tr ><td width="200">阶段：</td><td><select name='jieduan' id='jieduan'><option value="小学">小学</option><option value="初中">初中</option><option value="高中">高中</option></select></td></tr>		<tr ><td width="200">年级：</td><td><select name='nianji' id='nianji'><option value="1年级">1年级</option><option value="2年级">2年级</option><option value="3年级">3年级</option><option value="4年级">4年级</option><option value="5年级">5年级</option><option value="6年级">6年级</option></select></td></tr>		<tr ><td width="200">科目：</td><td><select name='kemu' id='kemu'><option value="语文">语文</option><option value="数学">数学</option><option value="英语">英语</option><option value="政治">政治</option><option value="历史">历史</option><option value="地理">地理</option><option value="生物">生物</option><option value="物理">物理</option><option value="化学">化学</option></select></td></tr>		<tr ><td width="200">视频名称：</td><td><input name='shipinmingcheng' type='text' id='shipinmingcheng' value='' onblur='hsgcheck()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshipinmingcheng' /></td></tr>		<tr ><td width="200">学习视频：</td><td><input name='xuexishipin' type='text' id='xuexishipin' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('xuexishipin')" style='border:solid 1px #000000; color:#666666'/></td></tr>		<tr ><td width="200">浏览次数：</td><td><input name='lancishu' type='text' id='lancishu' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabellancishu' />必需数字型</td></tr>		
		
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
function hsgcheck() {
		var shipinmingcheng = $("#shipinmingcheng").val();
		if(shipinmingcheng==""||(shipinmingcheng.length<6||shipinmingcheng.length>12)){
			 $("#clabelshipinmingcheng").html("<font color=red>视频名称不能为空且长度在3～12位之间！</font>");
			 $("input[id=shipinmingcheng]").focus();
			 $("#querenzhuce").attr("disabled","disabled");
			 return false;
		} 
		else
		{
			$("#clabelshipinmingcheng").html("");
			$.ajax({
				url : "quchongKechengxinxi.do",
				type : "post",
				data : "shipinmingcheng=" + shipinmingcheng,
				dataType : "json",
				success:function(result){
				if(result.info=="ng"){
					$("#clabelshipinmingcheng").html("<font color=red>视频名称已存在，请更换！</font>");
					$("input[id=shipinmingcheng]").focus();
					$("#querenzhuce").attr("disabled","disabled");
					return false;
				}
				else
				{
					$("#querenzhuce").removeAttr("disabled");
				}
				},
				error:function(){
					$("#clabelshipinmingcheng").html("系统异常，请检查错误！");
					$("input[id=shipinmingcheng]").focus();
					$("#querenzhuce").attr("disabled","disabled");
					return false;
				}
			});
		}
	}
</script>


<script language=javascript >  
 
 function checkform(){  
 
	var shipinmingchengobj = document.getElementById("shipinmingcheng"); if(shipinmingchengobj.value==""){document.getElementById("clabelshipinmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入视频名称</font>";return false;}else{document.getElementById("clabelshipinmingcheng").innerHTML="  "; } 	var lancishuobj = document.getElementById("lancishu"); if(lancishuobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(lancishuobj.value)){document.getElementById("clabellancishu").innerHTML=""; }else{document.getElementById("clabellancishu").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
