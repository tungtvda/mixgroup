jQuery(document).ready(function($){

	var deviceAgent = navigator.userAgent.toLowerCase();
	var isIOS = deviceAgent.match(/(iphone|ipod|ipad)/);
	var ua = navigator.userAgent.toLowerCase();
	var isAndroid = ua.indexOf("android") > -1; //&& ua.indexOf("mobile");
	
	jQuery('.homemenu ul.top-menu').superfish({
		animation:   {opacity:'show'},
		speed:         'normal',
		delay: 		1000,
		autoArrows:  true,
		dropShadows: true
		});

	jQuery.fn.equalCols = function(){
		//Array Sorter
		var sortNumber = function(a,b){return b - a;};
		var heights = [];
		//Push each height into an array
		jQuery(this).each(function(){
			heights.push(jQuery(this).height());
		});
		
		heights.sort(sortNumber);
		var maxHeight = heights[0];
		return this.each(function(){
			//Set each column to the max height
			jQuery(this).css({'height': maxHeight});
		});
	};
	// Set equal height for grid columns
	jQuery('.home-step-1,.home-step-2,.home-step-3,.home-step-4').equalCols();
	// Check on window resize and set equal height for responsive change
	jQuery(window).resize(function(){
		jQuery('.home-step-1,.home-step-2,.home-step-3,.home-step-4').css('height','auto');
		jQuery('.home-step-1,.home-step-2,.home-step-3,.home-step-4').equalCols();
	
	});

	// Menu Scroll Fade in Out
	jQuery(document).scroll(function() {
	    var FromTop = jQuery(document).scrollTop();
	    if ( FromTop > 40 ) { 
	    	jQuery('.top-menu-darker').fadeIn('fast');
	    }
	    if ( FromTop == 0 ) { 
	    	jQuery('.top-menu-darker').fadeOut('fast');
	    }
	});

	curr_menu_item=jQuery(".responsive-mobile-menu .current-menu-item a").eq(0).text();
	if ( curr_menu_item ){
		jQuery(".mobile-menu-selected").text(curr_menu_item);
	}
	jQuery(".mobile-menu-toggle").click(function(){
		jQuery(".responsive-mobile-menu").slideToggle();
	});

	//Sidebar toggle function
	jQuery(".menu-toggle-off").live('click',function () {
		$('#copyright,.home-step-wrap,#controls,#fullscreen-thumbnails-wrap,#slide-list,.fullscreenslideshow-audio,.tubular-controls').fadeOut();
		jQuery(".social-header").fadeOut();
		jQuery("#slidecaption").css({"visibility":"hidden"});
		jQuery('.container').stop().animate({left:'-1050','opacity':'0'},500, function() {
			jQuery(".container").css({"display":"none"});
		});
		jQuery("#progress-back,.homemenu,.page-border-bottom").stop().animate({'opacity':'0'},150, function() {
			jQuery(".mainmenu-navigation").css({"display":"none"});
		});
		jQuery('.menu-toggle').removeClass('menu-toggle-off');
		jQuery('.menu-toggle').addClass('menu-toggle-on');
		jQuery('.top-menu-wrap').removeClass('top-menu-color');
		jQuery('.top-menu-darker').fadeOut();
	  });
	
	//Sidebar toggle function
	jQuery(".menu-toggle-on").live('click',function () {
		$('#copyright,.home-step-wrap,#controls,#fullscreen-thumbnails-wrap,#slide-list,.fullscreenslideshow-audio,.tubular-controls').fadeIn();
		jQuery("#progress-back,.homemenu,.page-border-bottom").stop().animate({'opacity':'1'},500);
		jQuery(".mainmenu-navigation").css({"display":"block"});
		jQuery('.menu-toggle').removeClass('menu-toggle-on');
		jQuery('.menu-toggle').addClass('menu-toggle-off');
		jQuery(".container").css({"display":"block"});
		jQuery("#slidecaption").css({"visibility":"visible"});
		jQuery('.container').stop().animate({left:'0','opacity':'1'},500);
		jQuery('.mcycletextwrap').css({"visibility":"visible"});	
		jQuery(".social-header").fadeIn();
		jQuery('.top-menu-wrap').addClass('top-menu-color');
	});
	
	//Portfolio Hover effects
	jQuery(".gototop,.hrule.top a").click(function(){
		jQuery('html, body').animate({scrollTop:0}, 'slow');
		return false;
	});
	
	// Responsive dropdown list triggered on Mobile platforms
    jQuery('#top-select-menu').bind('change', function () { // bind change event to select
        var url = jQuery(this).val(); // get selected value
        if (url != '') { // require a URL
            window.location = url; // redirect
        }
        return false;
    });
	
	//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
	jQuery("h4.trigger").click(function(){
		jQuery(this).toggleClass("active").next().slideToggle("fast");
		return false;
	});
	
	jQuery("#main-portfolio-carousel .preload").hover(
	function () {
	  jQuery(this).stop().fadeTo("fast", 0.6);
	},
	function () {
	  jQuery(this).stop().fadeTo("fast", 1);
	});
	
	jQuery(".portfolio-image-holder").hover(
	function () {
	  jQuery(this).stop().fadeTo("fast", 0.6);
	},
	function () {
	  jQuery(this).stop().fadeTo("fast", 1);
	});
	
	jQuery(".thumbnail-image").hover(
	function () {
	  jQuery(this).stop().fadeTo("fast", 0.6);
	},
	function () {
	  jQuery(this).stop().fadeTo("fast", 1);
	});
	
	jQuery(".pictureframe").hover(
	function () {
	  jQuery(this).stop().fadeTo("fast", 0.6);
	},
	function () {
	  jQuery(this).stop().fadeTo("fast", 1);
	});
	
	jQuery(".filter-image-holder").hover(
	function () {
	  jQuery(this).stop().fadeTo("fast", 0.6);
	},
	function () {
	  jQuery(this).stop().fadeTo("fast", 1);
	});
	
	
	jQuery('.qtips').tipsy({gravity: 'e'});
	jQuery('.ntips').tipsy({gravity: 'n'});
	jQuery('.etips').tipsy({gravity: 'e'});
	jQuery('.stips').tipsy({gravity: 's'});

	$("#popularposts_list li:even,#recentposts_list li:even").addClass('even');
	$("#popularposts_list li:odd,#recentposts_list li:odd").addClass('odd');

	$(".close_notice").click(function(){
	  	$(this).parent('.noticebox').fadeOut();
	});
    
});

jQuery(function () {
	jQuery('.portfolio-thumbnail-block').hide();
	jQuery('.filter-thumbnail-block').hide();
});

var i = 0;//initialize
var int=0;//Internet Explorer Fix
jQuery(window).bind("load", function() {
	var int = setInterval("doThis(i)",10);
	jQuery('.thumbnails-shortcode img:hidden').fadeIn(800);
	jQuery('.filter-thumbnail-loader').hide();
	jQuery('.filter-thumbnail-block:hidden').fadeIn(800);

});

function doThis() {
	var images = jQuery('.portfolio-image-holder').length;
	if (i >= images) {
		clearInterval(int);
	}
	jQuery('.thumbnail-loader').eq(i).fadeOut(0);
	jQuery('.portfolio-thumbnail-block:hidden').eq(0).fadeIn(800);
	i++;
}