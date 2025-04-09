<?php

class EmailConfig {
	public array $default;
	public function __construct() {
		$this->default = array(
			'transport' => 'Smtp',
			'from' => [getenv('COMANAGE_EMAIL_FROM') =>  'Knowledge Commons'],
			'host' => getenv('COMANAGE_EMAIL_HOST'),
			'port' => getenv('COMANAGE_EMAIL_PORT'),
			'timeout' => 30,
			'username' => getenv('COMANAGE_EMAIL_USERNAME'),
			'password' => getenv('COMANAGE_EMAIL_PASSWORD'),
			'client' => null,
			'log' => false,
			'charset' => 'utf-8',
			'headerCharset' => 'utf-8',
		);
	}

}
