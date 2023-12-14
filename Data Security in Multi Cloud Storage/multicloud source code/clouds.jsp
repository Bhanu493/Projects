
<%@ include file="theader.jsp"%>


<head>

  <meta charset="UTF-8">


  <link rel="stylesheet" href="normalize.css">

    <link rel="stylesheet" href="style.css" media="screen" type="text/css" />
	<script language="javascript" type="text/javascript">
  function changeTest(){
  //alert("hai:");
  
  var e = document.getElementById("sts");
var sts = e.options[e.selectedIndex].value;

  }
</script>

</head>

   <div class="main">
      <div class="one">
	 
	  <% String id=request.getParameter("msg");
           if(id!=null )
                                                       {
                                                               out.println("<font color='red'><blink><strong>File Uploaded!!!  <strong></blink></font>");
                                                       }
							%>						                                               
													   
													   
													   
	<%! int i=0;%>
	 <%@page import="java.sql.*,databaseconnection.*"%>
	  <%
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet r=st.executeQuery("select *from clouds");

 %>
        <div class="register">
         <h1>Cloud Details</h3></h1>
          
          <hr>
          <div class="connect">
            <table width="100%" >
			<form action="update.jsp">
			<tr><th><font size=3 color="orange" ><b>Cloud&nbsp;Name</th>&nbsp;&nbsp;<th><font size=3 color="orange"><b>Status</th><th><font size=3 color="orange"><b>Activate</th><th><font size=3 color="orange"><b>DeActivate</th></tr>
<%			while(r.next())
	              {%>
				  <tr><td><h2><font size="" color="990000"><%=r.getString(1)%></font></h3></td><%
				  if(r.getString(2).equals("Activate"))
					  {%>
				  <td><font color="green"><b><font size="3" color="cc0000"><%=r.getString(2)%></font></b></font></td><%}
                     else{%><td><font color="red"><b><font size="3" color="cc0000"><%=r.getString(2)%></b></font></td><%}%>

				  <td><a href="update.jsp?sts=Active&cld=<%=r.getString(1)%>">Activate</a></td><td><a href="update.jsp?sts=DeActivate&cld=<%=r.getString(1)%>">DeActivate</a></td></tr>
		 <%}%>
</table>

                     </div>
        </div>
      </div>

<%}catch(Exception e)
{
e.printStackTrace();
}
%>
<%@ include file="footer.jsp"%>