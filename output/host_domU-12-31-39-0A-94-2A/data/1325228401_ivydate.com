<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <script src="/javascripts/jquery.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/sha1.js?1324982203" type="text/javascript"></script>
      <script type="text/javascript">
    var _kmq = _kmq || [];
    function _kms(u){
      setTimeout(function(){
        var s = document.createElement('script'); var f = document.getElementsByTagName('script')[0]; s.type = 'text/javascript'; s.async = true;
        s.src = u; f.parentNode.insertBefore(s, f);
      }, 1);
    }
    _kms('//i.kissmetrics.com/i.js');_kms('//doug1izaerwt3.cloudfront.net/7336dc378440438140467166721fac86a4597975.1.js');
    

    $(document).ready(function(){
      function kissmetrics_hash(element) {
        var element = $(element);
        var parent = element.parent()[0];
        var hashed_string = parent.tagName + '#' + parent.id + '.' + parent.className + element[0].tagName + '#' + element[0].id + '.' + element[0].className + element[0].innerHTML;
        return $.sha1(hashed_string);
      }

      $('a,input').each(function(index, element){
        if ($(element).attr('id')=='') {
          element.id = kissmetrics_hash(element);
        }
      });
    });
  </script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="imagetoolbar" content="no" />
    <title>IvyDate: Connecting Ivy League and Exceptional Singles </title>

    <link href="/stylesheets/ivydate/main.css?1324982203" media="all" rel="stylesheet" type="text/css" />
    <!--[if lte IE 8]><link href="/stylesheets/ie.css?1324982203" media="screen" rel="stylesheet" type="text/css" /><![endif]-->
    <!--[if IE 7]><link href="/stylesheets/ie7.css?1324982203" media="screen" rel="stylesheet" type="text/css" /><![endif]-->
    <!--[if IE 6]><link href="/stylesheets/ie6.css?1324982203" media="screen" rel="stylesheet" type="text/css" /><![endif]-->
    <link href="/stylesheets/print.css?1324982203" media="print" rel="stylesheet" type="text/css" />
    <link href="/stylesheets/ivydate/facebox.css?1324982203" media="screen" rel="stylesheet" type="text/css" />
<link href="/stylesheets/selector.css?1324982203" media="screen" rel="stylesheet" type="text/css" />

    <link rel="shortcut icon" href="/favicon_ivydate.ico"/>
    <script src="/javascripts/application.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/jquery-ui.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/jrails.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/facebox.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/main.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/slider.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/jquery.qtip-1.0.0-rc3.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/jquery.example.min.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/examples.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/jquery.scrollTo.js?1324982203" type="text/javascript"></script>
    <!--[if lte IE 7]><script src="/javascripts/DD_belatedPNG_0.0.8a-min.js?1324982203" type="text/javascript"></script><![endif]-->

    <script src="http://connect.facebook.net/en_US/all.js#xfbml=1" type="text/javascript"></script>
    <script src="/javascripts/classes/facebook_listener.js?1324982203" type="text/javascript"></script>

    <script src="/javascripts/classes/class.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/classes/extender.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/classes/image_loader.js?1324982203" type="text/javascript"></script>
<script src="/javascripts/slideshow.js?1324982203" type="text/javascript"></script>
    <link href="/stylesheets/slideshow.css?1324982203" media="screen" rel="stylesheet" type="text/css" />
    
  </head>
  <body class="home">
    <ol id="accessibility-nav">
      <li><a href="#navigation">Skip to navigation</a></li>
      <li><a href="#content">Skip to content</a></li>
      <li><a href="#sidebar">Skip to sidebar</a></li>
    </ol><!-- / accessibility-nav -->

    <div class="container">
      <style type='text/css'>
  body.home { background: url('images/ivydate/bg_body_home_landing_page.jpg') repeat-x 50% 0; }
</style>
<!--[if IE]> <style type='text/css'>
  .home #header .intro #middle .register { margin: 0; margin-right: 10px;}
  .home #header .intro #middle .register .password_blur { left: 287px; }
</style> <![endif]-->
<div id="header" class='header-landing-page header-homepage'>
  <div id='lp_ivy_logo'>
    <img alt="Logo" src="/images/ivydate/homepage/logo.png?1324982203" />
  </div>
  <div class='login-form'>
    <form action="/user_sessions" class="new_user_session" id="login" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="vsbtJJyhEFHnnVj9Q6Kqz9AGP+qz8b6soS19zzVS0R8=" /></div>
    <input id="user_session_email" name="user_session[email]" size="30" type="text" />
    <input id="user_session_password" name="user_session[password]" size="30" type="password" />
    <input value="login" class="login" type="submit" />
    
</form>

  </div>
  <div class="intro">

    <div id='left_image'>
            <img alt="Slideshow_1" height="290" src="/images/ivydate/homepage/slideshow_1.jpg?1324982203" width="328" />
    </div>

    <div id='decorator'>
      <h2>Extraordinary singles. Just like you. <br/>Hand-selected & delivered to your inbox.</h2>
      <div id='description'>
        <ul>
          <li> Community of smart, interesting singles </li>
          <li> Private introductions via email </li>
          <li> All members reviewed and approved by IvyDate</li>
        </ul>
      </div>
    </div>

    <div id='right_image'>
      <img width='310' height='290' src="/images/ivydate/homepage/image_homepage_right.jpg" alt="ivydate"/>
    </div>

     <div id="middle">
       <form action="/users" class="column-right" id="new_user" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="vsbtJJyhEFHnnVj9Q6Kqz9AGP+qz8b6soS19zzVS0R8=" /></div>
         <div id="register" class="register">
           <label for="user_gender">I am a</label>
           <select class="IvyDate" id="user_gender" name="user[gender]" tabindex="2"><option value=""></option>
<option value="Female">Woman</option>
<option value="Male">Man</option></select>
           <label for="user_preferred_gender">interested in meeting</label> 
           <select id="user_preferred_gender" name="user[preferred_gender]" tabindex="4"><option value=""></option>
<option value="Female">Women</option>
<option value="Male">Men</option></select>
            <input id="user_email" name="user[email]" size="30" tabindex="5" type="text" />
            <input id="user_password" name="user[password]" size="30" tabindex="6" type="password" />
            <input id="user_terms_of_service" name="user[terms_of_service]" type="hidden" value="1" />
         </div><!--/register-->
         <div class="join_and_terms">
            <span class="terms"> By joining I agree to the <a href="/terms_of_service" id="tos" rel="facebox">Terms &amp; Conditions</a> and <a href="/privacy?facebox=true" id="privacy" rel="facebox">Privacy Policy</a></span>
            <input value="Join Now" class="joinbutton" type="submit" />
         </div><!--/join-->
         <div class='clear'></div>
       </form>
       <div class='clear'></div>
     </div><!--/middle-->
   </div><!-- /intro-->
   <div class='clear'></div>
</div><!-- /header -->
<div class="shadow"> 
  <img alt="Home_shadow" src="/images/ivydate/home_shadow.png?1324982203" /> 
</div>

<style type='text/css'>
</style>

<div id='how_it_works'>
  <div class='corners-left'>
    <div class='decorator'> </div>
  </div>
  <div id='section_01'>
    <div class='headline'><strong>JOIN</strong><br/>Our Unique community </div>
    <div class='content'>
      We review every profile to ensure we introduce you to great people. All like-minded men and women are encouraged to apply, regardless of school affiliation.
    </div>
  </div>
  <div class='arrow-01'> </div>
  <div id='section_02'>
    <div class='headline'><strong>RECEIVE</strong><br/>Extraordinary Matches</div>
    <div class='content'>
      Once approved, you’ll receive up to five hand-selected introductions a week, direct to your inbox. There is <strong>no browsing</strong> of random profiles. IvyDate <strong>only</strong> matches you with people <strong>you will</strong> <strong>like</strong>, and every connection is <strong>meaningful</strong>.
    </div>
  </div>
  <div class='arrow-02'> </div>
  <div id='section_03'>
    <div class='headline'><strong>MEET</strong><br/> the Highest Quality Singles</div>
    <div class='content'>
      Get to know the smartest, most interesting singles in your city. All approved members can respond to incoming messages and send Icebreakers for free.
    </div>
  </div>
  <div class='corners-right'> </div>
</div>


<div id="home_footer">
  <div class="navigate">
    <h3> About </h3>
    
  <ul class="menu">
    <li  ><a href="/about"><span>About IvyDate</span></a></li>
    
      <li><a href="/why_ivydate"> <span>Why IvyDate</span></a></li>	
      <li><a href="/how_it_works"><span>How it works</span></a></li>	
      <li><a href="/who_is_on_ivydate"><span>Who's on IvyDate</span></a></li>	
      
    
        
      <li ><a href="/events"><span>IvyDate Events</span></a></li>
      <li ><a href="/vip"><span>IvyDate VIP</span></a></li> 
    
    
    
    
      <li  ><a href="/faq"><span>FAQs</span></a></li>
    
  </ul>


  </div><!--/navigate-->
  <div class="reason">
    <div class='clearblu-apply'>
  <div class="braces">
    <div class="title">
      Apply today to join our unique community
    </div>
    <div class='content'>
      RECEIVE FREE MATCHES
    </div>
  </div>
  <div class='button-wrapper'>
    <a href='/users/new'>
      <img src='../../images/ivydate/clearblu/button_join_now.png'></img>
    </a>
  </div>
</div>

    <div style='font-size: 11px; margin-top: 20px;'>
      <p>You want to meet someone <span>smart, interesting, and driven.</span> But you’ve exhausted
your circle of friends. Luck hasn’t thrown anyone you like your way, and it’s hard to find someone great when you’re busy.</p><p> <span>Time to consider IvyDate</span>: a members-only community that introduces you to outstanding people every week. It’s private, it’s safe and all members have been selected based on admirable qualities.</p>
    </div>
  </div><!--/reason-->
  <div class="connect">
   <h3> Connect with IvyDate </h3>
   <ul>
     <li>
        <a href="http://www.facebook.com/IvyDate" target="blank"><img alt="Icon_fb" src="/images/ivydate/icon_fb.png?1324982203" /> Like us on Facebook »</a></li>
     <li>
       <a href="http://twitter.com/#!/ivydate" target="blank"><img alt="Icon_twitter" src="/images/ivydate/icon_twitter.png?1324982203" /> Follow us on Twitter » </a>
     </li>
     <li class="last">
       <a href="http://www.ivydate.com/blog/" target="blank"><img alt="Icon_blog" src="/images/ivydate/icon_blog.png?1324982203" /> Visit IvyDate Blog » </a>
     </li>
   </ul>
  </div><!--/connect-->
</div><!--/home_footer-->
<div id="footer">
  
    <div class="ivy_footer">
      <a href="/about">About IvyDate</a> |
      <a href="http://www.ivydate.com/blog/">Blog</a> |
      <a href="/terms">Terms of Use</a> |
      <a href="/privacy">Privacy Policy</a> |
      <a href="/contact">Contact us</a>
    
      <span class="trademark">
            © IvyDate 2011
      </span>
    </div>
    
      <div class='disclaimer'>
        <i>IvyDate Inc. is an independent entity operated by Harvard University graduates, and has no affiliation with the universities mentioned on this website</i>
       </div>
    
    
    
  
</div>


    </div><!-- / container -->
    

    
    
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-17109809-2']);
      _gaq.push(['_setDomainName', '.ivydate.com']);
    _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

    

    
  </body>
</html>
