
$(document).ready(function() {
	if ($('.content-item').first().hasClass('grey')) {
		$('body').css("background-color","#f0f0f0");
	}
	
  
	
	$('#reset-password-toggle').click(function() {
        $('#reset-password').slideToggle(500);
    });
			
	if($(window).width() > 767) {
		$('.navbar-default .navbar-nav > li > ul.dropdown-menu > li > a').mouseenter(function() {
			$(this).animate({paddingLeft:'25px'},200);
		});
		
		$('.navbar-default .navbar-nav > li > ul.dropdown-menu > li > a').mouseleave(function() {
			$(this).animate({paddingLeft:'20px'},200);
		});
		
		$(window).scroll(function() {
			if ($(this).scrollTop() > 400) {
				$('.scroll-up').fadeIn(500);
			} else {
				$('.scroll-up').fadeOut(500);
			}		
		});
		
	}
	
	
	
	
});



