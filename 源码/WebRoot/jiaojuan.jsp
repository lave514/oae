
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
  <%
 
String id="";
String tmp1;
String tmp2;
int i=0;
int df=0,df2=0,df3=0,df4=0,dfz=0;
String sql="";
String sql2="";
sql="select * from shijuanshengcheng where id="+id+"";
HashMap mmm = new CommDAO().getmaps("id",request.getParameter("id"),"shijuanshengcheng"); 
								
								
								String ddd=(String)mmm.get("danxuanti");
								
								 
								 sql2="select * from danxuanti where id in ("+ddd+")";
								 sql2=sql2+" order by id desc";
								 String sql3="";
for(HashMap mapp:new CommDAO().select(sql2))
{
	i=i+1;
	tmp1=request.getParameter("xztshitida"+String.valueOf(i));
	tmp2=request.getParameter("xztxxa"+String.valueOf(i));
	if(tmp2==null || tmp2=="")
	{}
	else
	{
		//out.print(i);
		if(tmp1.equals(tmp2))
		{
		df=df+2;
		
		}
		else{
			sql3="insert into cuotijilu(username,biao,timuid,sjbh,cwda) values('"+request.getSession().getAttribute("username")+"','danxuanti','"+(String)mapp.get("id")+"','"+request.getParameter("bianhao")+"','"+request.getParameter("xztxxa"+String.valueOf(i))+"')";
	new CommDAO().commOper(sql3);
			}
	}
}
i=0;
 sql="";
 sql2="";
sql="select * from shijuanshengcheng where id="+id+"";
HashMap xxx = new CommDAO().getmaps("id",request.getParameter("id"),"shijuanshengcheng"); 
								
								
								String ttt=(String)xxx.get("tiankongti");
								
								 
								 sql2="select * from tiankongti where id in ("+ttt+")";
								 sql2=sql2+" order by id desc";
								  sql3="";
for(HashMap mapt:new CommDAO().select(sql2))
{
	i=i+1;
	tmp1=request.getParameter("tdtshitida"+String.valueOf(i));
	tmp2=request.getParameter("tktdaan"+String.valueOf(i));
	if(tmp2==null || tmp2=="")
	{}
	else
	{
		if(tmp1.equals(tmp2))
		{
		df2=df2+5;
		}
		else{
			sql3="insert into cuotijilu(username,biao,timuid,sjbh,cwda) values('"+request.getSession().getAttribute("username")+"','tiankongti','"+(String)mapt.get("id")+"','"+request.getParameter("bianhao")+"','"+request.getParameter("tktdaan"+String.valueOf(i))+"')";
	new CommDAO().commOper(sql3);
			}
	}
}

i=0;
 sql="";
 sql2="";
sql="select * from shijuanshengcheng where id="+id+"";
HashMap www = new CommDAO().getmaps("id",request.getParameter("id"),"shijuanshengcheng"); 
								
								
								String ppp=(String)www.get("panduanti");
								
								 
								 sql2="select * from panduanti where id in ("+ppp+")";
								 sql2=sql2+" order by id desc";
								  sql3="";
for(HashMap mapw:new CommDAO().select(sql2))
{
	i=i+1;
	tmp1=request.getParameter("pdtshitida"+String.valueOf(i));
	tmp2=request.getParameter("pdtxxa"+String.valueOf(i));
	if(tmp2==null || tmp2=="")
	{}
	else
	{
		if(tmp1.equals(tmp2))
		{
		df3=df3+5;
		}
		else{
			sql3="insert into cuotijilu(username,biao,timuid,sjbh,cwda) values('"+request.getSession().getAttribute("username")+"','panduanti','"+(String)mapw.get("id")+"','"+request.getParameter("bianhao")+"','"+request.getParameter("pdtxxa"+String.valueOf(i))+"')";
	new CommDAO().commOper(sql3);
			}
	}
}
dfz=df+df2+df3;
 id=request.getParameter("id");
 sql="";

sql="select * from shijuanshengcheng where id="+id+"";


HashMap mvm = new CommDAO().getmaps("id",request.getParameter("id"),"shijuanshengcheng"); 
								
								
								String eee=(String)mvm.get("wendati");
								
								 
								 sql2="select * from wendati where id in ("+eee+")";
								 sql2=sql2+" order by id desc";
								
  
  i=0;
 String sql6="";
 
 
 for(HashMap mapp:new CommDAO().select(sql2)){
 
  i=i+1;

sql6="insert into zgtcj(username,timuid,xueshengdaan,sjbh) values('"+request.getSession().getAttribute("username")+"',"+(String)mapp.get("id")+",'"+request.getParameter("wdtdaan"+String.valueOf(i))+"','"+request.getParameter("bianhao")+"')";
 //out.print(sql3);
 new CommDAO().commOper(sql6); 
 //while(RS_result.next()){

 }


//out.print(df);

sql="insert into cj(username,banji,cj,zcj,sjbh) values('"+request.getSession().getAttribute("username")+"','"+request.getSession().getAttribute("bj")+"',"+dfz+",0,'"+request.getParameter("bianhao")+"')";
	new CommDAO().commOper(sql); 
	

  	  	out.print("<script>alert('交卷成功!!您本次成绩为"+dfz+"分！主观题由管理员进行手动打分');location.href='cj_list2.jsp';</script>");


 %>
  </body>
</html>

