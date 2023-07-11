<?php 
declare(strict_types = 1);

require_once __DIR__ . '/vendor/autoload.php';

header('Content-Type:text/plain', true);

// Config check(set_exception_handler)
$config = \App\Helpers\Config::get('appasd');
var_dump($config);

?>