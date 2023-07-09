<jsp:include page="../../header.jsp">
    <jsp:param value="Thank You !" name="HTMLtitle" />
</jsp:include>
<div class="container mt-5 pt-4" style="min-height: 70.5vh;">
	<div class="row mt-3">
		<div class="col-md text-center"> 
					<img class="img-fluid" alt="success" src="images/success.png" style="max-height: 200px">
		</div>
	</div>
	<div class="row mt-2">
		<div class="col-md-4">
		</div>
		<div class="col-md-4 p-2 rounded text-center" style="background-color: rgba(255, 255, 255, 0.7); box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.6);">
    		<h1>Congratulations!</h1>
    		<p>Thank you <span class="fw-bold">${email}</span> for your registration. A little more and you're good to go!</p>
    		<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ver">Get Confirmation Link</button>
		</div>

		<div class="modal fade text-center" id="ver" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  			<div class="modal-dialog">
    			<div class="modal-content">
      				<div class="modal-body">
      					<i class='bx bxs-envelope fs-2'></i>
      					<h2>Success!</h2>
      					<p>Confirmation link has been sent to your email.</p>
      					<a class="btn btn-secondary" href="verifyCode">Continue</a>
      				</div>
    			</div>
  			</div>
		</div>
	</div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>