
<%@page import="databaseconnection.*,java.sql.*,RSA.*"%>
<%!
Connection con;
Statement stmt;
%>
<%
String name = request.getParameter("name");
String uname = request.getParameter("unm");
String password = request.getParameter("pwd");
String email = request.getParameter("email");
String contact = request.getParameter("cno");





con = databasecon.getconnection();
stmt = con.createStatement();

int i = stmt.executeUpdate("insert into register (name,uname,password,email,contact)values('"+name+"','"+uname+"','"+password+"','"+email+"','"+contact+"')");

if(i>0){
response.sendRedirect("OwnerLogin.jsp?msg=succ");
}
%>