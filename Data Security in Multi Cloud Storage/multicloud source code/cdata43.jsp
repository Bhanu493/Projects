     
     <%@include file="c3header.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String fid=request.getParameter("fid");
//String block=request.getParameter("block");
String data=request.getParameter("block");
%>
<%								

Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
PreparedStatement psmt1=con.prepareStatement("update cloud3 set sig3=? where fid=? ");
psmt1.setString(1, data);
psmt1.setString(2, fid);
psmt1.executeUpdate();
response.sendRedirect("cdata33.jsp?id=succ");

%>

            <%@include file="footer.jsp"%> 