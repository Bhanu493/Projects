
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
String filename=null,pkey=null,fid=null,fnm=null;
%>
<%!
Connection con;
Statement stmt;
%>
 <%
 fid=request.getParameter("id");
 con = databasecon.getconnection();
stmt = con.createStatement();%>
<body>
 
        <div class="register">
          <h1>File Download</h3>
          <form id="reg-form" action="file_download1.jsp" method="post">
            <div>
              <label for="name"><b>File ID</label>
              <input type="text" id="name"  name="fid" value=<%=fid%> spellcheck="true"/>
            </div>
            <div>
              <label for="email">File Name</label>
              <input type="text" id="email" name="fnm" value=<%=request.getParameter("fnm")%> spellcheck="false"  />
            </div><%
for(int i=1;i<=6;i++){
	String db="cloud"+i;
 Connection con1=databasecon.getconnection(db);
if(i<=2){
	 try{
Statement st=con.createStatement();
PreparedStatement ps=con1.prepareStatement("select sig1 from "+db+" where fid="+fid+" ");
ResultSet r=ps.executeQuery();
if(r.next()){
	i=i+1;%>
<div>
              <label for="email"><b>&nbsp;chunk1</label>
             
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data1" cols="52" rows="5" readonly><%=new String(r.getBytes(1))%></textarea>  
            </div>
			<%}

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
Statement st=con.createStatement();
PreparedStatement ps=con1.prepareStatement("select sig2 from "+db+" where fid="+fid+" ");
ResultSet r=ps.executeQuery();
if(r.next()){
	i=i+1;%>
<div>
              <label for="email"><b>&nbsp;chunk2</label>
             
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data2" cols="52" rows="5" readonly><%=new String(r.getBytes(1))%></textarea>  
            </div>
			<%}

 }
 catch(Exception e){
	 e.printStackTrace();
	 }
 finally{
 con1.close();
 }
}//if
else if (i<=6) {
	try{
Statement st=con.createStatement();
PreparedStatement ps=con1.prepareStatement("select sig3 from "+db+" where fid="+fid+" ");
ResultSet r=ps.executeQuery();
if(r.next()){
	i=i+1;%>
<div>
              <label for="email"><b>&nbsp;chunk3</label>
             
            </div><div>
              <label for="email"></label>
              <textarea id="email" name="data3" cols="52" rows="5" readonly><%=new String(r.getBytes(1))%></textarea>  
            </div>
			<%}

 }
 catch(Exception e){
	 e.printStackTrace();
	 }
 finally{
 con1.close();
 }
}
}
%>
			
            <div>
              <label></label>
              <input type="submit" value="     GetKey    " id="create-account" class="button"/>
            </div>
          </form>
         
          <div class="connect">
            
                     </div>
        </div>
      </div>
    </section>
  </div><br><br><br><br><br>
</body><%@ include file="footer.jsp"%>