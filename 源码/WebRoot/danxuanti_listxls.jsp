<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=danxuanti.xls");
%>
<html>
  <head>
    <title>��ѡ��</title>
  </head>

  <body >
  <p>���е�ѡ���б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td>        <td bgcolor='#CCFFFF'>��Ŀ����</td>    <td bgcolor='#CCFFFF'>ѡ��A</td>    <td bgcolor='#CCFFFF'>ѡ��B</td>    <td bgcolor='#CCFFFF'>ѡ��C</td>    <td bgcolor='#CCFFFF'>ѡ��D</td>    <td bgcolor='#CCFFFF'>��</td>    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "danxuanti_list.jsp?1=1"; 
    String sql =  "select * from danxuanti where 1=1";
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
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>        <td><%=map.get("kemumingcheng") %></td>    <td><%=map.get("xuanxiangA") %></td>    <td><%=map.get("xuanxiangB") %></td>    <td><%=map.get("xuanxiangC") %></td>    <td><%=map.get("xuanxiangD") %></td>    <td><%=map.get("daan") %></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

