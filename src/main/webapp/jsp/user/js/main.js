;(function () {
	
	'use strict';

	// iPad and iPod detection	
	var isiPad = function(){
		return (navigator.platform.indexOf("iPad") != -1);
	};

	var isiPhone = function(){
	    return (
			(navigator.platform.indexOf("iPhone") != -1) || 
			(navigator.platform.indexOf("iPod") != -1)
	    );
	};


 

var Height60 = function() {
		if ( !isiPad() && !isiPhone() ) {
			$('.application-pic').css('height', $(window).width()* 0.4 );
			$('.application-pic').css('top', $(window).height()-$(window).width()* 0.4);
			$(window).resize(function(){
				$('.application-pic').css('height', $(window).width()* 0.4);
				$('.application-pic').css('top', $(window).height()-$(window).width()* 0.4);
			});
		}
	};
	
	
	var homeAppheight = function() {
		
		var h1= $(window).height()-$(window).width()* 0.4;
		
		if ( !isiPad() && !isiPhone() ) {
			 
			$('.moresapp-height').css({
				'height': h1,
				});
			$(window).resize(function(){
				$('.moresapp-height').css({
				'height': h1,
				});
			});
		}
	};


var ScrollTop =  function() {
        $(window).scroll(function() {
            $("#header").offset().top > 10 ? ($("#header").addClass("mini")) : ($("#header").removeClass("mini"));
        });
   
    };



	// Scroll Next
	var ScrollNext = function() {
		$('.sliderArrow').on('click',  function(e){
		
		
			e.preventDefault();


			$('html, body').animate({
				scrollTop: $('#mservice').offset().top
			}, 1000, 'easeInOutExpo');
			return false;
		});
	};


	var goToTop = function() {

		$('.js-gotop').on('click', function(event){
			
			event.preventDefault();

			$('html, body').animate({
				scrollTop: $('html').offset().top
			}, 500);
			
			return false;
		});
	
	};

var filmEffect = function(){
    $(window).load(function(){
      $(".twentytwenty-container[data-orientation!='vertical']").twentytwenty({default_offset_pct: 0.7});
      $(".twentytwenty-container[data-orientation='vertical']").twentytwenty({default_offset_pct: 0.3, orientation: 'vertical'});
    });
   };
   
 var owlNewslist = function(){
	 
	var a = $("#owlNewslist");
        a.owlCarousel({
	
            autoPlay: 2e3,
            items: 3,
            itemsDesktop: [1e3, 3],
            itemsDesktopSmall: [900, 1],
            itemsTablet: [600, 1],
            itemsMobile: !1
        }); 
 };
 


  
  $(document).ready(function() {


 /* Parallax section
    -----------------------------------------------*/
  function initParallax() {
    $('#intro').parallax("100%", 0.3);
	$('#product-1-head').parallax("100%", 0.1);
    $('#product-2-head').parallax("100%", 0.1);
	$('#product-4-head').parallax("100%", 0.1);
	$('#contact').parallax("100%", 0.1);	
  }
  initParallax();

  });
  
  
 var wow =function(){ 
  new WOW({ mobile: false }).init();
 };
 $(function() {
 var	$window = $(window),
			$body = $('body');
			$body.addClass('is-loading');
			$window.on('load', function() {
				window.setTimeout(function() {
					$body.removeClass('is-loading');
				}, 0);
			});
		});

	// Document on load.
	$(function(){
		 wow();
		ScrollTop ();
		Height60();
		homeAppheight();
		ScrollNext();
		goToTop();
		filmEffect();
		owlNewslist();
		/* initParallax();*/
		
		  
	});
	
	
	
}());
