
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
StringBuffer sb1=null;
String filename=null,pkey=null,fid=null,fnm=null,sk=null;
StringBuilder  binary1=null,binary2=null,binary3=null,binary4=null;
String data1=null,data2=null,data3=null;
byte sig1[]=null,sig2[]=null,sig3[]=null,sig4[]=null;
Connection con=null;
%>
 <%
 try{ fid=request.getParameter("fid");
 fnm=request.getParameter("filename");
 con=databasecon.getconnection();
Statement st1 = con.createStatement();
ResultSet rs=st1.executeQuery("select *from  store where fid="+fid+"");
if(rs.next())
{
sig1=rs.getBytes("sig1");
sig2=rs.getBytes("sig2");
sig3=rs.getBytes("sig3");
}
for(int i=1;i<=6;i++){
	String db="cloud"+i;
 Connection con1=databasecon.getconnection(db);
if(i<=2){
	 try{
PreparedStatement ps=con1.prepareStatement("insert into  "+db+" values(?,?,?,?)");
ps.setInt(1,Integer.parseInt(fid));
ps.setString(2,fnm);
ps.setBytes(3,sig1);
ps.setBytes(4,(byte[])session.getAttribute("c"));
ps.executeUpdate();
 }
 catch(Exception e){
	 e.printStackTrace();
	 }
 finally{
 con1.close();
 }
}//if
else if (i<=4){
 try{
PreparedStatement ps=con1.prepareStatement("insert into  "+db+" values(?,?,?,?)");
ps.setInt(1,Integer.parseInt(fid));
ps.setString(2,fnm);
ps.setBytes(3,sig2);
ps.setBytes(4,(byte[])session.getAttribute("c"));
ps.executeUpdate();
 }
 catch(Exception e){
	 e.printStackTrace();
	 }
 finally{
 con1.close();
 }
}//if

else if (i<=6){
 try{
PreparedStatement ps=con1.prepareStatement("insert into  "+db+" values(?,?,?,?)");
ps.setInt(1,Integer.parseInt(fid));
ps.setString(2,fnm);
ps.setBytes(3,sig3);
ps.setBytes(4,(byte[])session.getAttribute("c"));
ps.executeUpdate();
 }
 catch(Exception e){
	 e.printStackTrace();
	 }
 finally{
 con1.close();
 }
}
}

}catch(Exception e){
e.printStackTrace();
}
finally{
con.close();
}
response.sendRedirect("upload.jsp?msg=Uploaded");
%>
        </div>
      </div>
    </section>
  </div><br><br><br><br><br>
</body><%@ include file="footer.jsp"%>