<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��ѡ��</title>
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
new CommDAO().update(request,response,"danxuanti",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"danxuanti"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="danxuanti_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸ĵ�ѡ��:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���⣺</td><td><textarea name='shiti' cols='50' rows='5' id='shiti' style='border:solid 1px #000000; color:#666666'><%=mmm.get("shiti")%></textarea></td></tr>     <tr><td>��Ŀ���ƣ�</td><td><%=Info.getselect("kemumingcheng","kemuxinxi","kemumingcheng")%></td></tr><script language="javascript">document.form1.kemumingcheng.value='<%=mmm.get("kemumingcheng")%>';</script>     <tr><td>ѡ��A��</td><td><input name='xuanxiangA' type='text' id='xuanxiangA' value='<%= mmm.get("xuanxiangA")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѡ��B��</td><td><input name='xuanxiangB' type='text' id='xuanxiangB' value='<%= mmm.get("xuanxiangB")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѡ��C��</td><td><input name='xuanxiangC' type='text' id='xuanxiangC' value='<%= mmm.get("xuanxiangC")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѡ��D��</td><td><input name='xuanxiangD' type='text' id='xuanxiangD' value='<%= mmm.get("xuanxiangD")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�𰸣�</td><td><select name='daan' id='daan'><option value="A">A</option><option value="B">B</option><option value="C">C</option><option value="D">D</option></select></td></tr><script language="javascript">document.form1.daan.value='<%=mmm.get("daan")%>';</script>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


