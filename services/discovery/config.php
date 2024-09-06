<?php

require_once( 'env.php' );

const DEFAULT_DISCOVERY_MODE = 'login';

const SUPPORT_EMAIL = 'hello@hcommons.org';

const GATEWAYS = [
	[
		'name'			  => 'Username and Password',
		'entity_id'       => HC_GATEWAY,
		'return_url'      => '',
		'img_url'         => '/img/icons/humanities-commons-icon.png',
		'discovery_modes' => [ 'login', 'login_registry' ],
	],
	[
		'name'            => 'Username and Password',
		'entity_id'       => HC_GATEWAY,
		'return_url'      => REGISTRY_SERVER . '/registry/humanities_commons_idp_enroller/humanities_commons_idp_enroller_accounts/provision',
		'img_url'         => '/img/icons/humanities-commons-icon.png',
		'discovery_modes' => [], // Register using a separate enrollment flow with no discovery page. Leaving here in case we change directions.
	],
	[
		'name'            => 'Google',
		'entity_id'       => GOOGLE_GATEWAY,
		'return_url'      => '',
		'img_url'         => '/img/icons/google-icon.png',
		'discovery_modes' => [ 'login', 'login_registry', 'register', 'add' ],
	],
	[
		'name'            => 'Orcid',
		'entity_id'       => ORCID_GATEWAY,
		'return_url'      => '',
		'img_url'         => '/img/icons/orcid_128x128.png',
		'discovery_modes' => [ 'login', 'login_registry', 'register', 'add' ],
	],
	[
		'name'            => 'Legacy MLA',
		'entity_id'       => LEGACY_MLA_GATEWAY,
		'return_url'      => '',
		'img_url'         => '/img/mla_logo.jpg',
		'discovery_modes' => [ 'login', 'login_registry', 'register', 'add' ],
	],
	[
		'name'            => 'MSU',
		'entity_id'       => MSU_GATEWAY,
		'return_url'      => '',
		'img_url'         => '/img/icons/helmet-f2w.jpg',
		'discovery_modes' => [ 'login', 'login_registry', 'register', 'add' ],
	],
];

const ORG_NAMES = [
	'default' => 'the Commons',
	'hc'      => 'Knowledge Commons',
	'mla'     => 'MLA Commons',
	'msu'     => 'MSU Commons',
	'arlisna' => 'ARLIS/NA Commons',
	'up'      => 'UP Commons',
	'sah'     => 'SAH Commons',
];

const ORG_LOGOS = [
	'default' => '/img/double_hc_55.png',
	'hc'      => '/img/double_hc_55.png',
	'mla'     => '/img/hc_mla_55.png',
	'msu'     => '/img/MSU-commons-logo.png',
	'arlisna' => '/img/hc_arlisna_55.png',
	'up'      => '/img/UPCommons_Aproved_logo-small.png',
	'sah'     => '/img/hc_sah_55.png',
];
