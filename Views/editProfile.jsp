<jsp:include page="includes/header.jsp" />
<jsp:include page="includes/nav.jsp" />


<div class="container">
	<div class="content-headline">
		<h2>Edit you information</h2>
	</div>
	<div class="row">
		<div class="col-sm-5">
			<div class="panel-group">
				<form class="form-horizontal" action="Sign" method="POST">
					<input type="hidden" name="action" value="SignUp" />
					<div class="form-group">
						<label for="inputEmail" class="">Email</label>
						<div class="col-sm-offset-0">
							<input type="email" class="form-control" id="inputEmail"
								placeholder="New Email">
						</div>
					</div>
					<div class="form-group">
						<label for="inputUsername" class="">Username</label>
						<div class="col-offset-0">
							<input type="text" class="form-control" id="inputUsername"
								placeholder="New Username">
						</div>
					</div>
					<div class="form-group">
						<label for="inputAge" class="">Age</label>
						<div class="col-offset-0">
							<input type="number" min="1" max="100">
						</div>
					</div>
					<div class="form-group">
						<label for="github" class="">Github:</label>
						<div class="col-offset-0">
							<input type="text" id="github" class="form-control" placeholder="Link to your github">
						</div>
					</div>
					<div class="form-group">
						<label for="male" class="">Gender:</label>
						<div class="col-offset-0">
							<input type="radio"  name="gender" id="male">Male
							<input type="radio" name="gender">Female
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-6 col-sm-10">
							<button type="submit" class="btn btn-success">EDIT</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="form-group">
				<div class="col-sm-3">
					<p class="form-control-static">
						<img src="image/acc2.png" />
					</p>
				</div>
			</div>
		</div>
		<div class="col-sm-2 form-horizontal">
			<div class="form-group">
				<label class="col-sm-5 control-label">Email</label>
				<div class="col-sm-5">
					<p class="form-control-static">email@example.com</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 control-label">Username</label>
				<div class="col-sm-5">
					<p class="form-control-static">email@example.com</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 control-label">Age</label>
				<div class="col-sm-5">
					<p class="form-control-static">17</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 control-label">Github</label>
				<div class="col-sm-5">
					<p class="form-control-static">peterbeleganski@github.com</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 control-label">Gender</label>
				<div class="col-sm-5">
					<p class="form-control-static">Male</p>
				</div>
			</div>
		</div>


	</div>
</div>



<jsp:include page="includes/footer.jsp" />