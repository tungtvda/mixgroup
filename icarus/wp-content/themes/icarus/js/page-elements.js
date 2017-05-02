jQuery(window).bind("load", function() {
	jQuery('.preload-image:hidden').fadeIn(800);
	jQuery('.portfolio-ajax').css('opacity','1');
	jQuery('.portfolio-columns').css('opacity','1');
	jQuery('ul.portfolio-four li,ul.portfolio-three li,ul.portfolio-two li,ul.portfolio-one li').css('background-image','none');
	jQuery('.photowall-item img').css('opacity','1');
	jQuery('.photowall-title').css('opacity','1');
	jQuery('.step-element img').fadeIn();
});
jQuery(document).ready(function($){
	// cache container
	var isIE8 = $.browser.msie && +$.browser.version === 8;
	var $filterContainer = $('#portfolio-container');
	var $wallContainer = $('#photowall-container');
	var $wallWrap = $('.photowall-wrap');
		
	var ajaxLoading=0;
	var SlideStarted=false;

    //variables to confirm window height and width
    var lastWindowHeight = $(window).height();
    var lastWindowWidth = $(window).width();

    $(window).resize(function() {

        //confirm window was actually resized
        if($(window).height()!=lastWindowHeight || $(window).width()!=lastWindowWidth){

            //set this windows size
            lastWindowHeight = $(window).height();
            lastWindowWidth = $(window).width();

            //call my function
            isotopeInit();
            photoWallInit();
            slideshowify();


        }
    });
	
	// Toggle - Show and Hide displayed portfolio showcase item
	jQuery("a.ajax-hide").click(
	function () {
		if ( jQuery(".ajax-portfolio-window").is(':animated') || jQuery(".ajax-portfolio-image-wrap").is(':animated') ) return;
		if (SlideStarted==false) {
			jQuery('.portfolio-ajax').eq(0).trigger('click');
		}
		jQuery('.ajax-portfolio-window').slideUp();
		$('.ajax-gallery-navigation').fadeOut();
	});
	
	AjaxPortfolio = function(e) {
		// Initialize
	    var page = 1;
	    var loading = true;
		var loaded = false;
	    var $window = jQuery(window);
	    var $content = jQuery("body #ajax-portfolio-wrap");
	    var $contentData = jQuery("body #ajax-portfolio-content");
		var total = jQuery('#portfolio-container .portfolio-ajax').length;
		var index;
		var nextStatus=true;
		var prevStatus=true;
		
		var isiPhone = navigator.userAgent.toLowerCase().indexOf("iphone");
		var isiPad = navigator.userAgent.toLowerCase().indexOf("ipad");
		var isiPod = navigator.userAgent.toLowerCase().indexOf("ipod");

		var deviceAgent = navigator.userAgent.toLowerCase();
		var isIOS = deviceAgent.match(/(iphone|ipod|ipad)/);
		var ua = navigator.userAgent.toLowerCase();
		var isAndroid = ua.indexOf("android") > -1; //&& ua.indexOf("mobile");

		var altTotal=total-1;


	jQuery(".portfolio-ajax").click(function(){
	
		AutoStart=false;
		SlideStarted=true;

		$('.ajax-gallery-navigation').fadeIn();
		$('span.ajax-loading').show();
		//Get this index
		index=jQuery(".portfolio-ajax").index(this);
		//Store the navigation ID as the current element
		jQuery('.ajax-gallery-navigation').attr('id', index);
		
		//Get postID from rel attribute of link
		var postID = jQuery(this).attr("rel");
		//Grab the current displayed ID
		var DisplayedID = jQuery('.ajax-gallery-navigation').attr("rel");
		
		// Compare clicked and Displayed ID. Acts as Gatekeeper
		if (postID!=DisplayedID) {

			// Remove previous displayed set class
			jQuery('div').removeClass("portfolio-displayed");
		
			//Add portfolio post ID to attribute
			jQuery('.ajax-gallery-navigation').attr('rel', postID);
		
			//Add the class to currently viewing
			jQuery( '[data-portfolio=portfolio-'+postID+']').addClass('portfolio-displayed');


			var filtered_total = $('#portfolio-container div').not('.isotope-hidden').length;
			var $got_current = $filterContainer.find(".portfolio-displayed");
			var $next_portfolio = $got_current.nextAll("div:not(.isotope-hidden)").first();
			var $prev_portfolio = $got_current.prevAll("div:not(.isotope-hidden)").first();

			if ($next_portfolio.length) {
				$('.ajax-next').removeClass('ajax-nav-disabled').css('cursor','pointer');
			} else {
				$('.ajax-next').addClass('ajax-nav-disabled').css('cursor','default');
			}
			if ($prev_portfolio.length) {
				$('.ajax-prev').removeClass('ajax-nav-disabled').css('cursor','pointer');
			} else {
				$('.ajax-prev').addClass('ajax-nav-disabled').css('cursor','default');
			}

			var sitewide = $('.top-menu-wrap').width();
			// If iphone then scroll to Ajax nav bar - otherwise top of page
			if(sitewide==470 || sitewide==758) {
				jQuery('html, body').animate({
				    scrollTop: jQuery(".ajax-portfolio-block-wrap").offset().top - 20
				}, 2000);
			} else {
				jQuery('html, body').animate({
				    scrollTop: jQuery(".ajax-portfolio-block-wrap").offset().top - 160
				}, 2000);
			}
			

				jQuery('#ajax-portfolio-loading').show();

				jQuery.ajax({
	                type       : "GET",
	                data       : { thepostID: postID },
	                dataType   : "html",
	                url        : mtheme_uri + "/includes/portfolio/filterables/ajax-loader.php",
	                beforeSend : function(){
						ajax_window_height = $('#ajax-portfolio-content').height();
						$('.ajax-portfolio-window').css({'height': ajax_window_height + 'px'});
	                },
	                success    : function(data){
						loaded = true;
						jQuery('#ajax-portfolio-loading').hide();
						jQuery("#ajax-portfolio-content").remove();
						$('span.ajax-loading').hide();
	                    $data = $(data);

	                    if($data.length){

	                        $content.append($data);
							$('.ajax-portfolio-window').css({'height': 'auto'});
	                        jQuery('.ajax-portfolio-window').slideDown(500, function(){
								jQuery(".ajax-portfolio-image-wrap").fadeTo(100, 1);
								jQuery(".ajax-portfolio-data, .ajax-portfolio-contents-wrap").fadeIn();
	                            loading = false;
	                        });
							jQuery('.ajax-portfolio-image-wrap img').bind('load', function() {
								jQuery('.ajax-portfolio-image-wrap img').fadeTo(100, 1);
								//$('.ajax-portfolio-image-wrap').css({'background': 'none'});
							});

								jQuery("#flex1").flexslider({
									slideshow: false,
									pauseOnAction: true,
									pauseOnHover: true,
									controlsContainer: "flexslider-container1",
									before: function(){
										jQuery('.flexslider-container-page,.ajax-portfolio-image-wrap').css('background-image','none');
									}
								});
								
							
	                    } else {
	                        jQuery('#ajax-portfolio-loading').hide();
	                    }
	                },
	                error     : function(jqXHR, textStatus, errorThrown) {
	                    jQuery('#ajax-portfolio-loading').hide();
	                    alert(jqXHR + " :: " + textStatus + " :: " + errorThrown);
	                }
	        	});

			return false;
			}
		});
	
	}
	
	function AjaxNavigation() {

		// Next Clicked
		$('.ajax-next').click(function(){
			
			if ( $(".ajax-portfolio-window").is(':animated') || $(".ajax-portfolio-image-wrap").is(':animated') ) return;

			var $got_current = $filterContainer.find(".portfolio-displayed");
			var $next_portfolio = $got_current.nextAll("div:not(.isotope-hidden)").first();
			
			if ($next_portfolio.length) {
				$next_portfolio.find(".portfolio-ajax").trigger('click');
			}
			
			return false;

		});

		// Clicked Prev	

		$('.ajax-prev').click(function(){
			
			if ( $(".ajax-portfolio-window").is(':animated') || $(".ajax-portfolio-image-wrap").is(':animated') ) return;

			var $got_current = $filterContainer.find(".portfolio-displayed");
			var $prev_portfolio = $got_current.prevAll("div:not(.isotope-hidden)").first();

			$prev_portfolio.find(".portfolio-ajax").trigger('click');
			
			return false;
		});	
	}
	
	
	function isotopeInit() {
		// initialize isotope
		if ($.fn.isotope) {
			$filterContainer.isotope({
			animationEngine : 'jquery',
			  masonry: {
			    gutterWidth: 0
			  }
			});
		}
	}

	function photoWallInit() {
		// initialize isotope
		if ($.fn.isotope) {
			var wallContainer_w = $(window).width();
			$wallContainer.isotope({
			animationEngine : 'jquery',
			  masonry: {
			    gutterWidth: 0,
			    columnWidth: wallContainer_w / 3
			  }
			});
		}
	}

	function slideshowify() {
		if ($.fn.slideshowify) {
			$('.slideshowifier').remove();
			jQuery('#kenburns-container img').slideshowify();
			jQuery('.kenburns-preloader').hide();
		}
	}

	function isotopeClicks() {
		// filter items when filter link is clicked
		$('#portfolio-filters a').click(function(){
		  var selector = $(this).attr('data-filter');
		  var filter_title = $(this).attr('data-title');
		  $filterContainer.isotope({ filter: selector });

			$('.portfolio-filter-wrap h2').text(filter_title);
			// Set index to zero and disable prev
			$('.ajax-gallery-navigation').attr('id', '-1');
			$('.ajax-prev').css('cursor','default');

		  return false;
		});
	}
	
	function PrettyPhotoLightbox() {
		jQuery("a[rel^='prettyPhoto']").prettyPhoto({
			opacity: 0.9,
			theme: 'pp_default', /* light_rounded / dark_rounded / light_square / dark_square / facebook */
			default_width: 700,
			default_height: 444,
			overlay_gallery: false,
			show_title: false,
			social_tools: false
		});
	}
	
	function HoverEffect() {
		//Mainpage
		jQuery(".home-step").hover(
		function () {
			jQuery(this)
			.stop().animate({"top" : "-5px"}, "fast");

			jQuery(this).find(".step-element")
			.stop().animate({"top" : "-10px"}, "normal");
		},
		function () {
			jQuery(this)
			.stop().animate({"top" : "0"}, "fast");

			jQuery(this).find(".step-element")
			.stop().animate({"top" : "0"}, "normal");
		});

		//Ajax Hover
		jQuery("div.portfolio-element").hover(
		function () {
			var GotImage = $(this).find(".preload-image");
			if (GotImage.is(':visible')) {
				portfolio_height=jQuery(this).height()-10;
				portfolio_width=jQuery(this).width();

				jQuery(this).find("span.ajax-image-hover")
				.css({ "display":"block", "left":"0", "height": ""+portfolio_height+"px", "width": ""+portfolio_width+"px"})
				.stop().animate({"top": "0","opacity" : "1"}, "normal");
			}
		},
		function () {
			jQuery(this).find("span.ajax-image-hover").stop().animate({"top": "10px","opacity" : "0"}, "fast");
		});

		//Filterables hover
		jQuery(".portfolio-grid-element").hover(
		function () {

			var GotImage = $(this).find(".displayed-image");
			if (GotImage.is(':visible')) {

				portfolio_height=jQuery(this).height()-10;
				portfolio_width=jQuery(this).width();

				image_height = $(this).find(".displayed-image:visible").height() - 55;
				slideshow_active = $(this).find(".flexslider");

				if ( (slideshow_active).length !=0 ) {
					image_height = image_height-5;
				}

				jQuery(this).find("span.portfolio-image-hover")
				.css({"display":"block", "left":"0", "height": ""+image_height+"px", "width": ""+portfolio_width+"px"})
				.stop().animate({"top": "5px","opacity" : "1"}, "fast");
				
				jQuery(this).find(".column-portfolio-icon")
				.css({"top": "" + image_height + "px"});
			}
		},
		function () {
			jQuery(this).find("span.portfolio-image-hover").stop().animate({"top": "15px","opacity" : "0"}, "fast");
		});

		//Thumbnails shortcode hover
		jQuery("div.thumbnails-shortcode ul li").hover(
		function () {

			var GotImage = $(this).find(".displayed-image");
			if (GotImage.is(':visible')) {
				portfolio_height=$(this).find("img.displayed-image").height();
				portfolio_width=$(this).find("img.displayed-image").width();

				jQuery(this).find(".portfolio-image-icon")
				.css({"display":"block", "top": "0", "left":"0" , "height" : portfolio_height + "px"})
				.stop().animate({"opacity" : "1"}, "normal");
			}
		},
		function () {
			jQuery(this).find(".portfolio-image-icon").stop().animate({"opacity" : "0"}, "fast");
		});

		//Photowall hover
		jQuery(".photowall-item").hover(
		function () {
			jQuery(this).find(".photowall-title").stop().animate({"bottom": "35px","opacity" : "0"}, "fast");
		},
		function () {
			jQuery(this).find(".photowall-title").stop().animate({"bottom": "20px","opacity" : "1"}, "fast");
		});

	}
	
	AjaxPortfolio();
	AjaxNavigation();
		isotopeInit();
	isotopeClicks();
	HoverEffect();
	PrettyPhotoLightbox();
	photoWallInit();
    

	$(window).load(function() {
		if ($.fn.isotope) {
			$wallContainer.isotope('reLayout');
		}
		if ($.fn.slideshowify) {
			jQuery('.kenburns-preloader').remove();
			jQuery('#kenburns-container img').slideshowify();
		}
	});
	
});

jQuery(window).bind("load", function(e) {
	var AutoStart=false;
	var SlideStarted=false;
	jQuery('.ajax-next').addClass('ajax-nav-disabled').css('cursor','default');
	jQuery('.ajax-prev').addClass('ajax-nav-disabled').css('cursor','default');

});