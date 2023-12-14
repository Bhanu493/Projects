<%@include file="header.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Registered Successfully..Please Login..')</script>");
}

String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('Login Fail..')</script>");
}
%>
				<h1 class="regular brown bottom_line">TPA Login</h1>
		<form action="tpavalidation.jsp" >
			<p>
				<label for="name">User Name <span>*</span></label>
				<input class="inputText" type="text" id="name" name="name" />
			</p>
			<div class="clear"></div>
			<p>
				<label for="email">Password<span>*</span></label>
				<input class="inputText" type="password" id="email" name="pwd" />
			</p>
			<div class="clear"></div>
			<p class="submit">
			<input type="submit" value="LOGIN">
		</form>
			
	
			
		</div>
	'<br><br><br><br><br>
 <%@include file="footer.jsp"%>