     
	 <%@include file="cheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String fid=request.getParameter("id");
%>
<form method="post" action="cdata4.jsp">
	

<center>
<h1><font size="" color="#eb6705">Cloud Data of File Id  <%=fid%>..</font></h1>
<br><br>
	<table cellspacing="5" cellpadding="5">
<%								


Connection con=databasecon.getconnection("cloud1");
Statement st1 = con.createStatement();

	String sss1 = "select * from cloud1 where fid='"+fid+"' ";

	ResultSet rs=st1.executeQuery(sss1);
	int i=1;
while(rs.next())
{

%>

		<tr>
		<td><h3><font size="" color="#eb6705">Chunck1</h3></td><td>&nbsp;&nbsp;</td>
		<td><textarea name="block" rows="8" cols="30" readonly ><%=rs.getString(3)%></textarea></td>
	</tr>

<%
	i++;
}
	%>
	<tr></tr>

</form>

</table>
</form>

<br><br><br><br><br><br>
            <%@include file="footer.jsp"%> 