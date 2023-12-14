
<%@ include file="oheader.jsp"%>
<head>
<center>
  <meta charset="UTF-8">



</head>

   <div class="main">
      <div class="one">
	  <%! int i=0;%>
	 <%@page import="java.sql.*,databaseconnection.*"%>
	  <%
	  if(request.getParameter("msg")!=null){
	  out.println("<script>alert('Uploaded into Cloud Storage')</script>");
	  }
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet r=st.executeQuery("select max(fid) from store");
if(r.next())
	{

 i=r.getInt(1);
if(i>=0)
	{
i++;
	}
}
}catch(Exception e)
{
e.printStackTrace();
}
session.setAttribute("fid",i);

%>
	  <% String id=request.getParameter("msg");
                                                      %>
       
          <table><h1>File Upload</h3>
          <form id="reg-form"  action="upload1.jsp" enctype="multipart/form-data" method="post">
         <tr><td>
              <label for="name">File ID</label></td><td>
              <input type="text" id="name" class="inputText"  name="name" value=<%=i%> spellcheck="false"/></td></tr>
 <tr><td></td></tr>
           <tr><td>
              <label for="email"></label></td><td>
              <input type="file" id="email" name="filename" spellcheck="false" required />
  </td></tr> <tr><td></td></tr>
         <tr><td>
              <label></label></td><td>
              <input type="submit" value="Continue" id="create-account" class="button"/>
          </td></tr>
			</table>
          </form>
          
          <div class="connect">
            
                     </div>
        </div>
      </div>



<br><br><br><br><br>
<%@ include file="footer.jsp"%>