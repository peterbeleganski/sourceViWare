<jsp:include page="includes/header.jsp" />
<jsp:include page="includes/nav.jsp" />
 
 <section class="content-item" id="team">
    	<div class="container">
        	<div class="content-headline"><h2>Meet our team</h2></div>
        	
        	<div class="row">
            	<!-- TEAM MEMBER 1 - START -->
                <div class="col-sm-3">
                	<div class="team-member">
                        <div class="overlay-wrapper2">
                            <img src="image/Peter.jpg" class="img-responsive" alt="">
                            <span class="overlay">
                                <a href="https://www.facebook.com/pepito.beleganski1"><i class="fa fa-facebook"></i></a>
                                <a href=""><i class="fa fa-twitter"></i></a>
                                <a href=""><i class="fa fa-linkedin"></i></a>
                            </span>
                        </div>
                        <h4>Peter Beleganski</h4>
                        <span>Web Developer, Instructor</span>
                        <p>Student in mathematics High School - "Akademik Kiril Popov".Teaching HTML & CSS, JSP and Servlets, Databases</p>
                	</div>
                </div>
                <!-- TEAM MEMBER 1 - END -->
                <!-- TEAM MEMBER 2 - START -->
                <div class="col-sm-3">
                	<div class="team-member">
                        <div class="overlay-wrapper2">
                            <img src="image/Daniel.jpg" class="img-responsive" alt="">
                            <span class="overlay">
                                <a href="https://www.facebook.com/daniel.dimitrov.31508?fref=ts"><i class="fa fa-facebook"></i></a>
                                <a href=""><i class="fa fa-twitter"></i></a>
                                <a href=""><i class="fa fa-linkedin"></i></a>
                            </span>
                        </div>
                        <h4>Daniel Dimitrov</h4>
                        <span>Web Developer, Instructor</span>
                        <p>Student in mathematics High School - "Akademik Kiril Popov".Teaching JavaScript, jQuery, Android.</p>
                	</div>
                </div>
                <!-- TEAM MEMBER 2 - END -->
                <!-- TEAM MEMBER 3 - START -->
                <div class="col-sm-3">
                	<div class="team-member">
                        <div class="overlay-wrapper2">
                            <img src="image/dincho2.jpg" class="img-responsive" alt="">
                            <span class="overlay">
                                <a href="https://www.facebook.com/dincho.kostadinow?fref=ts"><i class="fa fa-facebook"></i></a>
                                <a href=""><i class="fa fa-twitter"></i></a>
                                <a href=""><i class="fa fa-linkedin"></i></a>
                            </span>
                        </div>
                        <h4>Dincho Kostadinov</h4>
                        <span>Instructor</span>
                        <p>Student in mathematics High School - "Akademik Kiril Popov".Teaching Java.</p>
                	</div>
                </div>
               
            </div>
            <div class="alert alert-hg alert-success">
            	If you want to be part of our team, please contact us.
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            </div>
        </div>
    </section>
    <!-- ==========================
    	TEAM - END 
    =========================== -->
    
 
    
    <!-- ==========================
    	CONTACT - START
    =========================== --> 
    <section class="content-item grey" id="contact">
    	<div class="container">
        	<div class="row">
            		
                <div class="col-sm-7">
                <h2>Leave a message</h2>
                    <form method="POST" action="Contact">
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" placeholder="Your name" required name="username">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="subject" placeholder="Subject" required name="subject">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" id="message" placeholder="Your message" required name="textMsg"></textarea>
                        </div> 
                        
                        <button type="submit" class="btn btn-normal">Send Message</button>   
                        
                    </form>
                </div>
                <div class="col-sm-5">
                    <h2>Contacts</h2>
                    <div class="box" id="contacts">
                        <ul class="list-unstyled">
                            <li><i class="fa fa-home"></i>212-222 Broadway, New York, NY 10038, USA</li>
                            <li><i class="fa fa-envelope"></i>info@mycompany.com</li>
                            <li><i class="fa fa-phone"></i>+420 123 456 789</li>
                            <li><i class="fa fa-globe"></i>www.mycompany.com</li>
                        </ul>
                        <h3>Opening hours</h3>
                        <ul class="list-unstyled">
                            <li><b>Monday-Friday:</b> 9:00 - 16:00</li>
                            <li><b>Saturday:</b> 9:00 - 12:00</li>
                            <li><b>Sunday:</b> Closed</li>
                        </ul>
                    </div>
                    
                </div> 
            </div>
        </div>
    </section>
                
<jsp:include page="includes/footer.jsp" />