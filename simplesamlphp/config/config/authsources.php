<?php

$config = [

    'admin' => [
        'core:AdminPassword',
    ],

    'co-ldap' => [
        'ldap:LDAP',

        'hostname' => '10.98.11.244',
        'enable_tls' => false,
        'debug' => true,
        'timeout' => 0,
        'port' => 389,
        'referrals' => true,
        // Which attributes should be retrieved from the LDAP server.
        // This can be an array of attribute names, or NULL, in which case
        // all attributes are fetched.
        'attributes' => NULL,
        'search.enable' => true,
        'search.base' => 'ou=people2,o=HC,dc=commons,dc=mla,dc=org',
        'search.attributes' => ['employeeNumber'],
        'search.username' => 'uid=comanage,ou=system,o=HC,dc=commons,dc=mla,dc=org',
        'search.password' => 'ESe4LNZoN7Y3T7Qypwwk',

        // If the directory uses privilege separation,
        // the authenticated user may not be able to retrieve
        // all required attribures, a privileged entity is required
        // to get them. This is enabled with this option.
        'priv.read' => true,

        // The DN & password the SimpleSAMLphp should bind to before
        // retrieving attributes. These options are required if
        // 'priv.read' is set to TRUE.
        'priv.username' => 'uid=comanage,ou=system,o=HC,dc=commons,dc=mla,dc=org',
        'priv.password' => 'ESe4LNZoN7Y3T7Qypwwk',
    ],

    'hc-ldap' => [
        'ldap:LDAP',

        'hostname' => '127.0.0.1',
        'enable_tls' => false,
        'debug' => false,
        'timeout' => 0,
        'port' => 389,
        'referrals' => true,
        // Which attributes should be retrieved from the LDAP server.
        // This can be an array of attribute names, or NULL, in which case
        // all attributes are fetched.
        'attributes' => ['givenName', 'sn', 'cn', 'mail', 'uid'],
        'search.enable' => true,
        'search.base' => 'ou=people,o=hcommons,dc=hcommons-test,dc=org',
        'search.attributes' => ['uid'],
        'search.username' => 'cn=admin,dc=hcommons-test,dc=org',
        'search.password' => 'xSX8tCFJTcy5wDDrHdbz',

        // If the directory uses privilege separation,
        // the authenticated user may not be able to retrieve
        // all required attribures, a privileged entity is required
        // to get them. This is enabled with this option.
        'priv.read' => false,

        // The DN & password the SimpleSAMLphp should bind to before
        // retrieving attributes. These options are required if
        // 'priv.read' is set to TRUE.
        'priv.username' => null,
        'priv.password' => null,
    ],

    'aseees' => [
       'authnetforumapi:NetForumAuth',
       'apiroot' => 'https://netforum.avectra.com',
       'apikey' => 'aseees3xwebuser',
       'apisecret' => 'psU22P8GRnBh',
    ],

    'mla' => [
       'authmlaapi:MlaAuth',
       'apiroot' => 'https://apidev.mla.org/2',
       'apikey' => 'sphericalcow',
       'apisecret' => 'd6b4b11cd2bb15c8dbf3d916e9e7352afe1a538f40ea4c926ffd22a10867df6a',
    ],

    'maps' => [
       'authmapsapi:MapsAuth',
       'apiroot' => 'https://apidev.mla.org/2',
       'apikey' => 'sphericalcow',
       'apisecret' => 'd6b4b11cd2bb15c8dbf3d916e9e7352afe1a538f40ea4c926ffd22a10867df6a',
    ],

    'google' => [
        'authoauth2:OAuth2',
        'template' => 'GoogleOIDC',
        'clientId' => '482309865368-e8lq9gucdunmo7qbf53qinragj0ovfng.apps.googleusercontent.com',
        'clientSecret' => '-kvM0DG8sfFZ_RyF1rb5JNjw',
    ],

    'twitter' => [
       'authtwitter:Twitter',
       'key' => 'txFKvb0AoW1np8rCSMZhlMSyp',
       'secret' => 'sDvO2RWth8Qe44HgWD2TCnpRX8QyvuufXOSk2ml8b8Ssg9uB5d',
    ],

    'orcid' => [
        'authorcid:ORCID',
        'clientId' => 'APP-7DHZCMEG8SZORYFM',
        'clientSecret' => 'd88bd335-ba0a-43db-8659-602ff0fa4dd0',
    ],

];
