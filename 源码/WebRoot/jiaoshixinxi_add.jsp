<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>教师信息</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="jiaoshixinxi_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
//youshenhe
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"jiaoshixinxi",ext,true,false,""); 
%>

  <body >
 <form  action="jiaoshixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加教师信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">教师编号：</td><td><input name='jiaoshibianhao' type='text' id='jiaoshibianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeljiaoshibianhao' /></td></tr>
		<tr><td  width="200">密码：</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelmima' /></td></tr>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr>
		<tr><td  width="200">职称：</td><td><input name='zhicheng' type='text' id='zhicheng' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">年龄：</td><td><input name='nianling' type='text' id='nianling' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">所属院系：</td><td><input name='suoshuyuanxi' type='text' id='suoshuyuanxi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">手机：</td><td><input name='shouji' type='text' id='shouji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshouji' /></td></tr>
		<tr><td  width="200">身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshenfenzheng' /></td></tr>
		<tr style="display:none"><td  width="200">照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var jiaoshibianhaoobj = document.getElementById("jiaoshibianhao"); if(jiaoshibianhaoobj.value==""){document.getElementById("clabeljiaoshibianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入教师编号</font>";return false;}else{document.getElementById("clabeljiaoshibianhao").innerHTML="  "; } 
	var jiaoshibianhaoobj = document.getElementById("jiaoshibianhao");  
if(jiaoshibianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=jiaoshixinxi&col=jiaoshibianhao&value="+jiaoshibianhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeljiaoshibianhao").innerHTML="&nbsp;&nbsp;<font color=red>教师编号已存在</font>";  
return false;
}else{document.getElementById("clabeljiaoshibianhao").innerHTML="  ";  
}  
} 
	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 
	var shoujiobj = document.getElementById("shouji"); if(shoujiobj.value==""){document.getElementById("clabelshouji").innerHTML="&nbsp;&nbsp;<font color=red>请输入手机</font>";return false;}else{document.getElementById("clabelshouji").innerHTML="  "; } 
	var shoujiobj = document.getElementById("shouji");  
if(shoujiobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=jiaoshixinxi&col=shouji&value="+shoujiobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelshouji").innerHTML="&nbsp;&nbsp;<font color=red>手机已存在</font>";  
return false;
}else{document.getElementById("clabelshouji").innerHTML="  ";  
}  
} 
	var shoujiobj = document.getElementById("shouji"); if(shoujiobj.value!=""){ if(/^1[3|4|5|8][0-9]\d{4,8}$/.test(shoujiobj.value)){document.getElementById("clabelshouji").innerHTML=""; }else{document.getElementById("clabelshouji").innerHTML="&nbsp;&nbsp;<font color=red>必需手机格式</font>"; return false;}}  
    var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value==""){document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入身份证</font>";return false;}else{document.getElementById("clabelshenfenzheng").innerHTML="  "; } 
	var shenfenzhengobj = document.getElementById("shenfenzheng");  
if(shenfenzhengobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=jiaoshixinxi&col=shenfenzheng&value="+shenfenzhengobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>身份证已存在</font>";  
return false;
}else{document.getElementById("clabelshenfenzheng").innerHTML="  ";  
}  
} 
	var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value!=""){ if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value)){document.getElementById("clabelshenfenzheng").innerHTML=""; }else{document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>必需身份证格式</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


