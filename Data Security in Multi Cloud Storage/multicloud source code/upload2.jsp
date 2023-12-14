
<%@ include file="oheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>

  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Registration Form</title>
 
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->


  <meta charset="UTF-8">


  <link rel="stylesheet" href="normalize.css">

    <link rel="stylesheet" href="style.css" media="screen" type="text/css" />

</head>
<%@ page import="java.io.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,pkey=null,fid=null,fnm=null;
%>
 <%
 fid=request.getParameter("fid");
 fnm=request.getParameter("filename");
String filedata=request.getParameter("data");
int len = filedata.length()/3;
String block1 = filedata.substring(len);
String block2 = block1.substring(len);
%>
<body>
 
        <div class="register">
          <h1>File Upload</h3>
          <form id="reg-form" action="upload3.jsp" method="post">
            <div>
              <label for="name"><b>File ID</label>
              <input type="text" id="name"  name="fid" value=<%=fid%> spellcheck="true"/>
            </div>
            <div>
              <label for="email">File Name</label>
              <input type="text" id="email" name="filename" value=<%=fnm%> spellcheck="false"  />
            </div>

			<div>
              <label for="email"><b>&nbsp;chunk1</label>
             
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data1" cols="52" rows="5" readonly><%=filedata.replace(block1,"")%></textarea>  
            </div>
			<div>
              <label for="email">&nbsp;chunk2</label>
             
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data2" cols="52" rows="5" readonly><%=block1.replace(block2,"")%></textarea>  
            </div>
            
			<div>
              <label for="email">&nbsp;chunk3</label>
             
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data3" cols="52" rows="5" readonly><%=block2%></textarea>  
            </div>
           
			
            <div>
              <label></label>
              <input type="submit" value="      Encoding   " id="create-account" class="button"/>
            </div>
          </form>
          
          <div class="connect">
            
                     </div>
        </div>
      </div>
    </section>
  </div><br><br><br><br><br>
</body><%@ include file="footer.jsp"%>