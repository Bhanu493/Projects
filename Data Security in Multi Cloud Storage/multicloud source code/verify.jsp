<%@ page  import="java.sql.*" import="java.util.Date"  import="java.text.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%@ include file="oheader.jsp"%>
		<%
		String sno=request.getParameter("id"); 
		ResultSet rs=null;
		
try
{
		   DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
	   //get current date time with Date()
	   Date date = new Date();
	   System.out.println(dateFormat.format(date));

	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();Statement sts = con.createStatement();	
ResultSet rrr=sts.executeQuery("select *from verify where fileid="+sno+"");
    String qry="insert into verify(fileid, uname,vstatus, datetime) values('"+sno+"','"+unm+"','Request Sent','"+dateFormat.format(date)+"') ";

		System.out.println("qry="+qry);
	if(!rrr.next()){
		int d =st.executeUpdate(qry);

	if(d>0)
	{
			response.sendRedirect("viewdata.jsp?msg3=sent");
	}
	}else{
	PreparedStatement p=con.prepareStatement("update verify set vstatus='Request Sent' where fileid="+sno+" ");
int dd=	p.executeUpdate();
	if(dd>0)
	{
			response.sendRedirect("viewdata.jsp?msg3=sent");
	}
	}
	
	}catch(Exception e){
			response.sendRedirect("viewdata.jsp?msg3=alsent");
	}
 %>
 