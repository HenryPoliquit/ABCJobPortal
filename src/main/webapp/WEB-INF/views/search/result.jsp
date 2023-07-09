<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../../header.jsp">
	<jsp:param value="Result" name="HTMLtitle" />
</jsp:include>

<div class="container mt-5 pt-5" style="min-height: 70vh;">
	<div
		class="alert alert-success alert-dismissible fade show ${message == null ? "
		d-none" : "d-flex"}" role="alert">
		${message}
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>
	<div class="row border rounded-3 p-2 mb-4"
		style="background-color: rgba(255, 255, 255, 0.5); border: 1px solid grey; box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.6);">
		<div
			class="col-2 border-none rounded-circle align-self-stretch text-center fs-1 d-flex align-items-center justify-content-center bg-success bg-gradient text-white">
			<span>${f}</span> <span>${l}</span>
		</div>
		<div class="col-8 p-4">
			<h2>${fullName}</h2>
			<p>${title}</p>
			<p>${city}, ${country}</p>
		</div>
		<div class="col-2 align-self-center">
			<button class="btn btn-success" id="follow">Follow</button>
		</div>
	</div>

	<div class="row">
		<div class="col-4">
			<div class="mb-3 p-2 rounded"
				style="background-color: rgba(255, 255, 255, 0.5); border: 1px solid grey;">
				<h3>About Me</h3>
				<p>${about}</p>
			</div>
			<div class="mb-3 p-2 rounded"
				style="background-color: rgba(255, 255, 255, 0.5); border: 1px solid grey;">
				<h3>Experience</h3>
				<c:forEach var="e" items="${ex}">
					<div class="d-flex align-items-center">
						<div class="p-3">
							<h4>${e.getPosition()}(${e.getStartDate().split("-")[0]}-
								${e.getEndDate().split("-")[0]})</h4>
							<small>${e.getCompanyName()}</small>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="mb-3 p-2 rounded"
				style="background-color: rgba(255, 255, 255, 0.5); border: 1px solid grey;">
				<h3>Education</h3>
				<c:forEach var="e" items="${ed}">
					<div class="d-flex align-items-center">
						<div class="p-3">
							<h4>${e.getEducationName()}
								(${e.getStartDate().split("-")[0]} -
								${e.getEndDate().split("-")[0]})</h4>
							<small>${e.getIntitutionName()}</small>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-6">
			<div class="row rounded  mx-auto mb-3 pb-2"
				style="background-color: rgba(255, 255, 255, 0.85); max-width: 538px; box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.6);">
				<div class="col-12">
					<div class="row p-2">
						<div
							class="col-2 border-none rounded align-self-stretch text-center fs-1 d-flex align-items-center justify-content-center bg-dark bg-gradient text-white">
							<span>${f}</span> <span>${l}</span>
						</div>
						<div class="col-10">
							<div class="mt-3">
								<form class="form-inline">
									<input class="form-control mr-sm-2" type="text"
										placeholder="Create Post..." aria-label="Post"
										style="width: 83%;">
									<button class="btn btn-outline-success my-2 my-sm-0"
										type="submit">Post</button>
								</form>
							</div>
						</div>
					</div>
					<div class="row" style="margin: 0; padding: 0;">
						<ul class="nav justify-content-center">
							<li class="nav-item"><a
								class="nav-link btn-lg btn-light me-3 ps-4 pe-4" href="#">Photo</a>
							</li>
							<li class="nav-item"><a
								class="nav-link btn-lg btn-light me-3  ps-4 pe-4" href="#">Video</a>
							</li>
							<li class="nav-item"><a
								class="nav-link btn-lg btn-light me-3  ps-4 pe-4" href="#">Event</a>
							</li>
							<li class="nav-item"><a
								class="nav-link btn-lg btn-light ps-4 pe-4" href="#">Article</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row rounded  mx-auto mb-3"
				style="background-color: rgba(255, 255, 255, 0.85); max-width: 538px; box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.6);">
				<div class="col-12">
					<div class="row">
						<div class=" d-flex flex-row">
							<div class="p-2">
								<img class="img-fluid rounded-circle" alt="profile"
									src="images/profile.png" style="width: 75px;">
							</div>
							<div class="p-2">
								<h4>Negros Oriental State University</h4>
								<p style="margin: 0">25,300 FOLLOWERS</p>
								<p style="margin: 0">11 days ago</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="row">
								<h5>
									<i>We are proud to announce that our university is now
										ready for Software Engineering.</i>
								</h5>
								<p>On September 24, 2023, we will be conducting enrollment
									for the Software Engineering course. Students accepted will be
									the first batch of Software Engineers that will be nurtured by
									our university.</p>
							</div>
							<div class="row pb-3">
								<img class="img-fluid rounded" alt="post" src="images/post.png">
							</div>
							<div class="row pb-3">
								<ul class="nav ms-3 justify-content-center"">
									<li class="nav-item"><a
										class="nav-link btn-lg btn-light me-3 ps-5 pe-5" href="#">Like</a>
									</li>
									<li class="nav-item"><a
										class="nav-link btn-lg btn-light me-3  ps-5 pe-5" href="#">Comment</a>
									</li>
									<li class="nav-item"><a
										class="nav-link btn-lg btn-light me-3  ps-5 pe-5" href="#">Share</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-2">
			<div>
				<div class="d-flex align-items-center p-2 rounded mb-2"
					style="background-color: rgba(255, 255, 255, 0.5); border: 1px solid grey;">
					<div class="p-2">
						<h4>Company</h4>
						<small>${company}</small>
					</div>
				</div>
				<div class="d-flex align-items-center p-2 rounded mb-2"
					style="background-color: rgba(255, 255, 255, 0.5); border: 1px solid grey;">
					<div class="p-2">
						<h4>Email</h4>
						<small>${email}</small>
					</div>
				</div>
				<div class="d-flex align-items-center p-2 rounded mb-2"
					style="background-color: rgba(255, 255, 255, 0.5); border: 1px solid grey;">
					<div class="p-2">
						<h4>Website</h4>
						<small>${website}</small>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<script>
	const followBtn = document.querySelector("#follow");
	followBtn.addEventListener("click", () => {
		if(followBtn.innerHTML == "Follow") {
			followBtn.classList.remove("btn-success");
			followBtn.classList.add("btn-outline-success");
			followBtn.innerHTML = "Unfollow";
		} else {
			followBtn.classList.add("btn-success");
			followBtn.classList.remove("btn-outline-success");
			followBtn.innerHTML = "Follow";
		}
	});
</script>
<jsp:include page="../../footer.jsp"></jsp:include>