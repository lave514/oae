<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ѧ����Ϣ</title>
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
new CommDAO().update(request,response,"xueshengxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"xueshengxinxi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="xueshengxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸�ѧ����Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>ѧ�ţ�</td><td><input name='xuehao' type='text' id='xuehao' value='<%= mmm.get("xuehao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>
     <tr><td>�ֻ���</td><td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�༶��</td><td><input name='banji' type='text' id='banji' value='<%= mmm.get("banji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>רҵ��</td><td><input name='zhuanye' type='text' id='zhuanye' value='<%= mmm.get("zhuanye")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' size='50' value='<%=mmm.get("shenfenzheng")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr style="display:none"><td>��Ƭ��</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= mmm.get("zhaopian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


