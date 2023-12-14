
<%@ include file="c4header.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>


<%                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
											                out.println("<script type=text/javascript>alert('Update Done..'); </script>  ");
                                                       }
                                               %>
											   
<h1><font size="" color="#999966">Stoage Files...</font></h1>

<font size="3" color=""><b>
  <%! String onm=null;%><%
int c=0;
  try{


Connection con=databasecon.getconnection("cloud4");
Connection con1=databasecon.getconnection();
	Statement st1 = con.createStatement();
	Statement st2= con1.createStatement();
String sss1 = "select *from cloud4";

	ResultSet rs=st1.executeQuery(sss1);
	%>

	<table cellspacing=20 width="525">
	<tr><td><h2>File Id</h2><td><h2>Filename</h2><td><h2>FileData</h2><td><h2>Owner</h2></tr>
	<%
	while(rs.next())	
	 {
		
	ResultSet rss=st2.executeQuery("select unm from map where fid='"+rs.getString(1)+"'");
	if(rss.next()){
	onm=rss.getString(1);
	}
		
		%>
	 <tr bgcolor="#6699ff"><td><font size="3" color="white"><%=rs.getString(1)%><td><font size="3" color="white"><%=rs.getString(2)%><td><a href="cdata441.jsp?id=<%=rs.getString(1)%>"><font size="3" color="white">View</a><td><font size="3" color="white"><%=onm %><td>
	 <%
	}
  }
  catch(Exception e){
  
  }
  %>
</table>

</h3>
</form>

<br><br><br><br>
<%@ include file="footer.jsp"%>