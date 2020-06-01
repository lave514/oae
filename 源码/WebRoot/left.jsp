<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<HTML>
<HEAD>
<TITLE>后台管理导航</TITLE>
<script src="js/menu.js"></script>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312" />

<link rel="stylesheet" href="images/CssAdmin.css">



<style type="text/css">
<!--
.STYLE1 {
	color: #FFFFFF;
	font-weight: bold;
}
body {
	background-image: url(images/ffef.gif);
}
.STYLE3 {color: #0000FF}
-->
</style>
</HEAD>

<BODY>
<table cellpadding="0" cellspacing="0" width="189" align="center">
  <tr>
    <td height="28"  background="images/admin_left_09.gif" id="menuTitle1" onClick="show('1')" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="83%"><span class=" STYLE1">＋用户管理</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="display:none" align="right" id="show1">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/gr.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="yhzhgl.jsp" target="mainFrame">系统管理员</a></td>
    </tr>
    
	<tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="mod.jsp" target="mainFrame">修改密码</a></td>
    </tr>
  </table>
    
      </td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" width="189" align="center">
  <tr>
    <td height="28"  background="images/admin_left_09.gif" id="menuTitle1" onClick="show('2')" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="83%"><span class=" STYLE1">＋用户信息</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="display:none" align="right" id="show2"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/gr.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="xueshengxinxi_add.jsp" target="mainFrame">学生信息添加</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="xueshengxinxi_list.jsp" target="mainFrame">学生信息查询</a></td>
    </tr>
	
	
	 <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="jiaoshixinxi_add.jsp" target="mainFrame">教师信息添加</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="jiaoshixinxi_list.jsp" target="mainFrame">教师信息查询</a></td>
    </tr>
	
	
  </table>
    </td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" width="189" align="center">
  <tr>
    <td height="28"  background="images/admin_left_09.gif" id="menuTitle1" onClick="show('3')" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="83%"><span class=" STYLE1">＋科目信息</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="display:none" align="right" id="show3"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/gr.gif">
    <!-- <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="kemuxinxi_add.jsp" target="mainFrame">科目信息添加</a></td>
    </tr>-->
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="kemuxinxi_list.jsp" target="mainFrame">科目信息查询</a></td>
    </tr>
  </table>
    </td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" width="189" align="center">
  <tr>
    <td height="28"  background="images/admin_left_09.gif" id="menuTitle1" onClick="show('4')" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="83%"><span class=" STYLE1">＋试题库</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="display:none" align="right" id="show4"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/gr.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="panduanti_list.jsp" target="mainFrame">判断题查询</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="danxuanti_list.jsp" target="mainFrame">选择题查询</a></td>
    </tr>
	
	<tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="tiankongti_list.jsp" target="mainFrame">填空题查询</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="wendati_list.jsp" target="mainFrame">主观题查询</a></td>
    </tr>
	
	
  </table>
    </td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" width="189" align="center">
  <tr>
    <td height="28"  background="images/admin_left_09.gif" id="menuTitle1" onClick="show('5')" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="83%"><span class=" STYLE1">＋试题信息</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="display:none" align="right" id="show5"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/gr.gif">
    <!-- <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="xinwentongzhi_add.jsp?lb=站内新闻" target="mainFrame">站内新闻添加</a></td>
    </tr>-->
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="shijuanshengcheng_list.jsp" target="mainFrame">试题信息查询</a></td>
    </tr>
  </table>
    </td>
  </tr>
</table>
<table cellpadding="0" cellspacing="0" width="189" align="center">
  <tr>
    <td height="28"  background="images/admin_left_09.gif" id="menuTitle1" onClick="show('6')" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="83%"><span class=" STYLE1">＋成绩信息</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="display:none" align="right" id="show6"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/gr.gif">
    <!-- <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="xinwentongzhi_add.jsp?lb=站内新闻" target="mainFrame">站内新闻添加</a></td>
    </tr>-->
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="cj_list.jsp" target="mainFrame">成绩信息查询</a></td>
    </tr>
  </table>
    </td>
  </tr>
</table>
<!--<table cellpadding="0" cellspacing="0" width="189" align="center">
  <tr>
    <td height="28"  background="images/admin_left_09.gif" id="menuTitle1" onClick="show('7')" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="83%"><span class=" STYLE1">＋站内新闻</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="display:none" align="right" id="show7"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/gr.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="xinwentongzhi_add.jsp?lb=站内新闻" target="mainFrame">站内新闻添加</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="xinwentongzhi_list.jsp?lb=站内新闻" target="mainFrame">站内新闻查询</a></td>
    </tr>
  </table>
    </td>
  </tr>
</table>-->
<!--<table cellpadding="0" cellspacing="0" width="189" align="center">
  <tr>
    <td height="28"  background="images/admin_left_09.gif" id="menuTitle1" onClick="show('8')" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="83%"><span class=" STYLE1">＋站内新闻</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="display:none" align="right" id="show8"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/gr.gif">
     <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="xinwentongzhi_add.jsp?lb=站内新闻" target="mainFrame">站内新闻添加</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="xinwentongzhi_list.jsp?lb=站内新闻" target="mainFrame">站内新闻查询</a></td>
    </tr>
  </table>
    </td>
  </tr>
</table>-->


<!--<table cellpadding="0" cellspacing="0" width="189" align="center">
  <tr>
    <td height="28"  background="images/admin_left_09.gif" id="menuTitle1" onClick="show('11')" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="83%"><span class=" STYLE1">＋系统管理</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="display:none" align="right" id="show11"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/gr.gif">
   <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="shanchushuju.jsp" target="mainFrame">批量删除</a></td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="liuyanban_list.jsp" target="mainFrame">留言管理</a></td>
    </tr>
	<tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="youqinglianjie_add.jsp" target="mainFrame">友情连接添加</a></td>
    </tr>
	<tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="youqinglianjie_list.jsp" target="mainFrame">友情连接添加</a></td>
    </tr>
	<tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="dx.jsp?lb=系统公告" target="mainFrame">系统公告设置</a></td>
    </tr>
	<tr>
      <td width="36" height="22"></td>
      <td class="SystemLeft"><a href="dx.jsp?lb=系统简介" target="mainFrame">系统简介设置</a></td>
    </tr>
  </table>
    </td>
  </tr>
</table>-->


<table cellpadding="0" cellspacing="0" width="189" align="center">
  <tr>
    <td height="28"  background="images/admin_left_09.gif" id="menuTitle208"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="83%"><span class=" STYLE1">系统信息</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="right">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/gr.gif">
    <tr>
      <td width="36" height="22"></td>
      <td class="STYLE3">版权：xxxxx</td>
    </tr>
    <tr>
      <td width="36" height="22"></td>
      <td class="STYLE3">开发时间：<%java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);%>	</td>
    </tr>
	<tr>
      <td width="36" height="22"></td>
      <td class=" STYLE3">学校：xxxxx</td>
    </tr>
  </table>
    </td>
  </tr>
</table>
</BODY>
</HTML>
