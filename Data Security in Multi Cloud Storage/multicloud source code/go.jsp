
<%@ include file="oheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>

  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  
 
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->


  <meta charset="UTF-8">


  <link rel="stylesheet" href="normalize.css">

    <link rel="stylesheet" href="style.css" media="screen" type="text/css" />

</head>
<%@ page import="java.io.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;boolean s=false;
String filename=null,pkey=null,fid=null,fnm=null,sk=null;
StringBuilder  binary1=null,binary2=null,binary3=null,binary4=null;
String data1=null,data2=null,data3=null,data4=null;
byte sig1[]=null,sig2[]=null,sig3[]=null,sig4[]=null;
%>
 <%
 try{
 fid=request.getParameter("id");
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
ResultSet rs=st1.executeQuery("select *from clouds where sts!='Active' ");
while(rs.next()){
s=true;
}
System.out.println(s);
if(s){
	s=false;
response.sendRedirect("verifys.jsp?id="+fid+"&fnm="+request.getParameter("fnm")+" ");
}else{
	s=false;
response.sendRedirect("file_download.jsp?id="+fid+"&fnm="+request.getParameter("fnm")+"");
}
}catch(Exception e){e.printStackTrace();}
%>

