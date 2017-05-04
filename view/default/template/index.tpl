
<body class="home fixed-header">
<div id="page" class="hfeed site">
    <header id="masthead" class="site-header header-v1">
        <!-- the menu -->
        <div class="header-top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <nav id="site-navigation" class="main-navigation">
                            <button style="color: #ffffff" class="menu-toggle">
                                <i class="fa fa-bars"></i>
                                <span> <img style="width: 30px;" src="{SITE-NAME}/view/default/themes/images/tungtv/{language_img}.png"></span></button>
                            <div class="menu-onepage-applanding-container">
                                <ul id="menu-onepage-applanding" class="mega-menu">
                                    {lang_list}
                                </ul>
                            </div>
                        </nav><!-- #site-navigation -->
                    </div>
                </div>
            </div>
        </div>
        <div class="header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-md-1 col-sm-1 col-xs-6">
                        <div class="header-sticky-logo">
                            <a href="{SITE-NAME}" rel="home">
                                <img alt="{name}" src="{link_anh}" style="    max-width: inherit;" class=""></a>
                        </div>
                    </div>
                    <div class="col-md-11 col-sm-11 col-xs-6">
                        <nav class="main-navigation" id="sticky-navigation">
                            <div class="menu-onepage-applanding-container">
                                <ul class="mega-menu" id="menu-onepage-applanding-1">
                                    <li class="menu-item current-menu-parent menu-item-has-children page_item_has_children">
                                        <a href="javascript:void(0)"><img style="width: 30px;" src="{SITE-NAME}/view/default/themes/images/tungtv/{language_img}.png"></a>
                                        <span aria-expanded="true" role="menubar" data-toggle="dropdown"
                                              class="dropdown-toggle caret"><i class="fa fa-chevron-down"></i></span>
                                        <ul class="children dropdown-menu">
                                            {lang_list}
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </nav><!-- #site-navigation -->
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- the content -->
    <div id="main" class="wrapper">
        <div id="primary" class="content-area">
            <!-- icon services -->
            <div id="event_calendar" style="padding-top: 20px;background: url('{backgroup}') no-repeat; background-attachment: fixed" class="padding-content content-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="riven-heading text-center" data-sr="enter bottom wait 0.3s">
                                <h2 style="{name_color};{name_size}">{name}</h2>
                            </div>
                        </div>
                    </div>
                    <div class="spacer-35"></div>
                    <div class="event-container">
                        <div class="event-contents row">
                            <div class="event event_post event-entries-wrap has-loadmore">
                               {list_logo}
                            </div>
                            <div class="load-more event-loadmore text-center">
                                <!--<a id="event-loadmore">Load More</a>-->
                            </div>
                        </div>
                    </div>
                    <div class="spacer-100"></div>
                </div>
            </div>                <!-- Testimonials -->
        </div>
    </div>
</div>
<!--- define script files -->
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/jquery.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/imagesloaded.pkgd.min.js"></script>
<!--<script type="text/javascript" src="js/owl.carousel.min.js"></script>-->
<!--<script type="text/javascript" src="js/custom-carousel.js"></script>-->
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/revolution/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/revolution/jquery.themepunch.revolution.min.js"></script>
<!--<script type="text/javascript" src="js/revolution/extensions/revolution.extension.video.min.js"></script>-->
<!--<script type="text/javascript" src="js/revolution/extensions/revolution.extension.slideanims.min.js"></script>-->
<!--<script type="text/javascript" src="js/revolution/extensions/revolution.extension.actions.min.js"></script>-->
<!--<script type="text/javascript" src="js/revolution/extensions/revolution.extension.layeranimation.min.js"></script>-->
<!--<script type="text/javascript" src="js/revolution/extensions/revolution.extension.kenburn.min.js"></script>-->
<!--<script type="text/javascript" src="js/revolution/extensions/revolution.extension.navigation.min.js"></script>-->
<!--<script type="text/javascript" src="js/revolution/extensions/revolution.extension.migration.min.js"></script>-->
<!--<script type="text/javascript" src="js/revolution/extensions/revolution.extension.parallax.min.js"></script>-->
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/customs-slider.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/cascade-slider.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/jquery.scrollbar.min.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/scrollReveal.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/jquery.nav.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/jquery.validate.js"></script>
<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/functions.js"></script>
<a class="scroll-to-top"><i class="fa fa-chevron-up"></i></a></body>

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(".en_lang").click(function(){
            jQuery.ajax({
                type: 'GET',
                url: '{SITE-NAME}/controller/default/language.php',
                data: {
                    giatri: "en",
                },
                success: function(data) {
                    location.reload(true)
                },
                error: function() {
                    location.reload(true)
                }
            });
        });
        jQuery(".cn_lang").click(function(){
            jQuery.ajax({
                type: 'GET',
                url: '{SITE-NAME}/controller/default/language.php',
                data: {
                    giatri: "cn",
                },
                success: function(data) {
                    location.reload(true)
                },
                error: function() {
                    location.reload(true)
                }
            });
        });
        jQuery(".vn_lang").click(function(){
            jQuery.ajax({
                type: 'GET',
                url: '{SITE-NAME}/controller/default/language.php',
                data: {
                    giatri: "vn",
                },
                success: function(data) {
                    location.reload(true)
                },
                error: function() {
                    location.reload(true)
                }
            });
        });

    });

</script>
<!-- Mirrored from html.arrowpress.net/riven/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 30 Apr 2017 01:15:18 GMT -->
</html>
