
$(document).ready(function() {
	if ($('.content-item').first().hasClass('grey')) {
		$('body').css("background-color","#f0f0f0");
	}
	
  	$('.show-image').magnificPopup({type:'image'});
	
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
	
	$('.overlay-wrapper').mouseenter(function() {
		$(this).find('.overlay a:first-child').addClass('animated slideInLeft');
		$(this).find('.overlay a:last-child').addClass('animated slideInRight');
    });
	
	$('.overlay-wrapper').mouseleave(function() {
		$(this).find('.overlay a:first-child').removeClass('animated slideInLeft');
		$(this).find('.overlay a:last-child').removeClass('animated slideInRight');
    });
	
	$('.jcarousel li').mouseenter(function() {
        $(this).find('p').slideDown(600);
    });
	
	$('.jcarousel li').mouseleave(function() {
        $(this).find('p').stop().slideUp(600);
    });
	
	
});



