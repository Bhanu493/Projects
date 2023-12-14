
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ include file="pheader.jsp"%>
<%
                                                       String message=request.getParameter("msg1");
                                                       if(message!=null)
                                                       {
                out.println("<script type=text/javascript>alert('Block Regenerated Successfully..'); </script>															   ");
                                                       }
                                               %>

<br><br>

<h1><font size="" color="#999966">Auditing  Results are..</font></h1>

<font size="3" color=""><b>
  <%
int c=0;
  try{


Connection con=databasecon.getconnection();
	Statement st1 = con.createStatement();
	
	String sss1 = "select  * from auditresult  ";

	ResultSet rs=st1.executeQuery(sss1);
	%>

	<table cellspacing=20 width="525">
	<tr><td><h2>File Id</h2></td><td><h2>Authenticator</h2></td><td><h2>Block</h2></td><td><h2>Repair</h2>
	<%
	while(rs.next())	
	 {%>
	 <tr bgcolor="#6699ff"><td><font size="3" color="white"><%=rs.getString(1)%><td><font size="3" color="white"><%=rs.getString(2)%><td><font size="3" color="white"><%=rs.getString(3)%><td><a href="repair.jsp?id=<%=rs.getString(1)%>&c=<%=rs.getString(2)%>&s=<%=rs.getString(3)%>"><font size="3" color="Red"><b>Regeneration</a>
	 <%
	}
  }
  catch(Exception e){
  e.printStackTrace();
  }
  %>

</table>
</font>
  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>
<%@ include file="footer.jsp"%>