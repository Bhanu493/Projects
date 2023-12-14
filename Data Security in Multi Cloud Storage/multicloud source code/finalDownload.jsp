
<%@ page import="java.sql.*"%>
<%@ page import="databaseconnection.*,java.io.*"%>

<%
    String data1=request.getParameter("data");
	String fname=request.getParameter("fnm");
	
			String filename =fname;
		try{
			byte[] ba1 = data1.getBytes();
			response.setContentType("application/notepad");
			response.setHeader("Content-Disposition","attachment; filename=\""+filename+".txt\"");
			OutputStream os = response.getOutputStream();
			os.write(ba1);
				
			os.close();
			ba1 = null;
		
	
			}
			catch(Exception e)
			{
			out.println("Exception :"+e);
			}
		
		
		
%>