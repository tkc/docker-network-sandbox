<?php

ini_set( 'display_errors', 1 );
require './vendor/autoload.php';
$dotenv = new Dotenv\Dotenv(__DIR__);
$dotenv->load();
echo getenv('MYSQL3_PORT');
