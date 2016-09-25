function disableScroll() {
  if (window.addEventListener) // older FF
      window.addEventListener('DOMMouseScroll', preventDefault, false);
  window.onwheel = preventDefault; // modern standard
  window.onmousewheel = document.onmousewheel = preventDefault; // older browsers, IE
  window.ontouchmove  = preventDefault; // mobile
  document.onkeydown  = preventDefaultForScrollKeys;
}

function enableScroll() {
    if (window.removeEventListener)
        window.removeEventListener('DOMMouseScroll', preventDefault, false);
    window.onmousewheel = document.onmousewheel = null; 
    window.onwheel = null; 
    window.ontouchmove = null;  
    document.onkeydown = null;  
}

/* -------------------------------------------------------------------------------- */
/* This fires when HTML is ready (but not necessarily all resources e.g. images) */
/* -------------------------------------------------------------------------------- */

$(document).ready(function(){
	
	/* --------------------------------- */	
	/* Scroll-Up Button                  */
	/* --------------------------------- */

	$('.scroll-up').on('click', function(){
		$('html,body').animate({
			scrollTop: 0
		}, 500);
	})
	

	/* --------------------------------- */	
	/* Smoothscroll on target click      */
	/* --------------------------------- */

	var scrollnow = function(e) {
	    // if scrollnow()-function was triggered by an event
	    if (e) {
	        e.preventDefault();
	        var target = this.hash;
	    }
	    // else it was called when page with a #hash was loaded
	    else {
	        var target = location.hash;
	        console.log(target);
	    }
	

		var offset = $('.site-header').height() | 100;
		console.log(offset)
	    
	    window.setTimeout( function(){
		    $('html,body').animate({
				scrollTop: $(target).offset().top - offset
			}, 500);
		}, 250)
    };

    // if page has a #hash
    if (location.hash) {
        $('html, body').scrollTop(0).show();
        // smooth-scroll to hash
        setTimeout(function(){
            $('html, body').scrollTop(0).show();
            scrollnow();
        }, 1);

    }

    // for each <a>-element that contains a "/" and a "#"
    $('a[href*="/"][href*=#]').each(function(){
        // if the pathname of the href references the same page
        if (this.pathname.replace(/^\//,'') == location.pathname.replace(/^\//,'') && this.hostname == location.hostname) {
            // only keep the hash, i.e. do not keep the pathname
            $(this).attr("href", this.hash);
        }
    });

    // select all href-elements that start with #
    // including the ones that were stripped by their pathname just above
    $('a[href^=#]:not([href=#]):not([data-toggle="tab"])').on('click', scrollnow);

	
		
	/* --------------------------------- */	
	/* Stellar Parallax Initialise       */
	/* --------------------------------- */

	$(window).stellar();
		
}); // end document ready //
	
	
/* -------------------------------------------------------------------------------- */
/* This fires when HTML everything is ready (e.g. images loaded) and/or resize      */
/* -------------------------------------------------------------------------------- */

	
$(window).on('load resize', function(){
	
	console.log('hello');
	
	/* --------------------------------- */	
	/* ScrollFX (with setTimeout         */
	/* --------------------------------- */
	
		
	var bodyW = $(window).width() || window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth,
		bodyH = $(window).height() || window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight,
		scrollfx = document.querySelectorAll('.scrollfx'),
		lastScrollY = 0,
		ticking = false,
		didScroll = true,
		offset = 100;		

	/*	
	$(window).scroll(function(){
					
		var posY = $(document).scrollTop();
		var bodyW = $(window).width() || window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
		var bodyH = $(window).height() || window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
	
		
		if (bodyW > 600) {
			
			setInterval(function() {
				if ( didScroll ) {
				        didScroll = false;
				        var offset = $('.site-header').height() | 100;

					    $('.scrollfx').each(function(){
							var that = $(this);
							if (posY + bodyH - offset > that.offset().top) {
								that.addClass('activated');
							}		
						}) 
				    }
			}, 250);

		} else {
			$('.scrollfx').addClass('activated');
		}

	});		
	*/
	
	

	/* --------------------------------- */	
	/* ScrollFX (with rAF                */
	/* --------------------------------- */
		
	function onScroll() {
	    lastScrollY = window.scrollY;
		requestTick();
	}

	
	function requestTick() {
		if(!ticking) {
			requestAnimationFrame(update);
		}
		ticking = true;
	} 

	function update() {
		ticking = false;

		var currentScrollY = lastScrollY,
			offset = $('.site-header').height() | 100,
		 	mover    = null,
		 	moverTop = [];
		
		for	(var i = 0; i < scrollfx.length; i++) {
			mover = scrollfx[i];
			moverTop = mover.offsetTop;
			console.log('moverTop[i]: '+moverTop)
			console.log(currentScrollY + bodyH - offset)
			
			if (currentScrollY + bodyH - offset > moverTop) {
				console.log('activate')
				mover.classList.add('activated');
			}
			
		}

	}
	update();
	
	window.addEventListener('scroll', onScroll, false);

	
	
	/* --------------------------------- */	
	/* Slick Slider Setup                */
	/* --------------------------------- */
	
	$('.hero-slider').slick({
	      dots: true,
		  infinite: true,
		  speed: 1800,
		  centerMode: true,
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  variableWidth: true,
		  autoplay: true,
		  autoplaySpeed: 3000,
		  cssEase: 'ease-out'
	});

		

	var slideHeights = $(".slider .slick-slide").map(function () {
        return $(this).height();
    }).get();

    var maxHeight = Math.max.apply(null, slideHeights);

	

	$('.slider').css({ 
		'height' : maxHeight		
	});
	
	$('.slider .slick-track').css({
		'marginTop' : maxHeight / 2
	});
	
}); // end window load/resize //

