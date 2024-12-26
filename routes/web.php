<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

use App\Http\Controllers\API\UserController;
use App\Http\Router;


Router::get('/todos', [UserController::class, 'index']); // UserController classini index ishlasin. echo UserController deb yozzask namespace qytaradi
//namespace ga new namespace deb yozsak OBJECT bo'lib ketadi


Router::get('/', function () {
    echo "INLINE FUNCITION ISHLAVOTIII!";
});
