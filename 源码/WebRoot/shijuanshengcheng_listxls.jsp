<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=shijuanshengcheng.xls");
%>
<html>
  <head>
    <title>�Ծ�����</title>
  </head>

  <body >
  <p>�����Ծ������б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="29" align="center" bgcolor="CCFFFF">���</td>
    <td width="207" bgcolor='#CCFFFF'>�Ծ���</td>
    <td width="207" bgcolor='#CCFFFF'>��Ŀ����</td>
    <td width="161" bgcolor='#CCFFFF'>�༶</td>
    <td width="161" bgcolor='#CCFFFF'>��ѡ��</td>
    <td width="161" bgcolor='#CCFFFF'>��ѡ���ֵ</td>
    <td width="161" bgcolor='#CCFFFF'>�ж���</td>
    <td width="156" bgcolor='#CCFFFF'>�ж����ֵ</td>
    <td width="156" bgcolor='#CCFFFF'>�����</td>
    <td bgcolor='#CCFFFF' width='142'>������ֵ</td>
    <td bgcolor='#CCFFFF' width='142' align='center'>�ʴ���</td>
    <td bgcolor='#CCFFFF' width='78' align='center'>��ʼ����</td>
    <td bgcolor='#CCFFFF' width='72' align='center'>��������</td>
    <td width="78" bgcolor='#CCFFFF'>�����</td>
    
    <td width="133" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "shijuanshengcheng_list.jsp?1=1"; 
    String sql =  "select * from shijuanshengcheng where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="29" align="center"><%=i %></td>
    <td><%=map.get("shijuanbianhao") %></td>
    <td><%=map.get("kemumingcheng") %></td>
    <td><%=map.get("banji") %></td>
    <td><%=map.get("danxuanti") %></td>
    <td><%=map.get("xuanzetifenzhi") %></td>
    <td><%=map.get("panduanti") %></td>
    <td><%=map.get("panduantifenzhi") %></td>
    <td><%=map.get("tiankongti") %></td>
    <td><%=map.get("tiankongtifenzhi") %></td>
    <td><%=map.get("wendati") %></td>
    <td><%=map.get("kaishiriqi") %></td>
    <td><%=map.get("jieshuriqi") %></td>
    <td><%=map.get("tianjiaren") %></td>
    
    <td width="133" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

