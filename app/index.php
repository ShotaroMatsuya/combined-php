<?php 
declare(strict_types = 1);

require_once __DIR__ . '/vendor/autoload.php';

require_once __DIR__ . '/src/exception/exception.php';

header('Content-Type:text/plain', true);

// Error Check(set_error_handler)
$db = new mysqli('sdfdsfsd', 'root', '', 'bug');
exit;

// Config check(set_exception_handler)
$config = \App\Helpers\Config::get('appasd');
var_dump($config);


// App check

$application = new \App\Helpers\App();
echo $application->getServerTime()->format('Y-m-d H:i:s') . PHP_EOL;
echo $application->getLogPath() . PHP_EOL;
echo $application->getEnvironment() . PHP_EOL;
echo $application->isDebugMode() . PHP_EOL;

if ($application->isRunningFromConsole()){
    echo 'from console';
}else {
    echo 'from browser';
}

?>