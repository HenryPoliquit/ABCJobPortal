<jsp:include page="../../header.jsp">
    <jsp:param value="Verify Code" name="HTMLtitle" />
</jsp:include>
<div class="container mt-5" style="min-height: 70.5vh;">
	<div class="row">
		<div class="col" style="height: 17vh">
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4 p-2 rounded" style="background-color: rgba(255, 255, 255, 0.7); box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.6);">
			<h1>Verify your email.</h1>
    		<form action="verifyCode" method="post" name="codeCheck" onsubmit="return checkCode();">
        		<div class="mb-3">
            		<label for="verification" class="form-label">Enter the code that we sent to your email:</label>
            		<input type="password" class="form-control" id="verification" name="verification">
            		<div id="message7" style="color: red;">
        		    </div>
    			</div>
        		<button class="btn btn-primary" type="submit">Verify</button>
    		</form>
		</div>
	</div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>