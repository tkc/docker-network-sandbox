
<h1>Setting</h1>

<?php
ini_set('display_errors', 1);
require './vendor/autoload.php';
$dotenv = new Dotenv\Dotenv(__DIR__);
$dotenv->load();

//host
echo '<h1>HOSTNAME =>'.getenv('HOSTNAME').'</h1>';
echo '<h1>Web-0 =>'.getenv('WEB0_PORT_80_TCP_ADDR').'</h1>';
echo '<h1>Web-2 =>'.getenv('WEB2_PORT_80_TCP_ADDR').'</h1>';
echo '<h1>Web-3 =>'.getenv('WEB3_PORT_80_TCP_ADDR').'</h1>';

//DB
$mysql1 = getenv('MYSQL1_PORT_3306_TCP_ADDR');
$mysql2 = getenv('MYSQL2_PORT_3306_TCP_ADDR');
$mysql3 = getenv('MYSQL3_PORT_3306_TCP_ADDR');

$user = 'root';
$password = 'secret';
$db = "homestead";

$dsn1 = 'mysql:dbname=' . $db . ';host=' . $mysql1 . '';
$dsn2 = 'mysql:dbname=' . $db . ';host=' . $mysql2 . '';
$dsn3 = 'mysql:dbname=' . $db . ';host=' . $mysql3 . '';

try {
    $dbh = new PDO($dsn1, $user, $password);
    echo '<h2>MySQL-1 OK</h2>';
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}

try {
    $dbh = new PDO($dsn2, $user, $password);
    echo '<h2>MySQL-2 OK</h2>';
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}

try {
    $dbh = new PDO($dsn3, $user, $password);
    echo '<h2>MySQL-3 OK</h2>';
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}

