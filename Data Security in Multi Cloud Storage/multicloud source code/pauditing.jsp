
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ include file="theader.jsp"%>
<%
                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                out.println("<script type=text/javascript>alert('Auditing Results sent to Proxy..'); </script>															   ");
                                                       }
                                               %>

<br><br>

<h1><font size="" color="#999966">Data Auditing Requests are..</font></h1>

<font size="3" color=""><b>
  <%
int c=0;
  try{


Connection con=databasecon.getconnection();
	Statement st1 = con.createStatement();
	
	String sss1 = "select * from verify where vstatus='Request Sent' ";

	ResultSet rs=st1.executeQuery(sss1);
	%>

	<table cellspacing=20 width="525">
	<tr><td><h2>File Id</h2><td><h2>Owner</h2><td><h2>Auditing</h2></tr>
	<%
	while(rs.next())	
	 {%>
	 <tr bgcolor="#6699ff"><td><font size="3" color="white"><%=rs.getString(2)%><td><font size="3" color="white"><%=rs.getString(3)%><td><a href="tverify2.jsp?id=<%=rs.getString(2)%>&sid=<%=rs.getString(1)%>"><font size="3" color="white">Execute</a>
	 <%
	}
  }
  catch(Exception e){
  
  }
  %>

</table>
</font>
  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>
<%@ include file="footer.jsp"%>