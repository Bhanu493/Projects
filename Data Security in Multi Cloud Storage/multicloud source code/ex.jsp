	 
	 <%@page import="java.sql.*,databaseconnection.*,ZIP.*" %>
	 <%! int i=0;
byte dc[]; byte c[],data[];
%>
<%
try{
Connection con=databasecon.getconnection("cloud1");
Statement st=con.createStatement();
 String fid1=request.getParameter("fid");
ResultSet r=st.executeQuery("select p1 from cloud1 where fid="+fid1+" ");
if(r.next())
	{
data=r.getBytes(1);
}
}catch(Exception e)
{
e.printStackTrace();
}%>