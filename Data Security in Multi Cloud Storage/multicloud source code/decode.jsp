
<%@ include file="oheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*,org.apache.commons.codec.binary.Base64"%>

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
String filename=null,pk=null,fid=null,fnm=null;
%>
<%!
Connection con;
Statement stmt,stmt1;
%>
 <%
 fid=request.getParameter("fid");
  pk=request.getParameter("pk");
  String data1=request.getParameter("data1");
  String data2=request.getParameter("data2");
  String data3=request.getParameter("data3");
String output = "";
byte[] decoded1= Base64.decodeBase64(data1.getBytes());
byte[] decoded2= Base64.decodeBase64(data2.getBytes());
byte[] decoded3= Base64.decodeBase64(data3.getBytes());
 con = databasecon.getconnection();
stmt = con.createStatement();
stmt1 = con.createStatement();

%>
<body>
 
        <div class="register">
          <h1>File Download</h3>
          <form id="reg-form" action="decompress.jsp"method="post">
            <div>
              <label for="name"><b>File ID</label>
              <input type="text" id="name"  name="fid" value=<%=fid%> spellcheck="true"/>
            </div>
            <div>
              <label for="email">File Name</label>
              <input type="text" id="email" name="fnm" value=<%=request.getParameter("fnm")%>
			  spellcheck="false"  />
            </div>

			<div>
              <label for="email"><b>&nbsp;chunk1</label>
             
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data1" cols="52" rows="5" readonly><%=new String(decoded1)%></textarea>  
            </div>
			<div>
              <label for="email">&nbsp;chunk2</label>
             
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data2" cols="52" rows="5" readonly><%=new String(decoded2)%></textarea>  
            </div>
            
			<div>
              <label for="email">&nbsp;chunk3</label>
             
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data3" cols="52" rows="5" readonly><%=new String(decoded3)%></textarea>  
            </div>
         
		
            <div>
              <label></label>
              <input type="submit" value="     Decompression  " id="create-account" class="button"/>
            </div>
          </form>

          <div class="connect">
            
                     </div>
        </div>
      </div>
    </section>
  </div><br><br><br><br><br>
</body><%@ include file="footer.jsp"%>