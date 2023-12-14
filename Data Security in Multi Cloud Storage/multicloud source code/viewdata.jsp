
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%@ include file="oheader.jsp"%>
		<%
		if(request.getParameter("msg")!=null)
		{
			out.println("<script>alert('Keywords Updated Successfully')</script>");
		}
		if(request.getParameter("msg1")!=null)
		{
			out.println("<script>alert('File Deleted Successfully')</script>");
		}
		if(request.getParameter("msg3")!=null&&request.getParameter("msg3").equals("sent"))
		{
			out.println("<script>alert('Request Sent to Third Party Auditor')</script>");
		}
		if(request.getParameter("msg3")!=null&&request.getParameter("msg3").equals("alsent"))
		{
			out.println("<script>alert('Request already sent to TPA')</script>");
		}
		%>
		<form>
<br>
<h1>File Details</h1>
<center>
          <table bgcolor="" cellpadding="5" cellspacing="5" width="825" border="0" align="center">
            <tr  bgcolor="#ff9900"> 
            <tr bgcolor="#ff9900"> 
              <td align="center"><font color="#110022"><strong><font size="3" color="#fff"> S. No</font></strong></font></td>
              <td align="center"><font color="#110022"><strong><font size="3" color="#fff">File Id</font></strong></font></td>
              
              <td align="center"><font color="#ffcc00"><strong><font size="3" color="#fff">File Name</strong></font></td>
 <td align="center"><font color="#ffcc00"><strong><font size="3" color="#fff">File Size</strong></font></td>
  <td align="center"><font color="#ffcc00"><strong><font size="3" color="#fff">Date</strong></font></td>
  <td align="center"><font color="#ffcc00"><strong><font size="3" color="#fff">Owner Name</strong></font></td>
              <td align="center"> <font color="#110022"><strong><font size="3" color="#fff">File Download</strong></font></td>
			  
            </tr>
            <%
			String u=(String)session.getAttribute("name");
			


ResultSet rs=null;
String all="allowed";
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from map where unm='"+unm+"' ";

		rs =st.executeQuery(qry);
		String owner=null,name=null,fid=null,sts=null;
	int sno=0;


	while(rs.next())
	{
	sno++;
	fid=rs.getString("fid");
	name=rs.getString("fname");

	 
%>
            <tr bgcolor="#d2d2d2"> 
              <td align="center"> <strong><font size="3" color="#6300C6"> <%=sno%> </font></strong></td>
               <td align="center"> <strong><font size="3" color="#6300C6"> <%=fid%> </font></strong></td>
              
              <td align="center"><strong><font size="3" color="#6300C6"> <%=name%> </font></strong></td>
   <td align="center"><strong><font size="3" color="#6300C6"> <%=rs.getString("fsize")%> KB </font></strong></td>
     <td align="center"><strong><font size="3" color="#6300C6"> <%=rs.getString("datee")%> </font></strong></td>
   <td align="center"><strong><font size="3" color="#6300C6"> <%=rs.getString("unm")%></font></strong></td>
              <td align="center"><a href="go.jsp?id=<%=fid%>&fnm=<%=name%>"><strong><font color="#6300C6" class="big"> 
               <strong><font size="3" color="#6300C6"> Download</font></strong></a></td>
				  
<%
	   }}
	   catch(Exception e1)
	   {
	     out.println(e1);

	   }
 %>
          </table>
        </form>
		<br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>