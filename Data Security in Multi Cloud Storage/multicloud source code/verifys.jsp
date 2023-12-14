
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
boolean s1=false,s2=false,s3=false;
String d1,d2,d3;
%>
<%!
Connection con;
Connection con2;
Statement stmt;
%>
 <%
 fid=request.getParameter("id");
 con = databasecon.getconnection();
stmt = con.createStatement();%>
<body>
 
       <%
for(int i=1;i<=6;i++){
	String db="cloud"+i;
 Connection con1=databasecon.getconnection(db);
if(i<=2){
	try{
Statement st=con.createStatement();
ResultSet rst=st.executeQuery("SELECT  sts FROM clouds WHERE cname='"+db+"'  ");
if(rst.next()){
	if(rst.getString(1).equals("Active")){
	d1=db;
} 
else{
	s1=true;
}

}
 }
 catch(Exception e){
	 e.printStackTrace();
	 }
 finally{
 
 }
}
		//if
		else if (i<=4){
	try{
Statement st=con.createStatement();
ResultSet rst=st.executeQuery("SELECT  sts FROM clouds WHERE cname='"+db+"'  ");
if(rst.next()){
if(rst.getString(1).equals("Active")){
	d2=db;
} else{
	s2=true;
}
}
 }
 catch(Exception e){
	 e.printStackTrace();
	 }
 finally{
 
 }
}//if
else if (i<=6) {
	try{
Statement st=con.createStatement();
ResultSet rst=st.executeQuery("SELECT  sts FROM clouds WHERE cname='"+db+"'  ");
if(rst.next()){
if(rst.getString(1).equals("Active")){
	d3=db;
} else{
	s3=true;
}
}
 }
 catch(Exception e){
	 e.printStackTrace();
	 }
 finally{

 }
}
}
%>
			<body>
 
        <div class="register">
          <h1>File Download</h3>
          <form id="reg-form" action="reconstruct.jsp" method="post">
            <div>
              <label for="name"><b>File ID</label>
              <input type="text" id="name"  name="id" value=<%=fid%> spellcheck="true"/>
            </div>
            <div>
              <label for="email">File Name</label>
              <input type="text" id="email" name="fnm" value=<%=request.getParameter("fnm")%> spellcheck="false"  />
            </div>
            <div>
              <label for="email"><b>&nbsp;chunk1</label>
             
            </div><div>
              <label for="email"></label>
			  <% if(s1){	s1=false;
			  %>
              <textarea id="email" name="data1" cols="52" rows="5" readonly>Temporarily Unavailable</textarea>  
			  <%}else{
			  s1=false;
			  Connection con2=databasecon.getconnection(d1);
			  Statement st=con2.createStatement();
ResultSet rst=st.executeQuery("SELECT  sig1 FROM "+d1+" WHERE  fid="+fid+" ");
if(rst.next()){%>
<textarea id="email" name="data1" cols="52" rows="5" readonly><%=new String(rst.getBytes(1))%></textarea>
	<%}
			}
			  %>
            </div>
<div>
              <label for="email"><b>&nbsp;chunk2</label>
             
            </div>
<div>
              <label for="email"></label>
			  <% if(s2){s2=false;%>
              <textarea id="email" name="data1" cols="52" rows="5" readonly>Temporarily Unavailable</textarea>  
			  <%}else{s2=false;
			  Connection con2=databasecon.getconnection(d2);
			  Statement st=con2.createStatement();
ResultSet rst=st.executeQuery("SELECT  sig2 FROM "+d2+" WHERE  fid="+fid+" ");
if(rst.next()){%>
<textarea id="email" name="data1" cols="52" rows="5" readonly><%=new String(rst.getBytes(1))%></textarea>
	<%}
			}
			  %>
            </div><div>
              <label for="email"><b>&nbsp;chunk3</label>
             
            </div>
			<div>
              <label for="email"></label>
			  <% if(s3){s3=false;%>
              <textarea id="email" name="data1" cols="52" rows="5" readonly>Temporarily Unavailable</textarea>  
			  <%}else{s3=false;
			  Connection con2=databasecon.getconnection(d3);
			  Statement st=con2.createStatement();
ResultSet rst=st.executeQuery("SELECT  sig3 FROM "+d3+" WHERE  fid="+fid+" ");
if(rst.next()){%>
<textarea id="email" name="data1" cols="52" rows="5" readonly><%=new String(rst.getBytes(1))%></textarea>
	<%}
			}
			  %>
            </div>

         <div>
              <label></label>
              <input type="submit" value="     Re-Construct File   " id="create-account" class="button"/>
            </div>          </form>
          <div class="connect">
            
                     </div>
        </div>
      </div>
    </section>
  </div><br><br><br><br><br>
</body><%@ include file="footer.jsp"%>