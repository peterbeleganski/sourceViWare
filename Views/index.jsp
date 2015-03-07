<jsp:include page="includes/header.jsp" />

    <h1>ViWare</h1> 
    
	<jsp:include page="includes/nav.jsp"></jsp:include>
    
    <section class="jumbotron">
    	<div class="container">
        	<div class="row">
            	<div class="col-sm-5">
                	<h2>ViWare-Learn By doing it!</h2>
                    <h3>There is only one success-to be able to spend your life in your own way. Sign Up to get access to our lessons ! </h3>
                    <a href="HomeController?action=login" class="btn btn-normal">Sign In</a>
                    <a href="HomeController?action=Sign-up" class="btn btn-default">Sign Up</a>
                </div>
                <div class="col-sm-7">
					
					
					<jsp:include page="slideImage.jsp"></jsp:include>
					<!-- <img src="image/jumbotron.png" class="img-responsive" alt=""> -->
					
                </div>
            </div>
        </div>
    </section>
    
    <section class="content-item" id="services">
    	<div class="container">
        	<div class="content-headline"><h2>WHAT WE DO</h2><h3>ViWare Tracks guide you through the knowledge you need to land an entry-level position, but your career does not  end there.</h3></div>
        	<div class="row">
            	<div class="col-sm-4">
                	<i class="fa fa-tasks"></i>
                    <h4>Java</h4>
                    <p>In this course you will gain all the knowledge you will need to build an interactive command line program in Java. No prior programming experience is required. You will create an interactive game that prompts users for different parts of a sentence and then generates a story using those words.</p>
                </div>
                <div class="col-sm-4">
                	<i class="fa fa-code"></i>
                    <h4>JavaScript</h4>
                    <p>JavaScript is a programming language that drives the web: from front-end user interface design, to backend server-side programming, you'll find JavaScript at every stage of a web site and web application. In this course, you'll learn the fundamental programming concepts and syntax of the JavaScript programming language.</p>
                </div>
                <div class="col-sm-4">
                	<i class="fa fa-users"></i>
                    <h4>Build a Simple Android App</h4>
                    <p>This project covers the very basics of Android development. We will build a simple app that will serve up some fun facts when you tap on a button. By the end you will have a good idea of how a basic app works, and you will be armed with the knowledge to start building more.</p>
                </div>
            </div>
        </div>
    </section>
   
    <section class="content-item pricing">
    	<div class="container">
        	<div class="content-headline"><h2>Courses</h2><h3>Choose course.</h3></div>
            
        	<div class="row">
            	
                
                <div class="col-sm-4">
                	<div class="pricing-plan">
                    	<h4>Java</h4>
                    	<div class="prize">2 hours</div>
                    	<ul class="list-unstyled">
                        	<li><i class="fa fa-code"></i>Configure Eclipse IDE</li>
                            <li><i class="fa fa-coffee"></i>Understanding operators</li>
                            <li><i class="fa fa-coffee"></i>Conditions</li>
                            <li><i class="fa fa-coffee"></i>Loops</li>
                            <li><i class="fa fa-coffee"></i>Arrays</li>
                            <li><i class="fa fa-gift"></i>Bonus lesson</li>
                        </ul>
                        <div class="order-wrapper"><a href="HomeController?action=login" class="btn btn-normal btn-order">Start</a></div>
                    </div>
                </div>
                <div class="col-sm-4">
                	<div class="pricing-plan active">
                    	<h4>JavaScript</h4>
                    	<div class="prize">3 hours</div>
                    	<ul class="list-unstyled">
                        	<li><i class="fa fa-users"></i>How the Web works ?</li>
                            <li><i class="fa fa-tasks"></i>Variables</li>
                            <li><i class="fa fa-tasks"></i>Loops</li>
                            <li><i class="fa fa-tasks"></i>DOM</li>
                            <li><i class="fa fa-plus"></i>Free demos</li>
                            <li><i class="fa fa-link"></i>Where to go now ?</li>
                        </ul>
                        <div class="order-wrapper"><a href="HomeController?action=login" class="btn btn-normal btn-order">Start</a></div>
                    </div>
                </div>
                
                <div class="col-sm-4">
                	<div class="pricing-plan">
                    	<h4>Android</h4>
                    	<div class="prize">3-5 hours</div>
                    	<ul class="list-unstyled">
                        	<li><i class="fa fa-code"></i>Intro to mobile apps</li>
                            <li><i class="fa fa-tasks"></i>Setting up Android Studio</li>
                            <li><i class="fa fa-tasks"></i>How to set up your emulator</li>
                            <li><i class="fa fa-tasks"></i>Your first apps</li>
                            <li><i class="fa fa-gift"></i>Advanced Topic</li>
                            <li><i class="fa fa-users"></i>How to deploy your app</li>
                        </ul>
                        <div class="order-wrapper"><a href="HomeController?action=login" class="btn btn-normal btn-order">Start</a></div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <section class="content-item" id="team">
    	<div class="container">
        	<div class="content-headline"><h2>OUR TEAM</h2><h3>Teamwork makes the dream work, but a vision becomes a nightmare when the leader has a big dream and a bad team.</h3></div>
            
        	<div class="row">
            	
                <div class="col-sm-3">
                	<div class="team-member">
                        <div>
                            <img  src="image/Peter.jpg" class="img-responsive" alt="">
                        </div>
                        <h4>Peter Beleganski</h4>
                        <span>Web Developer</span>
                        <p>Student in Mathematics High School in Plovdiv, Bulgaria. 16 years old.</p>
                	</div>
                </div>
                <div class="col-sm-3">
                	<div class="team-member">
                        <div>
                            <img src="image/Daniel.jpg" class="img-responsive" alt="">
                        </div>
                        <h4>Daniel Dimitrov</h4>
                        <span>Web Developer</span>
                        <p>Student in Mathematics High School in Plovdiv, Bulgaria. 16 years old.</p>
                	</div>
                </div>
                </div>
                
          
        </div>
    </section>
    <section class="content-item" id="contact">
    	<div class="container">
        	<div class="content-headline"><h2>CONTACT US</h2><h3>If you want to be part in our team leave us a message. </h3></div>
        	<div class="row">
            	<form>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" placeholder="Your name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" id="email" placeholder="Your email" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="subject" placeholder="Subject" required>
                        </div>
                        
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <textarea class="form-control" id="message" placeholder="Your message" required></textarea>
                        </div> 
                    </div>
                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-normal">Send Message</button>   
                    </div>
                </form>
            </div>
        </div>
    </section>
    

<jsp:include page="includes/footer.jsp" />