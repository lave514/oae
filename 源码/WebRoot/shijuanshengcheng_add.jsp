<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>试卷生成</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
String id="";
//xuxyaxodenxglxu
  
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="shijuanshengcheng_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
	int nxuanzetishu = Integer.parseInt(request.getParameter("xuanzetishu"));
	int npanduantishu = Integer.parseInt(request.getParameter("panduantishu"));
	int ntiankongtishu = Integer.parseInt(request.getParameter("tiankongtishu"));
	int nwendatishu = Integer.parseInt(request.getParameter("wendatishu"));

	
String shijuanbianhao=request.getParameter("shijuanbianhao");String kemumingcheng=request.getParameter("kemumingcheng");String danxuanti=request.getParameter("danxuanti");String panduanti=request.getParameter("panduanti");String tiankongti=request.getParameter("tiankongti");String wendati=request.getParameter("wendati");String tianjiaren=request.getParameter("tianjiaren");
String sql3=  "select * from danxuanti where kemumingcheng='"+kemumingcheng+"' ";
CommDAO dao = new CommDAO();
  List<HashMap> userlist1 = dao.select(sql3);

  if(userlist1.size()<nxuanzetishu)
{
	out.print("<script>alert('对不起,单选题数不足!');location.href='sy.jsp';</script>");
	return;
}
String sql4=  "select * from panduanti where kemumingcheng='"+kemumingcheng+"' ";
CommDAO dao2 = new CommDAO();
  List<HashMap> userlist2 = dao2.select(sql4);

  if(userlist2.size()<npanduantishu)
{
	out.print("<script>alert('对不起,判断题数不足!');location.href='sy.jsp';</script>");
	return;
}
String sql5=  "select * from tiankongti where kemumingcheng='"+kemumingcheng+"' ";
CommDAO dao3 = new CommDAO();
  List<HashMap> userlist3 = dao3.select(sql5);

  if(userlist3.size()<ntiankongtishu)
{
	out.print("<script>alert('对不起,填空题数不足!');location.href='sy.jsp';</script>");
	return;
}
String sql7=  "select * from wendati where kemumingcheng='"+kemumingcheng+"' ";
CommDAO dao7 = new CommDAO();
  List<HashMap> userlist7 = dao7.select(sql7);

  if(userlist7.size()<nwendatishu)
{
	out.print("<script>alert('对不起,问答题数不足!');location.href='sy.jsp';</script>");
	return;
}
for(HashMap map:new CommDAO().select("select top " + nxuanzetishu + " id from danxuanti where kemumingcheng='"+kemumingcheng+"' order by newid()")){
id=id+map.get("id")+",";
}
id=id.substring(0,id.length()-1);
		 String id2="";
 for(HashMap map:new CommDAO().select("select top " + ntiankongtishu + " id from tiankongti where kemumingcheng='"+kemumingcheng+"' order by newid()")){

	id2=id2+map.get("id")+",";
}
id2=id2.substring(0,id2.length()-1);
	 String id5="";
 for(HashMap map:new CommDAO().select("select top " + npanduantishu + " id from panduanti where kemumingcheng='"+kemumingcheng+"' order by newid()")){

	id5=id5+map.get("id")+",";
}
id5=id5.substring(0,id5.length()-1);

	 String id6="";
 for(HashMap map:new CommDAO().select("select top " + nwendatishu + " id from wendati where kemumingcheng='"+kemumingcheng+"' order by newid()")){

	id6=id6+map.get("id")+",";
}
id6=id6.substring(0,id6.length()-1);
ext.put("danxuanti",id);
ext.put("tiankongti",id2);
ext.put("panduanti",id5);
ext.put("wendati",id6);
}
new CommDAO().insert(request,response,"shijuanshengcheng",ext,true,false,""); 
%>

  <body >
 <form  action="shijuanshengcheng_add.jsp?f=f"  method="post" name="form1"  onsubmit="return checkform();">
  添加试卷生成:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">试卷编号：</td><td><input name='shijuanbianhao' type='text' id='shijuanbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshijuanbianhao' /></td></tr>
		<tr><td>科目名称：</td><td><%=Info.getselect("kemumingcheng","kemuxinxi","kemumingcheng")%>&nbsp;*<label id='clabelkemumingcheng' /></td></tr>
		
		<tr>
		  <td>班级：</td>
		  <td><%=Info.getselectd("banji","xueshengxinxi","banji")%></td>
     </tr>
		<tr>
		  <td>选择题数：</td>
		  <td><input name='xuanzetishu' type='text' id='xuanzetishu' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td>
     </tr>
		<tr style="display:none">
		  <td>选择题分值：</td>
		  <td><input name='xuanzetifenzhi' type='text' id='xuanzetifenzhi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td>
     </tr>
		<tr>
		  <td>判断题数：</td>
		  <td><input name='panduantishu' type='text' id='panduantishu' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td>
     </tr>
		<tr style="display:none">
		  <td>判断题分值：</td>
		  <td><input name='panduantifenzhi' type='text' id='panduantifenzhi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td>
     </tr>
		<tr>
		  <td>填空题数：</td>
		  <td><input name='tiankongtishu' type='text' id='tiankongtishu' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td>
     </tr>
		<tr style="display:none">
		  <td>填空镇分值：</td>
		  <td><input name='tiankongtifenzhi' type='text' id='tiankongtifenzhi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td>
     </tr>
		<tr>
		  <td>问答题数：</td>
		  <td><input name='wendatishu' type='text' id='wendatishu' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td>
     </tr>
		<tr><td width="200">开始日期：</td><td><input name='kaishiriqi' type='text' id='kaishiriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td width="200">结束日期：</td><td><input name='jieshuriqi' type='text' id='jieshuriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">添加人：</td><td><input name='tianjiaren' type='text' id='tianjiaren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		
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
 
	var shijuanbianhaoobj = document.getElementById("shijuanbianhao"); if(shijuanbianhaoobj.value==""){document.getElementById("clabelshijuanbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入试卷编号</font>";return false;}else{document.getElementById("clabelshijuanbianhao").innerHTML="  "; } 
	var shijuanbianhaoobj = document.getElementById("shijuanbianhao");  
if(shijuanbianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=shijuanshengcheng&col=shijuanbianhao&value="+shijuanbianhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelshijuanbianhao").innerHTML="&nbsp;&nbsp;<font color=red>试卷编号已存在</font>";  
return false;
}else{document.getElementById("clabelshijuanbianhao").innerHTML="  ";  
}  
} 
	var kemumingchengobj = document.getElementById("kemumingcheng"); if(kemumingchengobj.value==""){document.getElementById("clabelkemumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入科目名称</font>";return false;}else{document.getElementById("clabelkemumingcheng").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


