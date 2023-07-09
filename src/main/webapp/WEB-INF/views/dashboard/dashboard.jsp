<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
    <jsp:param value="Dashboard" name="HTMLtitle" />
</jsp:include>
<div class="container mb-3" style="margin-top: 11vh; min-height: 63.5vh">
	<div class="row">
		<div class="col-3 justify-content-center">
			<div class="row rounded mb-3 pt-2" style="background-color: rgba(255, 255, 255, 0.85); box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.6);">
				<div class="row" style="margin: 0; padding: 0;">
					<div class="col-4 border-none rounded-circle align-self-stretch text-center fs-1 d-flex align-items-center justify-content-center bg-dark bg-gradient text-white">
            			<span>${f}</span>
            			<span>${l}</span>
        			</div>
        			<div class="col-8 p-2">
            			<h5 style="margin: 0;"><a href="profile">${fullName}</a></h5>
            			<p style="margin: 0;">${title}</p>
            			<div class="text-center">
            				<a href="profile" class="btn btn-primary">View Profile</a>
            			</div>
        			</div>
				</div>
				<div class="row mt-2" style="margin: 0; padding: 0;">
					<div class="col-12 text-center">
						<ul class="nav flex-column">
  							<li class="nav-item mb-2">
								<a class="nav-link btn btn-light" href="#">Friends</a>
  							</li>
  							<li class="nav-item mb-2">
    							<a class="nav-link btn btn-light" href="#">Groups</a>
  							</li>
  							<li class="nav-item mb-2">
    							<a class="nav-link btn btn-light" href="#">Pages</a>
  							</li>
  							<li class="nav-item mb-2">
    							<a class="nav-link btn btn-light" href="#">My Items</a>
  							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row rounded" style="background-color: rgba(255, 255, 255, 0.85); box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.6);">
				<div class="col-12">
					<div class="row mt-2" style="margin: 0; padding: 0;">
						<div class="col-12 text-center">
							<ul class="nav flex-column">
  								<li class="nav-item mb-2">
									<a class="nav-link btn btn-light" href="#">Events</a>
  								</li>
  								<li class="nav-item mb-2">
    								<a class="nav-link btn btn-light" href="#">Followed</a>
  								</li>
  								<li class="nav-item mb-2">
    								<a class="nav-link btn btn-light" href="#">Discover More</a>
  								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-6">
			<div class="row rounded  mx-auto mb-3 pb-2" style="background-color: rgba(255, 255, 255, 0.85); max-width: 538px; box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.6);">
				<div class="col-12">
					<div class="row p-2">
						<div class="col-2 border-none rounded align-self-stretch text-center fs-1 d-flex align-items-center justify-content-center bg-dark bg-gradient text-white">
            				<span>${f}</span>
            				<span>${l}</span>
        				</div>
        				<div class="col-10">
        					<div class="mt-3">
        						<form class="form-inline">
    								<input class="form-control mr-sm-2" type="text" placeholder="Create Post..." aria-label="Post" style="width: 83%;">
    								<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Post</button>
  								</form>
        					</div>
        				</div>
					</div>
					<div class="row" style="margin: 0; padding: 0;">
						<ul class="nav justify-content-center">
  							<li class="nav-item">
    							<a class="nav-link btn-lg btn-light me-3 ps-4 pe-4" href="#">Photo</a>
  							</li>
  							<li class="nav-item">
    							<a class="nav-link btn-lg btn-light me-3  ps-4 pe-4" href="#">Video</a>
  							</li>
  							<li class="nav-item">
    							<a class="nav-link btn-lg btn-light me-3  ps-4 pe-4" href="#">Event</a>
  							</li>
  							<li class="nav-item">
    							<a class="nav-link btn-lg btn-light ps-4 pe-4" href="#">Article</a>
  							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row rounded  mx-auto" style="background-color: rgba(255, 255, 255, 0.85); max-width: 538px; box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.6);">
				<div class="col-12">
					<div class="row">
						<div class=" d-flex flex-row">
							<div class="p-2">
								<img class="img-fluid rounded-circle" alt="profile" src="images/profile.png" style="width: 75px;">
							</div>
							<div class="p-2">
								<h4 >Negros Oriental State University</h4>
								<p style="margin:0">25,300 FOLLOWERS</p>
								<p style="margin:0">11 days ago</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="row">
								<h5><i>We are proud to announce that our university is now ready for Software Engineering.</i></h5>
								<p>On September 24, 2023, we will be conducting enrollment for the Software Engineering course. Students accepted will be the first batch of Software Engineers that will be nurtured by our university.</p>
							</div>
							<div class="row pb-3">
								<img class="img-fluid rounded" alt="post" src="images/post.png">
							</div>
							<div class="row pb-3">
								<ul class="nav ms-3 justify-content-center"">
  									<li class="nav-item">
    									<a class="nav-link btn-lg btn-light me-3 ps-5 pe-5" href="#">Like</a>
  									</li>
  									<li class="nav-item">
    									<a class="nav-link btn-lg btn-light me-3  ps-5 pe-5" href="#">Comment</a>
  									</li>
  									<li class="nav-item">
    									<a class="nav-link btn-lg btn-light me-3  ps-5 pe-5" href="#">Share</a>
  									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-3">
			<div class="row rounded" style="background-color: rgba(255, 255, 255, 0.85); box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.6);">
				<div class="col-12">
					<div class="row p-2">
						<h4>Add to your feed</h4>
						<ul class="nav flex-column ms-1">
  							<li class="nav-item mb-2">
								<a class="nav-link btn btn-light" href="#">						
									<div class=" d-flex flex-row">
										<div class="p-1">
											<img class="img-fluid rounded-circle" alt="profile" src="images/profile.png" style="width: 50px;">
										</div>
										<div class="p-1">
											<h6 style="margin:0">Paul Henry Poliquit</h6>
											<p style="margin:0">21, 132 FOLLOWERS</p>
										</div>
									</div>
								</a>
  							</li>
  							<li class="nav-item mb-2">
    							<a class="nav-link btn btn-light" href="#">						
									<div class=" d-flex flex-row">
										<div class="p-1">
											<img class="img-fluid rounded-circle" alt="profile" src="images/profile.png" style="width: 50px;">
										</div>
										<div class="p-1">
											<h6 style="margin:0">Joshua Faustorilla</h6>
											<p style="margin:0">24, 327 FOLLOWERS</p>
										</div>
									</div>
								</a>
  							</li>
  							<li class="nav-item mb-2">
    							<a class="nav-link btn btn-light" href="#">						
									<div class=" d-flex flex-row">
										<div class="p-1">
											<img class="img-fluid rounded-circle" alt="profile" src="images/profile.png" style="width: 50px;">
										</div>
										<div class="p-1">
											<h6 style="margin:0">Mia Amores</h6>
											<p style="margin:0">27, 634 FOLLOWERS</p>
										</div>
									</div>
								</a>
  							</li>
  							<li class="nav-item mb-2">
    							<a class="nav-link btn btn-light" href="#">						
									<div class=" d-flex flex-row">
										<div class="p-1">
											<img class="img-fluid rounded-circle" alt="profile" src="images/profile.png" style="width: 50px;">
										</div>
										<div class="p-1">
											<h6 style="margin:0">John Enolpe</h6>
											<p style="margin:0">21, 537 FOLLOWERS</p>
										</div>
									</div>
								</a>
  							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>