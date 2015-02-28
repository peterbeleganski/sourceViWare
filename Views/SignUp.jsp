<jsp:include page="includes/header.jsp" />
<jsp:include page="includes/nav.jsp" />

<section class="content-item grey" id="login">
    	<div class="container">
            <div class="row">
            	<div class="col-sm-6">
                	<h2>Create a new Account</h2>
                	<h3>Why register?</h3>
                    <ul class="list-unstyled">
                    	<li><i class="fa fa-users"></i>Start your carrer here.</li>
                        <li><i class="fa fa-users"></i>Learn to code web, mobile and desktop applications.</li>
                        <li><i class="fa fa-tasks"></i>Learn by having fun.</li>
                    </ul>
                    <p>Already have an account? Then you can sign in with your existing username and password.</p>
                    <a href="HomeController?action=login" class="btn btn-normal">Sign in</a> to your account.
                </div>
                <div class="col-sm-6">
                    <div class="form-wrapper">
                        <h4>Create Account</h4>
						<form action="Sign" method="POST">
						<input type="hidden" name="action" value="SignUp" />
                        	<fieldset>
                            	<div class="form-group">
                                	<label for="username">Username</label>
                                    <input type="text" class="form-control" id="username" placeholder="Your username" required name="username">
                                </div>
                            	<div class="form-group">
                                	<label for="email">Email address</label>
                                    <input type="email" class="form-control" id="email" placeholder="Your email" required name="email">
                                </div>
                                <div class="form-group">
                                	<label for="password">Password</label>
                                    <input type="password" class="form-control" id="password" placeholder="Password" required name = "password">
                                </div>
                                <div class="form-group">
                                	<label for="confirm_password">Confirm Password</label>
                                    <input type="password" class="form-control" id="confirm_password" placeholder="Confirm password" required>
                                </div>
                                <p>By creating an account, you agree to our <a href="">Terms & Conditions</a> and <a href="">Privacy Policy</a>.</p>
                                <button type="submit" class="btn btn-normal">Create account</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
<jsp:include page="includes/footer.jsp" />