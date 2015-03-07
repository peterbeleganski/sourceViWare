<jsp:include page="includes/header.jsp" />
<jsp:include page="includes/nav.jsp" />
 
 <section class="content-item" id="team">
    	<div class="container">
        	<div class="content-headline"><h2>Meet our team</h2></div>
        	
        	<div class="row">
            	
                <div class="col-sm-3">
                	<div class="team-member">
                        <div>
                            <img src="image/Peter.jpg" class="img-responsive" alt="">
                        </div>
                        <h4>Peter Beleganski</h4>
                        <span>Web Developer, Instructor</span>
                        <p>Student in mathematics High School - "Akademik Kiril Popov".Teaching HTML & CSS, JSP and Servlets, Databases</p>
                	</div>
                </div>
                
                <div class="col-sm-3">
                	<div class="team-member">
                        <div>
                            <img src="image/Daniel.jpg" class="img-responsive" alt=""> 
                        </div>
                        <h4>Daniel Dimitrov</h4>
                        <span>Web Developer, Instructor</span>
                        <p>Student in mathematics High School - "Akademik Kiril Popov".Teaching JavaScript, jQuery, Android.</p>
                	</div>
                </div>
               
        </div>
    </section>
    
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
                
            </div>
        </div>
    </section>
                
<jsp:include page="includes/footer.jsp" />