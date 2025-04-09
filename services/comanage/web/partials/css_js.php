<meta name="viewport" content="width=device-width" />
<link rel="stylesheet" type="text/css" href="/css/normalize.css?v101617" />
<link rel="stylesheet" type="text/css" href="/css/skeleton.css?v101617" />
<link rel="stylesheet" type="text/css" href="/css/discovery_service_01.css?v101617" />
<link rel="stylesheet" type="text/css" href="/lib/shibboleth-embedded-ds-1.2.0/idpselect.css?v101617" />
<?php include('analytics.php'); ?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="/lib/js-cookie/src/js.cookie.js?v101617"></script>
<?php
  $url = parse_url( $_SERVER['REQUEST_URI'] );
  $path = pathinfo( $url['path'] );
  if( $path['dirname'] == '/discovery_service_enrollment' ) :
?>
<script type="text/javascript" src="jquery.countdown360.js?v101617" charset="utf-8"></script>
<?php endif; ?>
<!--<link rel='stylesheet' type='text/css' href="http://registry-dev.commons.mla.org/registry/css/comanage.css?v101617" />-->
<link rel="stylesheet" type="text/css" media="screen" href="/css/global.css?v101617" />

<script type='text/javascript' src='//use.typekit.net/bgx6tpq.js'></script>
<script type='text/javascript'>
     try{Typekit.load();}catch(e){};
</script>

<script type="text/javascript">
$(document).ready(function() {

//resolves scrolling issue for browsers
$(this).scrollTop(0);

var url = window.location.href.split('/');

$('#idpSelectIdPSelector #idpSelectIdPEntryTile').hide();

function display_default_login() {
    $('#idpSelectIdPSelector #idpSelectIdPEntryTile').hide(); 
    $('.container_incommon_top .button_container').hide();

    $('.login-items-desktop').show();
    $('.titles_container').show();
}


if( $('.IdPSelectIdPImg').length >= 1 ) { 

$('.IdPSelectPreferredIdPButton').each(function(k,v) {

//checks all logos but mostly is for universities that have no logos to display university name instead
if( $(this).find('.IdPSelectIdPImg').attr('src').split('/').pop() == 'blank.gif' ) {

   $(this).find('.IdPSelectTextDiv').addClass('uni_name');
   $(this).find('.IdPSelectIdPImg').remove();

} else {
    $('.IdPSelectTextDiv').empty();
}

if( $(this).find('.IdPSelectIdPImg').attr('alt') == 'Legacy MLA Login' ) {

$(this).find('.IdPSelectIdPImg').attr('src', '/img/new_logos_fall_17/legacy_mla_fall_17.png');

}

if( $(this).find('.IdPSelectIdPImg').attr('alt') == 'HC Login' ) {
   $(this).find('.IdPSelectIdPImg').attr('src', '/img/new_logos_fall_17/hc_favicon_fall_17.png');
} 

});
}

//shows what goes on initial login screen if on account link or if user previously logged in
  if( $('.container_incommon_top').find('.IdPSelectPreferredIdPButton').is(':visible') ) {

	if( $('#saml_idp').data('saml-idp') && $('#cakephp').data('cakephp') ) {

	  $('.container_incommon_top .linked_login_container').hide();
	  $('.IdPSelectPreferredIdPButton').hide();

	} else {
	  $('.last_login_text').show();
	  $('.login-items-desktop').hide();
	  $('.container_incommon_top .linked_login_container').show();
	  $('.titles_container').hide();
          $('.container_incommon_top .button_container').hide();
	}

      $('#idpSelectIdPSelector #idpSelectIdPEntryTile').hide();
 
  } //end if on idpbutton visible

  $('.uni_cred_login').on('click', function(event) {

    event.preventDefault();
    $('.login-items-desktop').hide();
    $('.titles_container').hide();

    if( $('#saml_idp').data('saml-idp') && $('#cakephp').data('cakephp') ) {
        $('.IdPSelectPreferredIdPButton').hide();
    } else {
        $('.IdPSelectPreferredIdPButton').show();
    }

    $('#idpSelectIdPSelector #idpSelectIdPEntryTile').show(); 
    //$('.container_incommon_top .button_container').show();

  });

  /*$('.container_incommon_top .button_container').on('click', function(event) {
    
    event.preventDefault();

    display_default_login();   
    $('.IdPSelectPreferredIdPButton').hide();
  });*/


   $('.linked_login_container').on('click', function(event) {

     event.preventDefault();

     display_default_login();
     $(this).hide();
     $('.last_login_text').hide();
     if( $('.container_incommon_top .IdPSelectPreferredIdPButton').length == 1 ) {
       $('.container_incommon_top .IdPSelectPreferredIdPButton').hide();
     }        

      $('.IdPSelectPreferredIdPButton').hide();

  });

if( Cookies.get('_saml_idp') && Cookies.get('_saml_idp').split(' ').length > 1 ) {
   //Cookies.set("last_login", "an Institutional account");
} 

  $('.login-items-desktop a', $(this)).on('click', function(event) {
    //event.preventDefault();
    //Cookies.set("last_login", $(this).data('login'));
  });

});
</script>
