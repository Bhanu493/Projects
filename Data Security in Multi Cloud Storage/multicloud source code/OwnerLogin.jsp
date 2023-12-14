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
				<h1 class="regular brown bottom_line">DataOwner Login</h1>
		<form action="ownervalidation.jsp" >
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
			<input type="submit" value="Sign-In">
		</form>
			</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="register.jsp"><input type="image" src="images/reg1.png"  width=200 height=100 border="0"></a>
	
			
		</div>
	'<br><br><br><br><br>
 <%@include file="footer.jsp"%>