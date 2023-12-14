
<%@include file="theader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<script type="text/javascript">  


//alert('Request Sent to TPA');  

</script>
<%
String fid=request.getParameter("id");
String sid=request.getParameter("sid");
%>

<h1>Data Auditing of File id: <%=fid%></h1><br>
<table width="100%">
<tr><td>
<table>
<form method="post" action="tverify3.jsp">
<%								


Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
Statement st2 = con.createStatement();Statement st3 = con.createStatement();
ResultSet rst=st3.executeQuery("SELECT c1.sig1,c2.sig2,c3.sig3 FROM cloud1 c1,cloud2 c2,cloud3 c3 WHERE c1.fid="+fid+" and c2.fid="+fid+" and c3.fid="+fid+" ");
String sss1 = "select sig1,sig2,sig3 from tpa where fid='"+fid+"' ";

String sss2 = "select * from temp where fid='"+fid+"' ";


int i=1;
ResultSet rs=st1.executeQuery(sss1);
if(rs.next())
{
	System.out.println("i="+i);
				%>

		<tr bgcolor="#ff9900">
		<td><h3><font size="" color="">TPA Data File Block1</h3>
		<textarea name="f1" rows="3" cols="50" readonly><%=rs.getString(1)%></textarea></td>
	</tr>
	<tr bgcolor="#ff9900">
		<td><h3><font size="" color="">TPA Data File Block2</h3>
		<textarea name="f2" rows="3" cols="50" readonly><%=rs.getString(2)%></textarea></td>
	</tr>
	<tr bgcolor="#ff9900">
		<td><h3><font size="" color="">TPA Data File Block3</h3>
		<textarea name="f3" rows="3" cols="50" readonly><%=rs.getString(3)%></textarea></td>
	</tr>
<%
}
%>
</table>
<td>
<table>
<%
int ii=1;
ResultSet rs2=st1.executeQuery("SELECT c1.sig1,c2.sig2,c3.sig3 FROM cloud1 c1,cloud2 c2,cloud3 c3 WHERE c1.fid="+fid+" and c2.fid="+fid+" and c3.fid="+fid+" ");
while(rs2.next())
{
	
	System.out.println("ii="+ii);
				%>

		<tr bgcolor="#ccccff">
		<td><h3><font size="" color="">Cloud Data File Block1</h3>
		<textarea name="f11" rows="3" cols="50" readonly><%=rs2.getString(1)%></textarea></td>
	</tr>
	<tr bgcolor="#ccccff">
		<td><h3><font size="" color="">Cloud Data File Block2</h3>
		<textarea name="f22" rows="3" cols="50" readonly><%=rs2.getString(2)%></textarea></td>
	</tr>
	<tr bgcolor="#ccccff">
		<td><h3><font size="" color="">Cloud Data File Block3</h3>
		<textarea name="f33" rows="3" cols="50" readonly><%=rs2.getString(3)%></textarea></td>
	</tr>
<%
}
%>
</table></table>	
<br>

	<input type="hidden" name="sid" value="<%=sid%>">
	<input type="hidden" name="id" value="<%=fid%>">
	<input type="submit" value="Verify">
</form>
<br><br><br><br>


            <%@include file="footer.jsp"%> 