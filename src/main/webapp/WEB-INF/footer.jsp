<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Footer -->
<footer class="page-footer font-small blue pt-4"
	style="background-color: rgba(5, 68, 94, 0.7); min-height: 23vh;">
	<!-- Footer Links -->
	<div class="container text-center text-md-left">
		<!-- Grid row -->
		<div class="row">
			<!-- Grid column -->
			<div class="col-md-3 mt-md-0 mt-3">
				<!-- Content -->
				<%
				if ((Boolean) session.getAttribute("isLogin") == null) {
				%>
				<a href="home"><img src="images/logo.png" alt="logo"
					class="img-fluid" style="max-height: 9vh"></a>
				<%
				} else {
				%>
				<a href="dashboard"><img src="images/logo.png" alt="logo"
					class="img-fluid" style="max-height: 9vh"></a>
				<%
				}
				%>
			</div>
			<!-- Grid column -->
			<hr class="clearfix w-100 d-md-none pb-3">
			<!-- Grid column -->
			<div class="col-md-3 mb-md-0 mb-3">
				<!-- General -->
				<h5 class="text-uppercase">General</h5>
				<ul class="list-unstyled">
					<%
					if ((Boolean) session.getAttribute("isLogin") == null) {
					%>
					<li class="nav-item"><a
						class="<%=request.getServletPath().equals("/WEB-INF/views/registration/registration.jsp")%>"
						href="registration">Sign up</a></li>
					<%
					}
					%>
					<li><a href="#">Contact us</a></li>
					<li><a href="#">About</a></li>
				</ul>
			</div>
			<!-- Grid column -->
			<div class="col-md-3 mb-md-0 mb-3">
				<!-- Browse ABC -->
				<h5 class="text-uppercase">Browse ABC</h5>

				<ul class="list-unstyled">
					<li><a href="#">Explore</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Community</a></li>
				</ul>
			</div>
			<!-- Grid column -->
			<!-- Grid column -->
			<div class="col-md-3 mb-md-0 mb-3">

				<!-- My Account -->
				<h5 class="text-uppercase">My Account</h5>

				<ul class="list-unstyled">
					<%
					if ((Boolean) session.getAttribute("isLogin") == null) {
					%>
					<li class="nav-item"><a
						class="<%=request.getServletPath().equals("/WEB-INF/views/login/forgot-password.jsp")%>"
						href="forgot-password">Forgot Password</a></li>
					<%
					}
					%>
					<li><a href="#!">Groups</a></li>
					<li><a href="#!">Topics</a></li>
				</ul>
			</div>
			<!-- Grid column -->
		</div>
		<!-- Grid row -->
	</div>
	<!-- Footer Links -->

	<!-- Copyright -->
	<div class="footer-copyright text-center py-3">
		© 2023 Copyright:
		<%
	if ((Boolean) session.getAttribute("isLogin") == null) {
	%>
		<a href="home"> ABCJobs.com</a>
		<%
		} else {
		%>
		<a href="dashboard"> ABCJobs.com</a>
		<%
		}
		%>
	</div>
	<!-- Copyright -->

</footer>
<!-- Footer -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/validation.js"></script>
<script src="js/profile.js"></script>
</body>
</html>