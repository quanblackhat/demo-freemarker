(function($) {
	"use strict"
	
	// Preloader
	$(window).on('load', function() {
		$("#preloader").delay(100).fadeOut();
	});

})(jQuery);

function toggleMenu() {
    $('#header').toggleClass('nav-collapse')
}