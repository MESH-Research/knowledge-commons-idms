<?php
/**
 * Database configuration class.
 * This class defines the database configuration for COmanage.
 * We use environment variables for anything environment specific.
 */
class DATABASE_CONFIG {
    /**
     * Default database configuration.
     * @var array
     */
    public $default;
    
    public function __construct() {
        $this->default = [
            'datasource' => 'Database/Mysql',
            'persistent' => false,
            'host' => getenv('COMANAGE_DB_HOST'),
            'login' => getenv('COMANAGE_DB_USER'), 
            'password' => getenv('COMANAGE_DB_PASSWORD'),
            'database' => getenv('COMANAGE_DB_NAME'),
            'prefix' => 'cm_',
            'encoding' => 'utf8'
        ];
    }
}