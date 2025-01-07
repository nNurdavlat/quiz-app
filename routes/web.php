<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

use App\Http\Controllers\API\UserController;
use App\Http\Controllers\Web\HomeController;
use Src\Router;

//Router::get('/todos', [UserController::class, 'index']); // UserController classini index ishlasin. echo UserController deb yozsak namespace qaytaradi namespace ga new namespace deb yozsak OBJECT bo'lib ketadi

Router::get('/', [HomeController::class, 'home']);
Router::get("/about", [HomeController::class, 'about']);
Router::get("/register", [HomeController::class, 'register']);
Router::get("/login", [HomeController::class, 'login']);
