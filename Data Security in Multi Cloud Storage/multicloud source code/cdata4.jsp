     
     <%@include file="cheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String fid=request.getParameter("fid");
//String block=request.getParameter("block");
String data=request.getParameter("block");
%>
<%								

Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
PreparedStatement psmt1=con.prepareStatement("update cloud1 set sig1=? where fid=? ");
psmt1.setString(1, data);
psmt1.setString(2, fid);
psmt1.executeUpdate();

response.sendRedirect("cdata.jsp?id=succ");

%>

            <%@include file="footer.jsp"%> 