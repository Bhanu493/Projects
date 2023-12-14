
<%@ include file="oheader.jsp"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

 
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->


  <meta charset="UTF-8">


  <link rel="stylesheet" href="normalize.css">

    <link rel="stylesheet" href="style.css" media="screen" type="text/css" />

</head>
<%@ page import="java.io.*,org.apache.commons.codec.binary.Base64"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,pkey=null,fid=null,fnm=null;
StringBuilder  binary1=null,binary2=null,binary3=null,binary4=null;
byte[]   bytesEncoded1;    byte[]   bytesEncoded2;byte[]   bytesEncoded3;byte[]   bytesEncoded4;
%>
 <%
 try{ fid=request.getParameter("fid");
 fnm=request.getParameter("filename");
String data1=request.getParameter("data1");
String data2=request.getParameter("data2");
String data3=request.getParameter("data3");
   bytesEncoded1= Base64.encodeBase64(data1.getBytes());
  bytesEncoded2= Base64.encodeBase64(data2.getBytes());
	   bytesEncoded3= Base64.encodeBase64(data3.getBytes());
	 
//System.out.println("ecncoded value is " + new String(bytesEncoded ));
// Decode data on other side, by processing encoded data
//byte[] valueDecoded= Base64.decodeBase64(bytesEncoded );
//System.out.println("Decoded value is " + new String(valueDecoded));*/

 }catch(Exception e){e.printStackTrace();}
%>
<body>

        <div class="register">
          <h3>File Upload</h3>
          <form id="reg-form" method="post" action="getSk.jsp">
            <div>
              <label for="name">File ID</label>
              <input type="text" id="name"  name="fid" value=<%=fid%> spellcheck="true"/>
            </div>
            <div>
              <label for="email">File Name</label>
              <input type="text" id="email" name="filename" value=<%=fnm%> spellcheck="false" />
            </div>
			<div>
              <label for="email"><b>chunk1</label>
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data1" cols="52" rows="5"><%=new String(bytesEncoded1)%></textarea>  
            </div>
			<div>
              <label for="email">chunk2</label>
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data2" cols="52" rows="5"><%=new String(bytesEncoded2)%></textarea>  
            </div>
            
			<div>
              <label for="email">chunk3</label>
             </div><div>

              <label for="email"> </label>
              <textarea id="email" name="data3" cols="52" rows="5"><%=new String(bytesEncoded3)%></textarea>  
            </div>
            				
            
            <div>
              <label></label>
              <input type="submit" value="     GetKey      " id="create-account" class="button"/>
            </div>
          </form>
          
          <div class="connect">
            
                     </div>
        </div>
      </div>
    </section>
  </div><br><br><br><br><br>
</body><%@ include file="footer.jsp"%>