<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>单选题</title>
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
	document.location.href="danxuanti_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
<%
//xuxyaxodenxglxu
  
String sql3=  "select * from danxuanti where bianhao='"+request.getParameter("bianhao")+"' and kemumingcheng='"+request.getParameter("kemumingcheng")+"'";
CommDAO dao = new CommDAO();
  List<HashMap> userlist1 = dao.select(sql3);

  if(userlist1.size()==1)
{
	out.print("<script>alert('对不起,此科目的此编号已经存在!');location.href='sy.jsp';</script>");
	return;
}


   %>
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
//youshenhe
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"danxuanti",ext,true,false,""); 
%>

  <body >
 <form  action="danxuanti_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加单选题:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelbianhao' /></td></tr>
		<tr><td  width="200">试题：</td><td><textarea name='shiti' cols='50' rows='5' id='shiti' onblur='checkform()' style='border:solid 1px #000000; color:#666666' ></textarea>&nbsp;*<label id='clabelshiti' /></td></tr>
		<tr><td>科目名称：</td><td><%=Info.getselect("kemumingcheng","kemuxinxi","kemumingcheng")%></td></tr>
		<tr><td  width="200">选项A：</td><td><input name='xuanxiangA' type='text' id='xuanxiangA' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">选项B：</td><td><input name='xuanxiangB' type='text' id='xuanxiangB' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">选项C：</td><td><input name='xuanxiangC' type='text' id='xuanxiangC' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">选项D：</td><td><input name='xuanxiangD' type='text' id='xuanxiangD' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td>答案：</td><td><select name='daan' id='daan'><option value="A">A</option><option value="B">B</option><option value="C">C</option><option value="D">D</option></select></td></tr>
		
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
 
	var bianhaoobj = document.getElementById("bianhao"); if(bianhaoobj.value==""){document.getElementById("clabelbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入编号</font>";return false;}else{document.getElementById("clabelbianhao").innerHTML="  "; } 
	

	var shitiobj = document.getElementById("shiti"); if(shitiobj.value==""){document.getElementById("clabelshiti").innerHTML="&nbsp;&nbsp;<font color=red>请输入试题</font>";return false;}else{document.getElementById("clabelshiti").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


