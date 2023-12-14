
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

if(uname.equals("cloud1")&&password.equals("cloud1")){
//session.setAttribute("uname",uname);
response.sendRedirect("cloud_home.jsp");
}
else if(uname.equals("cloud2")&&password.equals("cloud2")){
response.sendRedirect("cloud2_home.jsp");
	}

   else if(uname.equals("cloud3")&&password.equals("cloud3")){
response.sendRedirect("cloud3_home.jsp");}
else if(uname.equals("cloud4")&&password.equals("cloud4")){
response.sendRedirect("cloud4_home.jsp");
}
  else if(uname.equals("cloud5")&&password.equals("cloud5")){
response.sendRedirect("cloud5_home.jsp");
}
  else if(uname.equals("cloud6")&&password.equals("cloud6")){
response.sendRedirect("cloud6_home.jsp");
}
else{
			response.sendRedirect("cloud.jsp?msg1=unsucc");
									}
   


%>