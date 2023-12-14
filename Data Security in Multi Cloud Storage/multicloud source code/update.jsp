 
 <%@page import="java.sql.*,databaseconnection.*"%>
	  <%
try{
	String cld=request.getParameter("cld");
	String sts=request.getParameter("sts");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
String sql="update clouds set sts='"+sts+"' where cname='"+cld+"'";
System.out.println("sql="+sql);
int r=st.executeUpdate(sql);
if(r==1)
		  {
	response.sendRedirect("clouds.jsp?cloud_Status_Updated");
		  }
	  }catch(Exception e){e.printStackTrace();
	  }%>