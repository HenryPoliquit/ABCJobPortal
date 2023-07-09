<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="All users" name="HTMLtitle"/>
</jsp:include>

<div class="container" style="min-height: 76.5vh;">
	<div style="height: 11vh;">
	</div>
	<table class="table table-hover my-3" style="background-color: rgba(255, 255, 255, 0.85); box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.6);">
	    <thead>
	      <tr>
	        <th scope="col">#</th>
	        <th scope="col">Full Name</th>
	        <th scope="col">Email</th>
	        <th scope="col">Title</th>
	        <th scope="col">Action</th>
	      </tr>
	    </thead>
	    <tbody>
	    	<% int i = 1; %>
		   	<c:forEach var="user" items="${users}">
	   		  <tr>
		        <th scope="row"><%= i++ %></th>
		        <td>${user.getFirstName()} ${user.getLastName()}</td>
		        <td>${user.getUser().getEmail()}</td>
		        <td>${user.getTitle() == null ? "-" : user.getTitle()}</td>
		        <td>
		       	<form action="view" method="post" class="ms-auto d-inline-block">
	           		<input type="hidden" name="uId" value="${user.getUserId()}">
		          	<button type="submit" class="btn btn-light">Edit</button>
			   	</form>
		          <a href="" data-bs-toggle="modal" data-bs-target="#deleteModal${user.getUserId()}" class="btn btn-light">Delete</a>
		          <a href="" data-bs-toggle="modal" data-bs-target="#detailModal${user.getUserId()}" class="btn btn-light">Detail</a>
		        </td>
		      </tr>
		      
		      <!-- delete confirmation -->
				<div class="modal fade" id="deleteModal${user.getUserId()}" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">Delete ${user.getFirstName()}</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        You want to really delete this user?
				      </div>
				      <div class="modal-footer">
				        <a href="delete/${user.getUserId()}" class="btn btn-outline-danger">Delete</a>
				      </div>
				    </div>
				  </div>
				</div>
				
				<!-- detail -->
				 <div class="modal fade" id="detailModal${user.getUserId()}" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">Detail</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        <ul class="list-group list-group-flush">
				          <li class="list-group-item">
				            <h4>First Name</h4>
				            <p>${user.getFirstName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Last Name</h4>
				            <p>${user.getLastName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Address</h4>				       
		            		<p>${user.getCity()}, ${user.getCountry()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Title</h4>
				            <p>${user.getTitle()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>About</h4>
				            <p>${user.getAbout()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Company Name</h4>
				            <p>${user.getCompanyName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Website</h4>
				            <a href="">${user.getWebsite()}</a>
				          </li>
				        </ul>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
				      </div>
				    </div>
			  	</div>
			   </div>
		   	</c:forEach>
	    </tbody>
	  </table>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>