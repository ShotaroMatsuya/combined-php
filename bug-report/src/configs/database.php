<?php 

return [
    'pdo' => [
        'driver' => 'mysql',
        'host' => 'mysql',
        'db_name' => 'bug_app',
        'db_username' => 'bug_app_user',
        'db_user_password' => 'secret',
        'default_fetch' => PDO::FETCH_OBJ
    ],
    'mysqli' => [
        'host' => 'mysql',
        'db_name' => 'bug_app',
        'db_username' => 'bug_app_user',
        'db_user_password' => 'secret',
        'default_fetch' => MYSQLI_ASSOC
    ]
    
];



?>