<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Best Day a Wedding Planner Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Best Day Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>
<!--Custom-Theme-files-->
   <link href="css/style.css" rel='stylesheet' type='text/css' />   
   <script src="js/jquery.min.js"> </script>
<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
         jQuery(document).ready(function($) {
            $(".scroll").click(function(event){      
               event.preventDefault();
               $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
            });
         });
</script>
</head>
<body>
   <!--start-home-->
   <div id="home" class="header">
      <div class="header-top">
         <div class="container">
            <div class="logo">
               <a href="index.html"><h1>Best<span> Day</span></h1></a>
            </div>
            <span class="menu"> </span>
                <div class="top-menu">
                  <ul class="cl-effect-7">
                        <li><a class="active" href="index.html">Home</a></li>
                        <li><a href="story.html">Our Story</a></li>
                        <li><a href="ceremony.html">Ceremony</a></li>
                        <li><a href="albums.html">Our Albums</a></li>
                        <li><a href="contact.html">contact</a></li>
                     </ul>
            </div>
            <!-- script-for-menu -->
            <script>
            $( "span.menu" ).click(function() {
              $( ".top-menu" ).slideToggle( "slow", function() {
                // Animation complete.
              });
            });
         </script>
         <div class="clearfix"></div>
   <!--End-top-nav-script-->
         </div>
      </div>
       </div>
   <div class="banner">
           <div class="container">
               <div  class="callbacks_container">
               <ul class="rslides" id="slider4">
               <li>
                        <div class="banner-info">
                           <h3>Getting <span>Married</span></h3>
                        </div>
                     </li>
                     <li>
                        <div class="banner-info">
                           <h3>Jack & <span> Julie</span> </h3>
                        </div>
                     </li>
                     <li>
                        <div class="banner-info">
                            <h3>Getting <span>Married</span></h3>
                        </div>                        
                     </li>
                  </ul>
               </div>
               <!--banner-->
              <script src="js/responsiveslides.min.js"></script>
          <script>
             // You can also use "$(window).load(function() {"
             $(function () {
               // Slideshow 4
               $("#slider4").responsiveSlides({
                 auto: true,
                 pager:true,
                 nav:false,
                 speed: 500,
                 namespace: "callbacks",
                 before: function () {
                   $('.events').append("<li>before event fired.</li>");
                 },
                 after: function () {
                   $('.events').append("<li>after event fired.</li>");
                 }
               });
         
             });
           </script>
          <!--main-drop-->
          <div class="main-drop">
            <img src="images/hands.jpg" alt=""/>
             <div class="hands">
                <h4>The Venue</h4>
                  <div class="section_room">
                        <select id="country" onchange="change_country(this.value)" class="frm-field required">
                           <option value="null">Select</option>
                           <option value="null">Stands out </option>         
                           <option value="AX">where lets</option>
                           <option value="AX">Vitae lorem</option>
                        </select>
                     </div>   

            </div>
             <div class="couple">
             <div class="bride">
               <img src="images/bride.jpg" class="img-responsive" alt="">
               <h5>Bride</h5>
             </div>
             <div class="groom">
              <img src="images/groom.jpg" class="img-responsive" alt="">
             <h5>Groom</h5>
             </div>
          </div>
          </div>
          <!--//main-drop-->
         </div>
       </div>
   <!--welcome-->
      <div class="welcome">
          <div class="container">
            <div class="welcome-top">
                <img src="images/couple.jpg" class="img-responsive" alt="">
                <h2>Jack & Julie</h2>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.</p>
                  <a class="read" href="single.html">Read More</a>
                </div>
            </div>
         </div>
       <!--//welcome-->
   <!--registry-->
        <div class="registry-section">
           <h3 class="tittle">Registry</h3>
           <div class="registry">
               <div class="col-md-6 registry-left">
               
               <div class="registry-text">
               <h4>Church Of San Paul</h4>
               <h6>11 : 30 am In The Square</h6>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucibus cura. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor.</p>
               </div>
                <a href="single.html" class="mask"><img src="images/r1.jpg" alt="image" class="img-responsive zoom-img"></a>
               </div>
                <div class="col-md-6 registry-right">
                <a href="single.html" class="mask"><img src="images/r2.jpg" alt="image" class="img-responsive zoom-img"></a>
               <div class="registry-text">
               <h4>Restaurant Golf Club</h4>
               <h6>1 : 30 pm In The Garden</h6>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucibus cura. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor.</p>
               </div>
                
               </div>
               <div class="clearfix"> </div>
           </div>
       </div>
   <!--//registry-->
   
   <!--start-services-->
<div class="friends-section">
                <h3 class="tittle">Friends says</h3>
    <div class="friends">
           <div class="container">
         <div class="testimonial-content">
             <p> <img src="images/quote.png" class="img-responsive" alt=""> Congratulations! &nbsp;Christine an Peter I am glad to here that you are starting your new life after the excellent moments together&nbsp;I wish you for all your dreams of tomorrow<img src="images/quote1.png" class="img-responsive" alt=""> </p>
          </div>
          
               <div  class="callbacks_container">
               <ul class="rslides" id="slider3">
                         <li>
                         <div  class="test"> <img src="images/t1.jpg" class="img-responsive" alt=""><h5>Sarah Norton</h5></div>
                        </li>
                     <li>
                          <div  class="test">  <img src="images/t3.jpg" class="img-responsive" alt=""><h5>Frank Miller</h5></div>                     
                     </li>
                     <li>
                           <div  class="test"> <img src="images/t4.jpg" class="img-responsive" alt=""><h5>Laura Green</h5></div>
   
                     </li>
                  </ul>
               </div>
               <!--banner-->
              <script src="js/responsiveslides.min.js"></script>
          <script>
             // You can also use "$(window).load(function() {"
             $(function () {
               // Slideshow 3
               $("#slider3").responsiveSlides({
                 auto: true,
                 pager:false,
                 nav:true,
                 speed: 500,
                 namespace: "callbacks",
                 before: function () {
                   $('.events').append("<li>before event fired.</li>");
                 },
                 after: function () {
                   $('.events').append("<li>after event fired.</li>");
                 }
               });
         
             });
           </script>
   </div>
 </div>
 </div>
 <!--//testimonials-->
 <!--/program-->
            <div class="program">
                 <div class="container">
                 <h3 class="tittle"> Program of the Day</h3>
                  <div class="col-md-6 program-img">
                   <a href="single.html" class="mask"><img src="images/menu.jpg" alt="image" class="img-responsive zoom-img"></a>
                  <h4>Wedding Menu</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucib.</p>
                  </div>
                   <div class="col-md-6 program-text">
                  <div class="scrollbar" id="style-2">
                           <div class="force-overflow">

                            <div class="popular-post-grids">
                              <div class="popular-post-grid">
                                 <div class="post-time">
                                    <a href="single.html">11 : 30 </a>
                                 </div>
                                 <div class="post-text">
                                 <h4><a class="pp-title" href="single.html">Wedding Ceremony</a></h4>
                                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucib.</p>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                              <div class="popular-post-grid">
                                 <div class="post-time">
                                    <a href="single.html">12 : 30 </a>
                                 </div>
                                 <div class="post-text">
                                    <h4><a class="pp-title" href="single.html">Photo Shoot with all</a></h4>
                                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucib.</p>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                              <div class="popular-post-grid">
                                 <div class="post-time">
                                    <a href="single.html">01 : 30 </a>
                                 </div>
                                 <div class="post-text">
                                 <h4><a class="pp-title" href="single.html">Lunch Time</a></h4>
                                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucib.</p>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                              <div class="popular-post-grid">
                                 <div class="post-time">
                                    <a href="single.html">11 : 30 </a>
                                 </div>
                                 <div class="post-text">
                                    <h4><a class="pp-title" href="single.html">Wedding Ceremony</a></h4>
                                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucib.</p>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                  </div>
                  </div>
                           </div>
                  <div class="clearfix"> </div>
                </div>
             </div>
       <div class="attend">
              <h3 class="tittle atd">Are You Attending? rsvp here!</h3>
            <div class="rsvp">
                      <form>
                      <div>
                         <span><label>Your Name</label></span>
                         <span><input name="userName" type="text" class="textbox"></span>
                      </div>
                      <div>
                      <span><label>Your Email</label></span>
                         <span><input name="userEmail" type="text" class="textbox"></span>
                      </div>
                      <div>
                          <span><label>Ceremony & Party</label></span>
                         <span><select name="event"><option value="All Events">All Events</option><option value="Ceremony">Ceremony</option><option value="Party">Party</option></select></span>
                      </div>
                     <div>
                         <span><label>Guest</label></span>
                         <span><input name="userName" type="text" class="textbox"></span>
                      </div>
                      <div class="sub">
                           <input type="submit" value="I am attending" />
                    </div>

                   </form>
                </div>
             </div>
   <!--/footer-->

        <div class="footer">
          <div class="container">
             <div class="footer-top">
                <div class="col-md-4 footer-grid">
                    <h4>Wedding <span>Venue</span></h4>
                      <ul class="bottom">
                      <li>(888) 123-456-7890</li>
                      <li>Available 24/7</li>
                   </ul>
                </div>
                 <div class="col-md-4 footer-grid">
                    <h4>Message Us  <span>Now </span></h4>
                        <ul class="bottom">
                       <li><i class="glyphicon glyphicon-home"></i>Available 24/7 </li>
                      <li><i class="glyphicon glyphicon-envelope"></i><a href="mailto:info@example.com">mail@example.com</a></li>
                     </ul>
                </div>
               <div class="col-md-4 footer-grid">
                    <h4>Address  <span>Location </span></h4>
                       <ul class="bottom">
                       <li><i class="glyphicon glyphicon-map-marker"></i>2901 Glassgow Road, WA 98122-1090 </li>
                      <li><i class="glyphicon glyphicon-earphone"></i>phone: (888) 123-456-7899 </li>
                     </ul>
                </div>
               <div class="clearfix"> </div>
             </div>
         </div>
        </div>
      <div class="copy">
          <p>&copy; 2015 Best Day. All Rights Reserved | Design by <a href="http://w3layouts.com/">W3layouts</a> </p>
      </div>
      <!--//footer-->
         <!--start-smooth-scrolling-->
                  <script type="text/javascript">
                           $(document).ready(function() {
                              /*
                              var defaults = {
                                   containerID: 'toTop', // fading element id
                                 containerHoverID: 'toTopHover', // fading element hover id
                                 scrollSpeed: 1200,
                                 easingType: 'linear' 
                               };
                              */
                              
                              $().UItoTop({ easingType: 'easeOutQuart' });
                              
                           });
                        </script>
      <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


</body>
</html>