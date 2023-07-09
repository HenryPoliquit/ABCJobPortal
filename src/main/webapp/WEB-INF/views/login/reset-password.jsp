<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
	<jsp:param value="Reset" name="HTMLtitle" />
</jsp:include>
<div class="container mt-5 pt-4" style="min-height: 70.5vh;">
		<div class="row">
		<div class="col d-none d-lg-block d-md-block" style="height: 12vh">
		</div>
	</div>
	<div class="row mt-5">
		<div class="col-md-3">
		</div>
		<div class="col-lg-6 col-md-6 p-2 rounded" style="background-color: rgba(255, 255, 255, 0.7);  box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.7);">
			<h1>Reset your password</h1>
			<form action="reset" method="post" name="myForm" onsubmit="return resetPassword();">
	  			<div class="mb-3">
	    			<label for="password" class="form-label">New Password</label>
	    			<input type="password" class="form-control" id="password" name="password">
	    			<div id="error3" style="color: red;">
   					</div>
	  			</div>
	  			<div class="mb-3">
	    			<label for="passwordConfirmation" class="form-label">New Password Confirmation</label>
	    			<input type="password" class="form-control" id="passwordConfirm" name="passwordConfirmation">
	    			<div id="error4" style="color: red;">	
   					</div>
	 			</div>
	  			<button type="submit" class="btn btn-primary">Update Password</button>
			</form>
		</div>	
	</div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>