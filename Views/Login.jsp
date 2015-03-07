<jsp:include page="includes/header.jsp" />

<jsp:include page="includes/nav.jsp" />

<section class="content-item grey" id="login">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<div class="form-wrapper">
					<h4>Sign in</h4>
					<form action="Sign" method="POST">
						<input type="hidden" name = action value ="login" />
						
							
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
						
						<fieldset>
							<div class="form-group">
								<label for="email">Email address</label> <input type="email"
									class="form-control" id="email" placeholder="Your email"
									required name="email">
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" placeholder="Password"
									required name="password">
							</div>
							<button type="submit" class="btn btn-normal">Login</button>
							<%if(request.getAttribute("message") !=null) { %>
								<h2><%=request.getAttribute("message") %></h2>
							<%} %>

						</fieldset>
	
					</form>
					
				</div>
			</div>
		</div>
	</div>
</section>

<jsp:include page="includes/footer.jsp" />