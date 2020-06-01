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
    <title>试卷生成</title>
  </head>

  <body >
  <p>已有试卷生成列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="29" align="center" bgcolor="CCFFFF">序号</td>
    <td width="207" bgcolor='#CCFFFF'>试卷编号</td>
    <td width="207" bgcolor='#CCFFFF'>科目名称</td>
    <td width="161" bgcolor='#CCFFFF'>班级</td>
    <td width="161" bgcolor='#CCFFFF'>单选题</td>
    <td width="161" bgcolor='#CCFFFF'>单选题分值</td>
    <td width="161" bgcolor='#CCFFFF'>判断题</td>
    <td width="156" bgcolor='#CCFFFF'>判断题分值</td>
    <td width="156" bgcolor='#CCFFFF'>填空题</td>
    <td bgcolor='#CCFFFF' width='142'>填空题分值</td>
    <td bgcolor='#CCFFFF' width='142' align='center'>问答题</td>
    <td bgcolor='#CCFFFF' width='78' align='center'>开始日期</td>
    <td bgcolor='#CCFFFF' width='72' align='center'>结束日期</td>
    <td width="78" bgcolor='#CCFFFF'>添加人</td>
    
    <td width="133" align="center" bgcolor="CCFFFF">添加时间</td>
    

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
以上数据共<%=i %>条
  </body>
</html>

