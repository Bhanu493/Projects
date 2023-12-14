
<%@include file="theader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<script type="text/javascript">  


//alert('Request Sent to TPA');  
</script>
<table>
<%
String fid=request.getParameter("id");
String cid=request.getParameter("cid");
String s1=null,s2=null;
boolean status=false,status1=false,status2=false,status3=true;
//boolean status2=true;
%>
<br><br><br>
<center><h2>Data Auditing of File id: <%=fid%></h1><br></center>
<table border=2 align="center">
<%								
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
Statement st2 = con.createStatement();
String b1=request.getParameter("f1");
String b2=request.getParameter("f2");
String b3=request.getParameter("f3");
String b11=request.getParameter("f11");
String b22=request.getParameter("f22");
String b33=request.getParameter("f33");
						
						if(b1.trim().equals(b11.trim()))
						{System.out.println("true");
							status=true;
						}
						else{
							System.out.println("false");
							status=false;
							}
	if(b2.equals(b22))
						{
							status1=true;
						}
						else{
							status1=false;
							}
if(b3.equals(b33))
						{
							status2=true;
						}
						else{
							status2=false;
							}

	if(status==true){
	%>
	<tr><td><h2><font size="" color="#00cc33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Block1 Audited, not Modyfied .</h2><br></font>
	<%
	}
		else{
			status3=false;
Statement st3 = con.createStatement();
st3.executeUpdate("delete from auditresult");
st3.executeUpdate("insert into auditresult values('"+fid+"','cloud1','sig1')");

				%>
	<tr><td>	<h2><font size="" color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Block 1 Audited,  Modyfied .</font><br></h2>
	<%}%>

	<%  if(status1==true){
	%>
	<tr><td><h2><font size="" color="#00cc33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Block2 Audited, not Modyfied .</h2><br></font>
	<%
	}
		else{
			status3=false;
			Statement st4 = con.createStatement();
st4.executeUpdate("delete from auditresult");
st4.executeUpdate("insert into auditresult values('"+fid+"','cloud2','sig2')");
				%>
	<tr><td>	<h2><font size="" color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Block2 Audited,  Modyfied .</font><br></h2>
		<%}%>
	

	<%  if(status2==true){
	%>
	<tr><td><h2><font size="" color="#00cc33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Block3 Audited, not Modyfied .</h2><br></font>
	<%
	}
		else{
			status3=false;
			Statement st5 = con.createStatement();
st5.executeUpdate("delete from auditresult");
st5.executeUpdate("insert into auditresult values('"+fid+"','cloud3','sig3')");
				%>
	<tr><td>	<h2><font size="" color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Block3 Audited,  Modyfied .</font></h2>
		<%}%>
</table><br><br>
<%if(status3==false){
Statement s=con.createStatement(); 
s.executeUpdate("update verify set vstatus='Data Modified' where fileid='"+fid+"'");

	%>
<center><form method="post" action="pauditing.jsp?id=succ">
	<input type="hidden" name="id" value="<%=fid%>">
		<input type="hidden" name="cid" value="<%=cid%>">
	<input type="submit" value="Send_To_Proxy">
</form></center>

	<%
}
	else{
Statement s=con.createStatement(); 
s.executeUpdate("update verify set vstatus='Data Safe' where fileid='"+fid+"'");
	}
	%>
<br><br><br>
            <%@include file="footer.jsp"%> 