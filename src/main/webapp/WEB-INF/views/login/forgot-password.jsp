<jsp:include page="../../header.jsp">
    <jsp:param value="Forgot Password" name="HTMLtitle" />
</jsp:include>
<div class="container mt-5 pt-4">

	<div class="row  flex-column-reverse flex-md-row">
		<div class="col-md-6">
			<img alt="verified" src="images/forgot.png" width="100%">
		</div>	
		<div class="col-md-6">
			<div class="d-lg-block d-md-block d-sm-none d-none" style="height: 15vh">
			</div>
			<div class="p-2 rounded mt-5 mb-3" style="background-color: rgba(255, 255, 255, 0.7); box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.6);">
				<h2>Forgot your password?</h2>
   	 			<p>Please enter your correct email. A confirmation link will be sent to reset your password.</p>
    			<div class="alert alert-danger ${message == null ? "d-none" : "d-block"}" role="alert">
  					${message}
				</div>
    			<form action="forgot-password" method="post" onsubmit="return forgotPassword();">
        			<div class="form-floating mb-3">
           	 			<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="emailAddress">
            			<label for="floatingInput">Email address</label>
						<div class="text-danger" id="error1">
    					</div>
        			</div>
        			<div class="text-center">
        				<button type="submit" class="btn btn-primary">Reset your password</button>
        			</div>
    			</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>