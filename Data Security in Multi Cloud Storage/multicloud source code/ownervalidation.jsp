
<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
String uname = request.getParameter("name");
//session.setAttribute("uname",uname);
String password = request.getParameter("pwd");

con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select uname,password from  register where uname='"+uname+"' and password='"+password+"' ");

if(rs.next()){
session.setAttribute("uname",uname);
response.sendRedirect("owner_home.jsp");
}else{
response.sendRedirect("OwnerLogin.jsp?msg1=unsucc");
}
%>