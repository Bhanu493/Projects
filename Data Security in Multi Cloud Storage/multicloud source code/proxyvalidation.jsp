
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

if(uname.equals("proxy")&&password.equals("proxy")){
//session.setAttribute("uname",uname);
response.sendRedirect("proxy_home.jsp");
}else{
response.sendRedirect("proxy.jsp?msg1=unsucc");
}
%>