<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
    <jsp:param value="Admin" name="HTMLtitle" />
</jsp:include>
<div class="container" style="min-height: 76.5vh">
	<div style="height: 11vh;">
	</div>
	<h2>Welcome ${adminName}, what do you want to do?</h2>
	<a href="all-users" class="btn btn-outline-primary">Show all users</a>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>