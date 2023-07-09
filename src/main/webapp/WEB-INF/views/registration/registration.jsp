<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
	<jsp:param value="Registration" name="HTMLtitle" />
</jsp:include>
<div class="container mt-5 pt-4" style="min-height: 70.5vh;">
	<div class="row">
		<div class="col" style="height: 5vh"></div>
	</div>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6 col-sm-12 p-2 rounded mb-4"
			style="background-color: rgba(255, 255, 255, 0.7); box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.6);">
			<h1>Registration</h1>
			<p>
				Have an account? <a href="login">Login</a>
			</p>
			<div class="alert alert-danger ${errMsg != null ? "
				d-block" : "d-none" }" role="alert">${errMsg}</div>
			<form:form action="registration" name="myForm" method="post"
				onsubmit="return validateForm();" modelAttribute="registration">
				<div class="form-group row mb-1">
					<div class="form-group col-md-6">
						<label for="firstName" class="form-label">First Name</label> <input
							type="text" class="form-control" id="firstName" name="firstName">
						<div id="message1" style="color: red;"></div>
					</div>

					<div class="form-group col-md-6">
						<label for="lastName" class="form-label">Last Name</label> <input
							type="text" class="form-control" id="lastName" name="lastName">
						<div id="message2" style="color: red;"></div>
					</div>
				</div>

				<div class="form-group mb-3">
					<label for="emailAddresss" class="form-label">Email address</label>
					<input type="email" class="form-control" id="emailAddress"
						name="email"
						value="<%=request.getParameter("email") != null ? request.getParameter("email") : ""%>">
					<div id="message3" style="color: red;"></div>
				</div>

				<div class="form-group mb-3">
					<label for="password" class="form-label">Password</label> <input
						type="password" class="form-control" id="password" name="password">
					<div id="message4" style="color: red;"></div>
				</div>

				<div class="form-group mb-3">
					<label for="passwordConfirmation" class="form-label">Password
						Confirmation</label> <input type="password" class="form-control"
						id="passwordConfirmation" name="passwordConfirmation">
					<div id="message5" style="color: red;"></div>
				</div>

				<div class="text-center">
					<button type="submit" class="btn btn-primary">Register</button>
				</div>
			</form:form>
		</div>
	</div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>