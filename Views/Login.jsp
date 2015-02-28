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
						<div class="alert alert-danger">
							You entered incorrect <b>email</b> or <b>password</b>.
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
						</div>
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
					<form id="reset-password">
						<h5>Did you forget your password?</h5>
						<fieldset>
							<div class="form-group">
								<label for="reset-password-email">Email address</label> <input
									type="email" class="form-control" id="reset-password-email"
									placeholder="Your email" required>
							</div>
							<button type="submit" class="btn btn-normal">Reset
								password</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<jsp:include page="includes/footer.jsp" />