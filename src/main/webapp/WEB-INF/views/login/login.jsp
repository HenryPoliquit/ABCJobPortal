<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
    <jsp:param value="Login" name="HTMLtitle" />
</jsp:include>
<div class="container mt-3 pt-3 mb-2">
	<div class="row">
		<div class="col-md-4">
			<div style="height: 15vh">
			</div>
			<div class="p-2 rounded" style="background-color: rgba(255, 255, 255, 0.7); box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.6);">
				<h1>Sign in</h1>
    			<p>Don't have an account yet? <a href="registration">Register Now</a></p>
   				<div class="alert alert-danger alert-dismissible fade show my-3 ${ message == null ? "d-none" : "d-block" }" role="alert">
  					${ message }
  					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
				<div class="alert alert-success alert-dismissible fade show my-3 ${ scMessage == null ? "d-none" : "d-block" }" role="alert">
  					${ scMessage }
  					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
	
    			<form action="login" method="post" onsubmit="return login();">
        			<div class="mb-3">
            			<label for="emailAddress" class="form-label">Email address</label>
            			<input type="email" class="form-control" id="emailAddress" name="email">
            			<div id="error1" style="color: red;">
            			</div>
        			</div>
        			<div class="mb-3">
            			<label for="password" class="form-label">Password</label>
            			<input type="password" class="form-control" id="password" name="password">
            			<div id="error2" style="color: red;">
            			</div>
        			</div>
      				<div class="d-flex flex-column">
        				<div class="d-flex">
          					<div class="mb-3 form-check">
            					<input type="checkbox" class="form-check-input" id="rememberMe" name="rememberMe">
            					<label class="form-check-label" for="rememberMe">Remember Me</label>
          					</div>
          					<a href="forgot-password" class="ms-auto">Forgot password?</a>
        				</div>
      				</div>
        			<div class="text-center">
        				<button type="submit" class="btn btn-primary">Sign in</button>
        			</div>
    			</form>
			</div>
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-6">
			<div style="height: 8vh">
			</div>
			<img class="img-fluid" alt="success" src="images/signin.png">
		</div>
	</div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>