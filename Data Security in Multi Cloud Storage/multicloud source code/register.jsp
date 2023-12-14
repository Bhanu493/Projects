
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
				<h1 class="regular brown bottom_line">DataOwner Registration</h1>
		<form action="reginsert.jsp">
			<p>
				<label for="name">Name <span>*</span></label>
				<input class="inputText" type="text" id="name" name="name" />
			</p>
			<div class="clear"></div>
			
			<p>
				<label for="website">User Name<span>*</span></label>
				<input class="inputText" type="text" id="website" name="unm" />
			</p>
			<div class="clear"></div>
			<p>
				<label for="message">Password <span>*</span></label>
			<input class="inputText" type="password" id="website" name="pwd" />
			</p>
		<p>
				<label for="email">E-mail <span>*</span></label>
				<input class="inputText" type="text" id="email" name="email" />
			</p>
			<div class="clear"></div>
			<p>
				<label for="email">Contact NO <span>*</span></label>
				<input class="inputText" type="text" id="email" name="cno" />
			</p>
			<div class="clear"></div>
						<input type="submit" value="Sign-Up">
			</form>
			<!-- END CONTACT FORM -->	
			
		</div>
<br><br><br><br><br>
 <%@include file="footer.jsp"%>