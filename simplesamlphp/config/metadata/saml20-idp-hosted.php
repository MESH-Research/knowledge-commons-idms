<?php

/**
 * SAML 2.0 IdP configuration for SimpleSAMLphp.
 *
 * See: https://simplesamlphp.org/docs/stable/simplesamlphp-reference-idp-hosted
 */

$metadata['https://co-idp.hcommons-dev.org/idp/shibboleth'] = [
    'host' => 'co-idp.hcommons-dev.org',
    'privatekey' => 'co-idp.key',
    'certificate' => 'co-idp.crt',
    'auth' => 'co-ldap',
    'attributes.NameFormat' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
];

$metadata['https://hc-idp.hcommons-dev.org/idp/shibboleth'] = [
    'host' => 'hc-idp.hcommons-dev.org',
    'privatekey' => 'hc-idp.key',
    'certificate' => 'hc-idp.crt',
    'auth' => 'co-ldap',
    'attributes.NameFormat' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
    'authproc' => [
        200 => [
                'class' => 'core:AttributeMap',
                'givenName' => 'urn:oid:2.5.4.42',
                'sn' => 'urn:oid:2.5.4.4',
                'cn' => 'urn:oid:2.16.840.1.113730.3.1.241',
                'mail' => 'urn:oid:0.9.2342.19200300.100.1.3',
                'uid' => 'urn:oid:1.3.6.1.4.1.5923.1.1.1.6',
        ],
    ],
];

$metadata['https://orcid-gateway.hcommons-dev.org/simplesaml/saml2/idp'] = [
    'host' => 'orcid-gateway.hcommons-dev.org',
    'privatekey' => 'orcid-gateway.key',
    'certificate' => 'orcid-gateway.crt',
    'auth' => 'orcid',
    'attributes.NameFormat' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
    'authproc' => [
        100 => [
                'class' => 'core:AttributeMap',
                'orcid.given-names' => 'urn:oid:2.5.4.42',
                'orcid.family-name' => 'urn:oid:2.5.4.4',
                'orcid.name' => 'urn:oid:2.16.840.1.113730.3.1.241',
                'orcid.email' => 'urn:oid:0.9.2342.19200300.100.1.3',
                'orcid.uri' => 'urn:oid:1.3.6.1.4.1.5923.1.1.1.16',
        ],
        110 => [
                'class' => 'core:AttributeAdd',
                'scope' => ['orcid-gateway.hcommons-dev.org'],
        ],
        120 => [
                'class' => 'core:ScopeAttribute',
                'scopeAttribute' => 'scope',
                'sourceAttribute' => 'orcid.path',
                'targetAttribute' => 'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ],
        130 => [
                'class' => 'core:AttributeLimit',
                'urn:oid:2.5.4.42',
                'urn:oid:2.5.4.4',
                'urn:oid:2.16.840.1.113730.3.1.241',
                'urn:oid:0.9.2342.19200300.100.1.3',
                'urn:oid:1.3.6.1.4.1.5923.1.1.1.6',
                'urn:oid:1.3.6.1.4.1.5923.1.1.1.16'
        ]
    ],
];

$metadata['https://google-gateway.hcommons-dev.org/idp/shibboleth'] = [
    'host' => 'google-gateway.hcommons-dev.org',
    'privatekey' => 'google-idp.key',
    'certificate' => 'google-idp.crt',
    'auth' => 'google',
    'attributes.NameFormat' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
    'authproc' => [
        100 => ['class' => 'core:AttributeMap', 'authoauth2:oidc2name'],
        103 => [
                'class' => 'core:AttributeAlter',
                'subject' => 'uid',
                'pattern' => '/$/',
                'replacement' => '+google.com',
        ],
        105 => [
                'class' => 'core:AttributeMap',
                'givenName' => 'urn:oid:2.5.4.42',
                'sn' => 'urn:oid:2.5.4.4',
                'cn' => 'urn:oid:2.16.840.1.113730.3.1.241',
                'mail' => 'urn:oid:0.9.2342.19200300.100.1.3',
        ],
        110 => [
                'class' => 'core:AttributeAdd',
                'scope' => ['commons.mla.org'],
        ],
        120 => [
                'class' => 'core:ScopeAttribute',
                'scopeAttribute' => 'scope',
                'sourceAttribute' => 'uid',
                'targetAttribute' => 'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ],
        130 => [
                'class' => 'core:AttributeLimit',
                'urn:oid:2.5.4.42',
                'urn:oid:2.5.4.4',
                'urn:oid:2.16.840.1.113730.3.1.241',
                'urn:oid:0.9.2342.19200300.100.1.3',
                'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ]
    ],
];

$metadata['https://twitter-gateway.hcommons-dev.org/idp/shibboleth'] = [
    'host' => 'twitter-gateway.hcommons-dev.org',
    'privatekey' => 'twitter-idp.key',
    'certificate' => 'twitter-idp.crt',
    'auth' => 'twitter',
    'attributes.NameFormat' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
    'authproc' => [
        100 => [
                'class' => 'core:AttributeAlter',
                'subject' => 'twitter.id_str',
                'pattern' => '/$/',
                'replacement' => '+twitter.com',
        ],
        105 => [
                'class' => 'core:AttributeMap',
                'twitter.id_str' => 'uid',
                'twitter.screen_name'  => 'urn:oid:2.16.840.1.113730.3.1.241',
                'mail' => 'urn:oid:0.9.2342.19200300.100.1.3',
        ],
        110 => [
                'class' => 'core:AttributeAdd',
                'scope' => ['twitter-gateway.hcommons-dev.org'],
        ],
        120 => [
                'class' => 'core:ScopeAttribute',
                'scopeAttribute' => 'scope',
                'sourceAttribute' => 'uid',
                'targetAttribute' => 'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ],
        130 => [
                'class' => 'core:AttributeLimit',
                'urn:oid:2.5.4.42',
                'urn:oid:2.5.4.4',
                'urn:oid:2.16.840.1.113730.3.1.241',
                'urn:oid:0.9.2342.19200300.100.1.3',
                'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ]
    ],
];

$metadata['https://mla-idp.hcommons-dev.org/idp/shibboleth'] = [
    'host' => 'mla-idp.hcommons-dev.org',
    'privatekey' => 'mla-idp.key',
    'certificate' => 'mla-idp.crt',
    'auth' => 'mla',
    'attributes.NameFormat' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
    'authproc' => [
        100 => [
                'class' => 'core:AttributeMap',
                'givenName' => 'urn:oid:2.5.4.42',
                'sn' => 'urn:oid:2.5.4.4',
                'mail' => 'urn:oid:0.9.2342.19200300.100.1.3',
        ],
        110 => [
                'class' => 'core:AttributeAdd',
                'scope' => ['dev.mla.org'],
        ],
        120 => [
                'class' => 'core:ScopeAttribute',
                'scopeAttribute' => 'scope',
                'sourceAttribute' => 'uid',
                'targetAttribute' => 'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ],
        130 => [
                'class' => 'core:AttributeLimit',
                'urn:oid:2.5.4.42',
                'urn:oid:2.5.4.4',
                'urn:oid:2.16.840.1.113730.3.1.241',
                'urn:oid:0.9.2342.19200300.100.1.3',
                'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ]
    ],
];

$metadata['https://maps-idp.hcommons-dev.org/simplesaml/saml2/idp'] = [
    'host' => 'maps-idp.hcommons-dev.org',
    'privatekey' => 'maps-idp.key',
    'certificate' => 'maps-idp.crt',
    'auth' => 'maps',
    'attributes.NameFormat' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
    'authproc' => [
        100 => [
                'class' => 'core:AttributeMap',
                'givenName' => 'urn:oid:2.5.4.42',
                'sn' => 'urn:oid:2.5.4.4',
                'mail' => 'urn:oid:0.9.2342.19200300.100.1.3',
        ],
        110 => [
                'class' => 'core:AttributeAdd',
                'scope' => ['dev.mla.org'],
        ],
        120 => [
                'class' => 'core:ScopeAttribute',
                'scopeAttribute' => 'scope',
                'sourceAttribute' => 'uid',
                'targetAttribute' => 'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ],
        130 => [
                'class' => 'core:AttributeLimit',
                'urn:oid:2.5.4.42',
                'urn:oid:2.5.4.4',
                'urn:oid:2.16.840.1.113730.3.1.241',
                'urn:oid:0.9.2342.19200300.100.1.3',
                'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ]
    ],
];

$metadata['https://aseees-idp.hcommons-dev.org/simplesaml/saml2/idp'] = [
    'host' => 'aseees-idp.hcommons-dev.org',
    'privatekey' => 'aseees-idp.key',
    'certificate' => 'aseees-idp.crt',
    'auth' => 'aseees',
    'attributes.NameFormat' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
    'authproc' => [
        100 => [
                'class' => 'core:AttributeMap',
                'givenName' => 'urn:oid:2.5.4.42',
                'sn' => 'urn:oid:2.5.4.4',
                'mail' => 'urn:oid:0.9.2342.19200300.100.1.3',
        ],
        110 => [
                'class' => 'core:AttributeAdd',
                'scope' => ['dev.mla.org'],
        ],
        120 => [
                'class' => 'core:ScopeAttribute',
                'scopeAttribute' => 'scope',
                'sourceAttribute' => 'uid',
                'targetAttribute' => 'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ],
        130 => [
                'class' => 'core:AttributeLimit',
                'urn:oid:2.5.4.42',
                'urn:oid:2.5.4.4',
                'urn:oid:2.16.840.1.113730.3.1.241',
                'urn:oid:0.9.2342.19200300.100.1.3',
                'urn:oid:1.3.6.1.4.1.5923.1.1.1.6'
        ]
    ],
];
