<?php

  $srv = $_SERVER['HTTP_COOKIE'];

  // TODO if $referer is not an array that contains 'host' (like if browser didn't send a referer), need a fallback.
  // check if array key exists, and have some fallback in case it doesn't
  $host = explode( '.', $referer['host'] );
  $currentUrl = parse_url( $_SERVER['REQUEST_URI'] );
  $registryUrl = pathinfo( $currentUrl['path'] );

  //lets check for the after_submission page and allow the logos to change according to society for that enrollment flow
  if( fnmatch( 'index-*.php', $registryUrl['basename'] ) && $registryUrl['dirname'] == '/after_submission' ) {

    $registryUrlSociety = explode( '-', $registryUrl['filename'] );
    $host[0] = $registryUrlSociety[1];

  } else {

    $registryUrlSociety = false;

  }

/**
 * Checks HTTP_COOKIE for CAKEPHP and _saml_idp content
 *
 * @param  string $srv    Content of HTTP_COOKIE to explode and loop through
 * @return array $cookie  Returned cookie containing array keys that are boolean indicating if CAKEPHP or _saml_idp exist
 */
  function check_for_saml_cake( $srv  ) {

    $http_cookie = explode( ' ', $srv );
    $cookie = array(
      'CAKEPHP' => false,
      '_saml_idp' => false,
      '_shib_session_' => false
    );

   foreach( $http_cookie as $item ) {

    if( strpos( $item, 'CAKEPHP' ) !== false ) {
      $cookie['CAKEPHP'] = true;
    }

    if( strpos( $item, '_saml_idp' ) !== false ) {
      $cookie['_saml_idp'] = true;
    }

    if( strpos( $item, '_shib_session_' ) !== false ) {
      $cookie['_shib_session_'] = true;
    }

   }

   return $cookie;

  }

  $check_saml_cake = check_for_saml_cake( $srv );

?>

<header id="customHeader">
  <div class="contentWidth">
    <?php

    //for now, lets only target the discovery_service_wordpress page
    if( $registryUrl['dirname'] == '/discovery_service_wordpress' ) :

    switch( $host[0] ) :
      case "mla" :
    ?>
    <h1><?php echo strtoupper( $host[0] ); ?> Login</h1>
    <div class="customImage"><img src="/web/img/hc_mla_55.png" /></div>
    <?php
      break;
      case "ajs" :
    ?>
    <h1><?php echo strtoupper( $host[0] ); ?> Login</h1>
    <div class="customImage"><img src="/web/img/hc_ajs_55.png" /></div>
    <?php break;
      case "aseees" :
    ?>
    <h1><?php echo strtoupper( $host[0] ); ?> Login</h1>
    <div class="customImage"><img src="/web/img/hc_aseees_55.png" /></div>
    <?php
      break;
      default :
    ?>
    <div class="customImage"><img src="/web/img/kc_logo_wordmark_192.png" /></div>
    <?php
      break;
    endswitch;

    else :
    ?>
    <!-- example markup for your header field -->
    <h1>Membership</h1>
    <div class="customImage"><img src="/web/img/kc_logo_wordmark_192.png" /></div>
    <?php endif; ?>
</header> <!-- /#customHeader -->

<nav id="row1" aria-label="user and platform menus">
  <div class="contentWidth">
    <div id="secondaryMenu" class="rightmenu"></div> <!-- /.secondaryMenu -->
  </div> <!-- /.contentWidth -->
</nav> <!-- /#row1 -->
