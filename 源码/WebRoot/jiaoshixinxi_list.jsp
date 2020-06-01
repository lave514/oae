<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教师信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有教师信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  教师编号：<input name="jiaoshibianhao" type="text" id="jiaoshibianhao" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  职称：<input name="zhicheng" type="text" id="zhicheng" style='border:solid 1px #000000; color:#666666' size="12" />  所属院系：<input name="suoshuyuanxi" type="text" id="suoshuyuanxi" style='border:solid 1px #000000; color:#666666' size="12" />  身份证：<input name="shenfenzheng" type="text" id="shenfenzheng" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='jiaoshixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>教师编号</td>
    <td bgcolor='#CCFFFF'>密码</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
    <td bgcolor='#CCFFFF'>职称</td>
    <td bgcolor='#CCFFFF'>年龄</td>
    <td bgcolor='#CCFFFF'>所属院系</td>
    <td bgcolor='#CCFFFF'>手机</td>
    <td bgcolor='#CCFFFF'>身份证</td>
    <!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"jiaoshixinxi"); 
    String url = "jiaoshixinxi_list.jsp?1=1"; 
    String sql =  "select * from jiaoshixinxi where 1=1";
	
if(request.getParameter("jiaoshibianhao")=="" ||request.getParameter("jiaoshibianhao")==null ){}else{sql=sql+" and jiaoshibianhao like '%"+request.getParameter("jiaoshibianhao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("zhicheng")=="" ||request.getParameter("zhicheng")==null ){}else{sql=sql+" and zhicheng like '%"+request.getParameter("zhicheng")+"%'";}
if(request.getParameter("suoshuyuanxi")=="" ||request.getParameter("suoshuyuanxi")==null ){}else{sql=sql+" and suoshuyuanxi like '%"+request.getParameter("suoshuyuanxi")+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng")+"%'";}
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
    <td><%=map.get("jiaoshibianhao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("zhicheng") %></td>
    <td><%=map.get("nianling") %></td>
    <td><%=map.get("suoshuyuanxi") %></td>
    <td><%=map.get("shouji") %></td>
    <td><%=map.get("shenfenzheng") %></td>
    <!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="jiaoshixinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="jiaoshixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="jiaoshixinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

