
<%@ include file="oheader.jsp"%>
<%@ include file="ex.jsp"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta charset="UTF-8">
  <link rel="stylesheet" href="normalize.css">

    <link rel="stylesheet" href="style.css" media="screen" type="text/css" />

</head>
	 <%@page import="java.sql.*,databaseconnection.*,ZIP.*"%>
<%@ page import="java.io.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,pkey=null,fid=null,fnm=null,fid1;
FileInputStream fis=null;
File f=null;
//String fid1=null;
//int fid1=0;

%>
 <%
 try{
 fid1=request.getParameter("fid");
  fnm=request.getParameter("fnm");
String data=request.getParameter("data1")+request.getParameter("data2")+request.getParameter("data3");
System.out.println("data="+data);}
catch(Exception e){}
//session.setAttribute("c",c);
%>

<body>
 
        <div class="register">
          <h1>File Upload</h3>
          <form id="reg-form" action="finalDownload.jsp" method="post">
            <div>
              <label for="name"><b>File ID</label>
              <input type="text" id="name"  name="fid" value=<%=fid1%> spellcheck="true"/>
            </div>
            <div>
              <label for="email">File Name</label>
              <input type="text" id="email" name="fnm" value=<%=fnm%> spellcheck="false" />
            </div>
			<div>
              <label>File Data:</label>
            </div><div>
              <label></label>
			   

              <textarea id="email" name="data" cols="55" rows="10"><%=new String(Compressions.decompress(data))%></textarea>  
            </div>
            <div>
              <label></label>
              <input type="submit" value="  Download  " id="create-account" class="button"/>
            </div>
          </form>
          
          <div class="connect">
            
                     </div>
        </div>
      </div>
    </section>
  </div><br><br><br><br><br>
</body><%@ include file="footer.jsp"%>