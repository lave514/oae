<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�Ծ�����</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>�����Ծ������б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �Ծ��ţ�<input name="shijuanbianhao" type="text" id="shijuanbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ��Ŀ���ƣ�<%=Info.getselect("kemumingcheng","kemuxinxi","kemumingcheng"," 1=1 ")%>  ��ʼ���ڣ�<input name="kaishiriqi1" type="text" id="kaishiriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="kaishiriqi2" type="text" id="kaishiriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  �������ڣ�<input name="jieshuriqi1" type="text" id="jieshuriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="jieshuriqi2" type="text" id="jieshuriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  ����ˣ�<input name="tianjiaren" type="text" id="tianjiaren" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='shijuanshengcheng_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="31" align="center" bgcolor="CCFFFF">���</td>
    <td width="172" bgcolor='#CCFFFF'>�Ծ���</td>
    <td width="149" bgcolor='#CCFFFF'>��Ŀ����</td>
    <td width="202" bgcolor='#CCFFFF'>�༶</td>
    <td width="202" bgcolor='#CCFFFF'>��ѡ��</td>
    <td width="160" bgcolor='#CCFFFF'>��ѡ���ֵ</td>
    <td width="160" bgcolor='#CCFFFF'>�ж���</td>
    <td width="136" bgcolor='#CCFFFF'>�ж����ֵ</td>
    <td width="136" bgcolor='#CCFFFF'>�����</td>
    <td bgcolor='#CCFFFF' width='168' align='left'>������ֵ</td>
    <td bgcolor='#CCFFFF' width='168' align='center'>�ʴ���</td>
    <td bgcolor='#CCFFFF' width='97' align='center'>��ʼ����</td>
    <td bgcolor='#CCFFFF' width='86' align='center'>��������</td>
    <td width="81" bgcolor='#CCFFFF'>�����</td>
    
	<!--dpinglun1-->
    <td width="142" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"shijuanshengcheng"); 
    String url = "shijuanshengcheng_list3.jsp?1=1"; 
    String sql =  "select * from shijuanshengcheng where banji in(select banji from xueshengxinxi where xuehao='"+request.getSession().getAttribute("username")+"')";
	
if(request.getParameter("shijuanbianhao")=="" ||request.getParameter("shijuanbianhao")==null ){}else{sql=sql+" and shijuanbianhao like '%"+request.getParameter("shijuanbianhao")+"%'";}
if(request.getParameter("kemumingcheng")=="" ||request.getParameter("kemumingcheng")==null ){}else{sql=sql+" and kemumingcheng like '%"+request.getParameter("kemumingcheng")+"%'";}
if (request.getParameter("kaishiriqi1")==""  ||request.getParameter("kaishiriqi1")==null ) {}else{sql=sql+" and kaishiriqi >= '"+request.getParameter("kaishiriqi1")+"'";}
if (request.getParameter("kaishiriqi2")==""  ||request.getParameter("kaishiriqi2")==null ) {}else {sql=sql+" and kaishiriqi <= '"+request.getParameter("kaishiriqi2")+"'";}
if (request.getParameter("jieshuriqi1")==""  ||request.getParameter("jieshuriqi1")==null ) {}else{sql=sql+" and jieshuriqi >= '"+request.getParameter("jieshuriqi1")+"'";}
if (request.getParameter("jieshuriqi2")==""  ||request.getParameter("jieshuriqi2")==null ) {}else {sql=sql+" and jieshuriqi <= '"+request.getParameter("jieshuriqi2")+"'";}
if(request.getParameter("tianjiaren")=="" ||request.getParameter("tianjiaren")==null ){}else{sql=sql+" and tianjiaren like '%"+request.getParameter("tianjiaren")+"%'";}
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
    <td width="31" align="center"><%=i %></td>
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
    
	<!--dpinglun2-->
    <td width="142" align="center">
    <%
      String sjbh=(String)map.get("shijuanbianhao");
		sql="select id from cj where sjbh='"+sjbh+"' and username='"+request.getSession().getAttribute("username")+"'";
		CommDAO dao = new CommDAO();
  List<HashMap> userlist1 = dao.select(sql);

  if(userlist1.size()==1)
{
	
}

		 else
		 {
	%>

    <a href="shijuan_detail.jsp?id=<%=map.get("id")%>&jieshuriqi=<%=map.get("jieshuriqi")%>">��ʼ����</a><!--qiatnalijne--> </td>
  </tr>
  	<%
		 }
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

