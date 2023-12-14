     
     <%@include file="c2header.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String fid=request.getParameter("fid");
//String block=request.getParameter("block");    



String data=request.getParameter("block");
%>
<%								

Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
PreparedStatement psmt1=con.prepareStatement("update cloud2 set sig2=? where fid=? ");
psmt1.setString(1, data);
psmt1.setString(2, fid);
psmt1.executeUpdate();

response.sendRedirect("cdata22.jsp?id=succ");

%>

            <%@include file="footer.jsp"%> 