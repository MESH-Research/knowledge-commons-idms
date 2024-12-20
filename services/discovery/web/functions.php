<?php
require_once( 'config.php' );

function set_org_cookie() {
	$cookie_domain = substr( 
		$_SERVER['SERVER_NAME'],
		strpos( $_SERVER['SERVER_NAME'], '.' )
	);

	setcookie(
		'commons_org',
		get_org(),
		time() + 12000,
		'/',
		$cookie_domain, 
		false, 
		false 
	);
}

function get_org() {
	if ( isset( $_GET['org'] ) ) {
		return $_GET['org'];
	}
	if ( ! isset( $_SERVER['HTTP_REFERER'] ) ) {
		return 'default';
	}
	$referer = parse_url( $_SERVER['HTTP_REFERER'] );
	$host = explode( '.', $referer['host'] );
	if ( array_key_exists( $host[0], ORG_NAMES ) ) {
		return $host[0];
	}
	return 'default';
}

function get_org_logo_url() {
	$org = get_org();
	if ( ! $org || ! isset( ORG_LOGOS[ $org ] ) ) {
		return ORG_LOGOS['default'];
	}
	return ORG_LOGOS[ $org ];
}

function instruction_text() {
	$discovery_mode = get_discovery_mode();
	$org = get_org();

	switch( $discovery_mode ) {
		case 'login':
			return "Log in to " . ORG_NAMES[ $org ];
		case 'login_registry':
			return "Log in to manage your account";
		case 'register':
			return "Select a method to log in to " . ORG_NAMES[ $org ];
		case 'add':
			return "Select a method to add to your account";
		default:
			return "Log in to " . ORG_NAMES[ $org ];
	}

	return INSTRUCTION_TEXT[ $discovery_mode ];
}

function login_items() {
	$login_items_html = '';
	$discovery_mode = get_discovery_mode();
	foreach ( GATEWAYS as $gateway ) {
		if ( in_array( $discovery_mode, $gateway['discovery_modes'] ) ) {
			$login_items_html .= login_item( 
				$gateway['name'],
				$gateway['img_url'],
				$gateway['entity_id'],
				$gateway['return_url']
			);
		}
	}
	return $login_items_html;
}

function login_item( $name, $img_url, $entity_id, $return_url = '' ) {
	ob_start();
	?>
	<div class="login-item">
		<a data-login="<?= $name ?>" href="<?= output_url( $entity_id, $return_url ); ?>">
	  		<img alt="<?= $name ?> Login" src="<?= $img_url ?>"/>
			<span><?= $name ?></span>
		</a>
  	</div>
	<?php
	return ob_get_clean();
}

function help_text() {
	$discovery_mode = get_discovery_mode();
	$help_text = '';
	if ( $discovery_mode == 'login' || $discovery_mode == 'login_registry' ) {
		$help_text .= '<a href="https://hcommons.org/remind-me/">Forgot login?</a>';
	}
	$help_text .= '<a href="mailto:' . SUPPORT_EMAIL . '">Contact Support</a>';
	return $help_text;
}

function get_discovery_mode() {
	global $discovery_mode;
	
	if ( $discovery_mode ) {
		return $discovery_mode;
	}
	
	$cookie = $_COOKIE['registry_enrollment_flow'] ?? null;
	if ( $cookie ) {
		$cookie_data = json_decode( $cookie, true );
		if ( isset( $cookie_data['discovery_mode' ] ) ) {
			return $cookie_data['discovery_mode'];
		}
	}

	return DEFAULT_DISCOVERY_MODE;
}

/**
 * Outputs URL based off entity ID
 * @param  string $entity_id  base url to use
 * @return string           concatinated URL to be used
 */
function output_url( $entity_id, $return_url = '' ) {
	if ( ! isset( $_GET['return'] ) ) {
		return '';
	}

	$query_string = http_build_query( [ 'entityID' => $entity_id ] );
	
	// Using an existing authentication method (Google, Orcid, etc.)
	if ( ! $return_url ) {
		$return_url = $_GET['return'];
		$return_url = explode( '?', $return_url )[0];
		return $return_url . '?' . $query_string;
	}

	// Creating a new login method (Humanities Commons)
	$discovery_url_encoded = urlencode( rtrim( $_GET['return'], '/' ) . '?' . $query_string );
	return $return_url . '?target=' . $discovery_url_encoded;
}