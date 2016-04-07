<?php

phpinfo();

ini_set('display_errors', 1);
require './vendor/autoload.php';
$dotenv = new Dotenv\Dotenv(__DIR__);
$dotenv->load();
echo getenv('MYSQL3_PORT');

//mysql1に接続
//mysql2に接続
//mysql3に接続
//mysql4に接続
//radisuに接続
//パーミションの問題を解消する。

