
<%@ include file="oheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.Date"%>

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
String data1=null,data2=null,data3=null,data4=null;
byte sig1[]=null,sig2[]=null,sig3[]=null,sig4[]=null;
Connection con=null;
%>
 <%
 try{ fid=request.getParameter("fid");
 fnm=request.getParameter("filename");
 data1=request.getParameter("data1");
 data2=request.getParameter("data2");
 data3=request.getParameter("data3");
 String sk=request.getParameter("sk");
 double fsize=(Double)session.getAttribute("fsize");
Date d=new Date();
con=databasecon.getconnection();
Statement st1 = con.createStatement();Statement st11= con.createStatement();
PreparedStatement ps=con.prepareStatement("insert into  store values(?,?,AES_ENCRYPT(?,'"+sk+"'),AES_ENCRYPT(?,'"+sk+"'),AES_ENCRYPT(?,'"+sk+"'),?,?)");
ps.setInt(1,Integer.parseInt(fid));
ps.setString(2,fnm);
ps.setBytes(3,data1.getBytes());
ps.setBytes(4,data2.getBytes());
ps.setBytes(5,data3.getBytes());
ps.setString(6,unm);
ps.setString(7,sk);
int ii=ps.executeUpdate();
if(ii>0){
st11.executeUpdate("insert into map values("+fid+",'"+fnm+"','"+unm+"','"+sk+"','"+fsize+"','"+d+"')");
}
	ResultSet rs=st1.executeQuery("select *from store where fid="+fid+"");
if(rs.next())
{

sig1=rs.getBytes("sig1");
sig2=rs.getBytes("sig2");
sig3=rs.getBytes("sig3");
}
}catch(Exception e){e.printStackTrace();}
finally{
con.close();
	}
%>
<body>

        <div class="register">
          <h3>File Upload</h3>
          <form id="reg-form" method="post" action="uploadTocloud.jsp">
            <div>
              <label for="name">File ID</label>
              <input type="text" id="name"  name="fid" value=<%=fid%> spellcheck="true"/>
            </div>
            <div>
              <label for="email">File Name</label>
              <input type="text" id="email" name="filename" value=<%=fnm%> spellcheck="false" />
            </div>
			<div>
              <label for="email"><b> Encchunk1</label>
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data1" cols="52" rows="5"><%= new String(sig1)%></textarea>  
            </div>
			<div>
              <label for="email">Encchunk2</label>
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data2" cols="52" rows="5"><%=new String(sig2)%></textarea>  
            </div>
            
			<div>
              <label for="email">Encchunk3</label>
             </div><div>
              <label for="email"> </label>
              <textarea id="email" name="data3" cols="52" rows="5"><%=new String(sig3)%></textarea>  
            </div>
               
			
			<div>
              <label></label>
              <input type="submit" value="    Upload_to_Cloud's     " id="create-account" class="button"/>
            </div>
          </form>
          
          <div class="connect">
            
                     </div>
        </div>
      </div>
    </section>
  </div><br><br><br><br><br>
</body><%@ include file="footer.jsp"%>