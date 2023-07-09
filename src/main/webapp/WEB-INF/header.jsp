<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ABC Jobs | <%=request.getParameter("HTMLtitle") != null ? request.getParameter("HTMLtitle") : "ABC Jobs Portal"%>
</title>
<link href="css/zephyr.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/sandstone/bootstrap.min.css"
	rel="stylesheet">
</head>

<body style="background-color: #F1F2F6;">
<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: rgba(255, 255, 255, 0.6); border-style: outset; border-width: 2px;">
			<%
			if ((Boolean) session.getAttribute("isLogin") == null) {
			%>
<a class="navbar-brand" href="home"><img src="images/logo.png" alt="logo"  width="117" height="58.5" class="d-inline-block align-top"></a>
			<%
			} else {
			%>
<a class="navbar-brand" href="dashboard"><img src="images/logo.png" alt="logo"  width="117" height="58.5" class="d-inline-block align-top"></a>
			<%
			}
			%>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="nav ms-auto mt-2 mt-lg-0">
					<%
					if ((Boolean) session.getAttribute("isLogin") != null) {
					%>
					<li class="nav-item"><a
						class="btn btn-lg btn-light nav-link <%=request.getServletPath().equals("/WEB-INF/views/search/search.jsp") ? "text-primary" : "text-black"%>"
						href="search" style="font-size: 15px;">Search</a></li>
					<%
					}
					%>
					<%
					if ((Boolean) session.getAttribute("isLogin") == null) {
					%>
					<li class="nav-item"><a
						class="btn btn-lg btn-light nav-link <%=request.getServletPath().equals("") ? "text-primary" : "text-black"%>"
						href="#" style="font-size: 15px;">Community</a></li>
					<%
					}
					%>
					<%
					if ((Boolean) session.getAttribute("isLogin") != null && session.getAttribute("roleId").toString().equals("1")) {
					%>
					<li class="nav-item"><a
						class="btn btn-lg btn-light nav-link <%=request.getServletPath().equals("/WEB-INF/views/admin/admin.jsp") ? "text-primary" : "text-black"%>"
						href="admin" style="font-size: 15px;">Admin</a></li>
					<%
					}
					%>
					<li class="nav-item"><a
						class="btn btn-lg btn-light nav-link <%=request.getServletPath().equals("") ? "text-primary" : "text-black"%>"
						href="#" style="font-size: 15px;">Jobs</a></li>
					<%
					if ((Boolean) session.getAttribute("isLogin") == null) {
					%>
					<li class="nav-item"><a
						class="btn btn-lg btn-light nav-link <%=request.getServletPath().equals("") ? "text-primary" : "text-black"%>"
						href="#" style="font-size: 15px;">Explore</a></li>
					<%
					}
					%>
					<%
					if ((Boolean) session.getAttribute("isLogin") == null) {
					%>
					<li class="nav-item"><a
						class="btn btn-lg btn-light nav-link <%=request.getServletPath().equals("/WEB-INF/views/registration/registration.jsp") ? "text-primary"
		: "text-black"%>"
						href="registration" style="font-size: 15px;">Sign up</a></li>
					<%
					}
					%>
					<%
					if ((Boolean) session.getAttribute("isLogin") != null) {
					%>
					<li class="nav-item"><a
						class="btn btn-lg btn-light nav-link <%=request.getServletPath().equals("") ? "text-primary" : "text-black"%>"
						href="#" style="font-size: 15px;">Messages</a></li>
					<%
					}
					%>
					<%
					if ((Boolean) session.getAttribute("isLogin") != null) {
					%>
					<li class="nav-item"><a
						class="btn btn-lg btn-light nav-link <%=request.getServletPath().equals("/WEB-INF/views/dashboard/dashboard.jsp") ? "text-primary" : "text-black"%>"
						href="dashboard" style="font-size: 15px;">Dashboard</a></li>
					<%
					}
					%>
				<%
				if ((Boolean) session.getAttribute("isLogin") != null) {
				%>
				<li class="nav-item"><a href="logout" class="btn btn-danger btn-lg nav-link"
					style="font-size: 15px;">Sign out</a></li>
				<%
				} else {
				%>
				<li class="nav-item"><a href="login" class="btn btn-outline-primary btn-lg nav-link"
					style="font-size: 15px;">Sign in</a></li>
				<%}
				%>
    </ul>
  </div>
</nav>