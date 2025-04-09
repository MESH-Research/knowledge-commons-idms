<?php
require_once "../env.php";

/**
 * Outputs URL based off entity ID
 * @param  string $entityId  base url to use
 * @return string           concatinated URL to be used
 */
function outputUrl( $entityId, $newLogin = false ) {

  // Get the 'return' URL included by the SP from the query string.
  // TODO check for array key before trying to access
  // e.g.
  // $returnUrl = array_key_exists('return', $_GET) ? $_GET["return"] : '';
  $returnUrl = $_GET["return"];
  parse_str( parse_url( $returnUrl, PHP_URL_QUERY ), $queryString );
  $returnUrl = explode( '?', $returnUrl )[0];
  $queryString['entityID'] = $entityId;

  //lets check if the user is trying to create a new login
  if( $newLogin == true ) {

    // Need to URL encode the entityID before adding it as a query string
    // parameter to the link.
    $discoveryUrlEncoded = rtrim( $returnUrl, '/' ) . '?' . http_build_query( $queryString );

    // URL encode the discoveryURL to make it a query string parameter for
    // the HumanitiesCommonsIdpEnroller provision action
    return REGISTRY_SERVER . '/registry/humanities_commons_idp_enroller/humanities_commons_idp_enroller_accounts/provision?target=' . urlencode( $discoveryUrlEncoded );

  } else {
    // Need to URL encode the entityID before adding it as a query string
    // parameter to the link.
    return $returnUrl . '?' . http_build_query( $queryString );
  }

}

//check for account linking flow
if( $check_saml_cake['CAKEPHP'] == true && $check_saml_cake['_saml_idp'] == true && $registryUrl['dirname'] !== '/discovery_service_wordpress' ) : 

?>

<div id="saml_idp" data-saml-idp="true"></div>
<div id="cakephp" data-cakephp="true"></div>

<?php endif; ?>

<!-- login items desktop -->
<div class="container login-items-desktop">

  <div class="row">

    <div class="one-third align-self-center google-logo google-login login-item">
      <a data-login="Google" href="<?php echo outputUrl( GOOGLE_GATEWAY ); ?>">
        <img alt="Google Login" src="/img/new_logos_fall_17/google_fall_17.png" height="64" width="64" />
      </a>
    </div> <!-- /.one-half.column -->
	
	
  	<div class="one-third align-self-center orcid-logo orcid-login login-item">
      <a data-login="ORCID" href="<?php echo outputUrl( ORCID_GATEWAY ); ?>">
      	<img alt="ORCID Login" src="/img/icons/orcid_128x128.png" height="64" width="64" />
      </a>
    </div> <!-- /.one-half.column -->	
	
	
    <?php /* need to change classes 'one-half' back to 'one-third' above when restoring this block
    <div class="one-third column align-self-center">
      <a href="">
      <img src="/img/orcid_128x128.png"></img>
      </a>
    </div>
    */ ?>
 <!-- </div> --> <!-- /.row -->

  <!-- <div class="row"> -->

  <?php if( $registryUrl['dirname'] == '/discovery_service_wordpress' ||
  $registryUrl['dirname'] == '/discovery_service_registry_only' ) : ?>

    <!-- special patch to demo hc id account link scenario -->
    <div class="full-width align-self-center login-item hc-login" style="display:inherit">
      <a data-login="HC Gateway" href="<?php echo outputUrl( HC_GATEWAY ); ?>">
        <img alt="KC Login" src="/img/kc_logo_80_c.png" height="64" width="64" />
      </a>
    </div> <!-- /.one-half.column -->

  <?php endif;
  if( $registryUrl['dirname'] == '/discovery_service_wordpress' ||
    $registryUrl['dirname'] == '/discovery_service_registry' ||
    $registryUrl['dirname'] == '/discovery_service_registry_only' ||
    $check_saml_cake['_shib_session_'] == true ) : ?>

    <div class="full-width align-self-center login-item mla-login">
      <a data-login="your MLA <i>Commons</i> ID" href="<?php echo outputUrl( LEGACY_MLA_GATEWAY ); ?>">
        <img alt="Legacy MLA Login" src="/img/new_logos_fall_17/legacy_mla_fall_17.png" height="55" width="70" />
      </a>
    </div> <!-- /.one-half.column -->

    <div class="full-width align-self-center login-item msu-login">
      <a data-login="your MSU NET ID" href="<?php echo MSU_GATEWAY; ?>">
        <img alt="MSU Login" src="/img/icons/helmet-f2w.jpg" height="64" width="64" />
      </a>
      </div> <!-- /.one-half.column -->

<?php /*
    <div class="full-width align-self-center orcid-logo orcid-login login-item">
      <a data-login="ORCID" href="<?php echo outputUrl( ORCID_GATEWAY ); ?>">
        <img alt="ORCID Login" src="/img/icons/orcid_128x128.png" height="64" width="64" />
      </a>
      </div> <!-- /.one-half.column -->
    <div class="full-width align-self-center login-item wiscs-login">
      <a data-login="your WISC NET ID" href="<?php echo WISC_GATEWAY; ?>">
        WISC
      </a>
      </div> <!-- /.one-half.column -->
*/ ?>

  <?php endif;
if( $registryUrl['dirname'] !== '/discovery_service_registry_only' ) :
 ?>

    <div class="full-width align-self-center uni-login login-item">
      <a href="#" class="uni_cred_login">Use my university credentials</a> 
    </div>
<?php endif; ?>
  </div> <!-- /.row -->
</div> <!-- /.login-items-desktop -->

<!-- end login-items-desktop -->

  <?php
    //we only want the user to see this option when in the discovery_service_registry enrollment flow
    if( $check_saml_cake['CAKEPHP'] == true && $check_saml_cake['_saml_idp'] == false &&
    $registryUrl['dirname'] == '/discovery_service_registry' ) :
  ?>
  <div class="row create_new_login">
    <div class="eleven columns align-self-center u-cf offset-by-one">
        <br />
        <br />
        <h5>Or <a href="<?php echo outputUrl( HC_ACCOUNT_CREATE_GATEWAY, true ); ?>">click here to create a new Humanities Commons log-in</a></h5>.</p>
      </div> <!-- /.eight.column -->

    </div> <!-- /.create_new_login -->

  <?php endif; ?>

<?php if( $check_saml_cake['CAKEPHP'] == true && $check_saml_cake['_saml_idp'] == true ) :
  require_once "incommon.php";
endif; ?>
