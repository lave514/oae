<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����</title>
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
new CommDAO().update(request,response,"tiankongti",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"tiankongti"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="tiankongti_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸������:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���⣺</td><td><textarea name='shiti' cols='50' rows='5' id='shiti' style='border:solid 1px #000000; color:#666666'><%=mmm.get("shiti")%></textarea></td></tr>     <tr><td>��Ŀ���ƣ�</td><td><%=Info.getselect("kemumingcheng","kemuxinxi","kemumingcheng")%></td></tr><script language="javascript">document.form1.kemumingcheng.value='<%=mmm.get("kemumingcheng")%>';</script>     <tr><td>�𰸣�</td><td><input name='daan' type='text' id='daan' value='<%= mmm.get("daan")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


