
<%@include file="pheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<script type="text/javascript">  


//alert('Request Sent to TPA');  

</script>
<%! byte b[]=null;%>
<%
String fid=request.getParameter("id");
String c=request.getParameter("c");
String s=request.getParameter("s");
%>
<%
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
ResultSet r=st1.executeQuery("select "+s+" from tpa where fid='"+fid+"'");
if(r.next()){
b=r.getBytes(1);
}
PreparedStatement st2=con.prepareStatement("update "+c+" set "+s+"=? where fid='"+fid+"' ");
st2.setBytes(1,b);
int p=st2.executeUpdate();
if(p>0){
response.sendRedirect("aresult.jsp?msg1=repaired");
}
%>


            <%@include file="footer.jsp"%> 