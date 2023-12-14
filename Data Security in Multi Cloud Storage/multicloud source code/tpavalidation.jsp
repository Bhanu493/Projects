
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

if(uname.equals("admin")&&password.equals("admin")){
//session.setAttribute("uname",uname);
response.sendRedirect("admin_home.jsp");
}else{
response.sendRedirect("admin.jsp?msg1=unsucc");
}
%>