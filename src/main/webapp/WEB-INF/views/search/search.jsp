<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Search" name="HTMLtitle" />
</jsp:include>
<div  class="container mt-5 pt-5" style="min-height: 70.5vh">
    <form action="" method="get" class="mb-4">
    	<h1>Search Other</h1>
    	<input type="text" class="form-control" name="search" placeholder="Search Other" value="<%= request.getParameter("search") != null ? request.getParameter("search") : "" %>">
   	    <div id="searchHelp" class="form-text">Press enter to search</div>
    </form>

    <div>
    	<h1>${notFound == true ? "Not Found" : ""}</h1>
	   	<c:forEach var="s" items="${selected}">
	       <div class="d-flex align-items-center border mb-3 rounded p-5 shadow-sm">
	           <div>
	           	<h2>${s.getFirstName()} ${s.getLastName()}</h2>
	           	<p>${s.getTitle()}</p>
	           	<p>${s.getCity()}, ${s.getCountry()}</p>
	           </div>
	           <form action="result" method="post" class="ms-auto">
	           		<input type="hidden" name="uId" value="${s.getUserId()}">
		           	<button type="submit" class="btn btn-outline-info ms-auto">View Profile</button>
			   </form>
	       </div>
     	</c:forEach>
    </div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>