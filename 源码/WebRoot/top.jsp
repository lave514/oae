<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>javascript:alert('�Բ������ѳ�ʱ��δ��½,����IE�����´򿪵�½��');window.close();</script>");
	out.close();
}
%>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
.STYLE7 {color: #FFFFFF; }
-->
</style>
  </head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table id="__01" width="100%" height="130" border="0" cellpadding="0" cellspacing="0">
 <tr height="126">
			<td height="126" colspan="3" width="100%" ><table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="78" height="71" background="images/1_01_01.jpg">&nbsp;</td>
                <td width="1237" background="images/f2.gif"><div style="font-family:����; color:#99FF00; WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 36px; margin-top:5pt">
                  �γ����߲���
                </div></td>
                <td width="236" background="images/f1.gif"><table width="240" border="0" align="right" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="37%" height="40">&nbsp;</td>
                    <td width="31%">&nbsp;</td>
                    <td width="32%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center"><a href="sy.jsp" target="mainFrame"><span class="STYLE7">����</span></a></td>
                    <td align="center"><a  onClick="javascript:alert('��������Ȩ�Ȼ������������Լ�˵����ɣ�лл������');" style="cursor:pointer"><span class="STYLE7">����</span></a></td>
                    <td align="center"><a href="logout.jsp" target="_parent"><span class="STYLE7">�˳�</span></a></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="55" colspan="3" background="images/1_01_02.jpg"><table width="100%" height="55" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="13" align="center">&nbsp;</td>
                      <td width="178" align="left"><img src="images/siteico.gif"> ��ǰ�û���<%=request.getSession().getAttribute("username")%><br>                          <img src="images/document.gif"> Ȩ�ޣ�<%=request.getSession().getAttribute("cx")%></td>
                      <td width="1124" background="images/aff2.gif">&nbsp;</td>
                      <td width="225" background="images/aff2.gif">&nbsp;</td>
                      <td width="13" background="images/aff2.gif">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
            </table></td>
		</tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</BODY></HTML>