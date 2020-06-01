<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>试卷生成</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"shijuanshengcheng",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"shijuanshengcheng"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="shijuanshengcheng_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改试卷生成:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>试卷编号：</td><td><input name='shijuanbianhao' type='text' id='shijuanbianhao' value='<%= mmm.get("shijuanbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>科目名称：</td><td><%=Info.getselect("kemumingcheng","kemuxinxi","kemumingcheng")%></td></tr><script language="javascript">document.form1.kemumingcheng.value='<%=mmm.get("kemumingcheng")%>';</script>
     <tr>
       <td>班级：</td>
       <td><%=Info.getselectd("banji","xueshengxinxi","banji")%></td><script language="javascript">document.form1.banji.value='<%=mmm.get("banji")%>';</script>
     </tr>
     <tr>
       <td>选择题数：</td>
       <td><input name='xuanzetishu' type='text' id='xuanzetishu' size='50' value='<%=mmm.get("xuanzetishu")%>' style='border:solid 1px #000000; color:#666666'/></td>
     </tr>
		<tr style="display:none">
       <td>选择题分值：</td>
       <td><input name='xuanzetifenzhi' type='text' id='xuanzetifenzhi' size='50' value='<%=mmm.get("xuanzetifenzhi")%>' style='border:solid 1px #000000; color:#666666'/></td>
     </tr>
     <tr>
       <td>判断题数：</td>
       <td><input name='panduantishu' type='text' id='panduantishu' size='50' value='<%=mmm.get("panduantishu")%>' style='border:solid 1px #000000; color:#666666'/></td>
     </tr>
		<tr style="display:none">
       <td>判断题分值：</td>
       <td><input name='panduantifenzhi' type='text' id='panduantifenzhi' size='50' value='<%=mmm.get("panduantifenzhi")%>' style='border:solid 1px #000000; color:#666666'/></td>
     </tr>
     <tr>
       <td>填空题数：</td>
       <td><input name='tiankongtishu' type='text' id='tiankongtishu' size='50' value='<%=mmm.get("tiankongtishu")%>' style='border:solid 1px #000000; color:#666666'/></td>
     </tr>
		<tr style="display:none">
       <td>填空镇分值：</td>
       <td><input name='tiankongtifenzhi' type='text' id='tiankongtifenzhi' size='50' value='<%=mmm.get("tiankongtifenzhi")%>' style='border:solid 1px #000000; color:#666666'/></td>
     </tr>
     <tr>
       <td>问答题数：</td>
       <td><input name='wendatishu' type='text' id='wendatishu' size='50' value='<%=mmm.get("wendatishu")%>' style='border:solid 1px #000000; color:#666666'/></td>
     </tr>
     <tr><td>单选题：</td><td><input name='danxuanti' type='text' id='danxuanti' size='50' value='<%=mmm.get("danxuanti")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>判断题：</td><td><input name='panduanti' type='text' id='panduanti' size='50' value='<%=mmm.get("panduanti")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>填空题：</td><td><input name='tiankongti' type='text' id='tiankongti' size='50' value='<%=mmm.get("tiankongti")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr>
       <td>问答题：</td>
       <td><input name='tiankongti2' type='text' id='tiankongti2' size='50' value='<%=mmm.get("wendati")%>' style='border:solid 1px #000000; color:#666666'/></td>
     </tr>
     <tr><td>开始日期：</td><td><input name='kaishiriqi' type='text' id='kaishiriqi' value='<%= mmm.get("kaishiriqi")%>' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>
     <tr><td>结束日期：</td><td><input name='jieshuriqi' type='text' id='jieshuriqi' value='<%= mmm.get("jieshuriqi")%>' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>
     <tr><td>添加人：</td><td><input name='tianjiaren' type='text' id='tianjiaren' value='<%= mmm.get("tianjiaren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


