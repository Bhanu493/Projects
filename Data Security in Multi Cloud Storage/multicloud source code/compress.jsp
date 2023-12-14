
<%@ include file="oheader.jsp"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta charset="UTF-8">
  <link rel="stylesheet" href="normalize.css">

    <link rel="stylesheet" href="style.css" media="screen" type="text/css" />

</head><%! int i=0;%>
	 <%@page import="java.sql.*,databaseconnection.*,ZIP.*"%>
	  <%
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet r=st.executeQuery("select max(fid) from store");
if(r.next())
	{

 i=r.getInt(1);
if(i==0)
		{
	i++;
		}

}
}catch(Exception e)
{
e.printStackTrace();
}


%>
<%@ page import="java.io.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,pkey=null,fid=null,fnm=null;
FileInputStream fis=null;
File f=null;
//String fid1=null;
int fid1=0;byte c[];
%>
 <%
 fid1=(Integer)session.getAttribute("fid");
 String fnm=request.getParameter("filename");
String data=request.getParameter("data");
c=Compressions.compress(data.getBytes());
   session.setAttribute("c",c);
%>

<body>
 
        <div class="register">
          <h1>File Upload</h3>
          <form id="reg-form" action="upload2.jsp" method="post">
            <div>
              <label for="name"><b>File ID</label>
              <input type="text" id="name"  name="fid" value=<%=fid1%> spellcheck="true"/>
            </div>
            <div>
              <label for="email">File Name</label>
              <input type="text" id="email" name="filename" value=<%=fnm%> spellcheck="false" />
            </div>
			<div>
              <label>File Data:</label>
            </div><div>
              <label></label>
			   

              <textarea id="email" name="data" cols="55" rows="10"><%=new String(c)%></textarea>  
            </div>
            <div>
              <label></label>
              <input type="submit" value="  Split  " id="create-account" class="button"/>
            </div>
          </form>
          
          <div class="connect">
            
                     </div>
        </div>
      </div>
    </section>
  </div><br><br><br><br><br>
</body><%@ include file="footer.jsp"%>