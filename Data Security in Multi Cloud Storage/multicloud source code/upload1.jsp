
<%@ include file="oheader.jsp"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

 
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->


  <meta charset="UTF-8">


  <link rel="stylesheet" href="normalize.css">

    <link rel="stylesheet" href="style.css" media="screen" type="text/css" />

</head><%! int i=0;%>
	 <%@page import="java.sql.*,databaseconnection.*"%>
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
int fid1=0;
%>
 <%
 fid1=(Integer)session.getAttribute("fid");
 java.util.Enumeration e = request.getParameterNames();
 while(e.hasMoreElements()){
         // String e=names.nextElement();
		   String name = (String)e.nextElement();  
		   System.out.println("nm="+name);
       out.println("nm="+name);
       if(name.equals("filename")) { 
		   filename = (request.getParameter(name).toString()).trim(); 
		   System.out.println("fnm="+filename);
		   out.println("fnm="+filename);
	   }
	   if(name.equals("name")) { 
		   fid = (request.getParameter(name).toString()).trim(); 
		   System.out.println("fid="+fid);
	   }
	  
		  //if(
        }


	   String saveFile="";
//String contentType=request.getAttribute("file");
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
 f=new File(saveFile);
 fis=new FileInputStream(saveFile);
session.setAttribute("fis",fis);
 fnm=f.getName();
  byte[] bFile = new byte[(int) f.length()];
  session.setAttribute("bf",bFile);
  session.setAttribute("file",f);
         // open input stream test.txt for reading purpose.
		 try{
         BufferedReader br = new BufferedReader(new FileReader(f));
		 StringBuffer sb=new StringBuffer();
         while ((thisLine = br.readLine()) != null) {
          //  System.out.println(thisLine);
			
                sb1=sb.append(thisLine);
				//System.out.println(sb1);
         }} catch(Exception e1){
		 }
		/// pkey=(String)session.getAttribute("pkey");
// fid=(String)session.getAttribute("fid");
session.setAttribute("path",saveFile);
double bytes = ff.length();
double kilobytes= (bytes / 1024);
session.setAttribute("fsize",kilobytes);
System.out.println("kb="+kilobytes);
 //System.out.println("eid1="+eigetAttd);


}
%>

<body>
 
        <div class="register">
          <h1>File Upload</h3>
          <form id="reg-form" action="compress.jsp" method="post">
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
			   

              <textarea id="email" name="data" cols="55" rows="10"><%=sb1%></textarea>  
            </div>
            <div>
              <label></label>
              <input type="submit" value="  Compression  " id="create-account" class="button"/>
            </div>
          </form>
          
          <div class="connect">
            
                     </div>
        </div>
      </div>
    </section>
  </div><br><br><br><br><br>
</body><%@ include file="footer.jsp"%>