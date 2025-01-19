<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

use App\Http\Controllers\Web\UserController;
use App\Http\Controllers\Web\HomeController;
use Src\Router;

// UserController classini index ishlasin. echo UserController deb yozsak namespace qaytaradi namespace ga new namespace deb yozsak OBJECT bo'lib ketadi

Router::get('/', [HomeController::class, 'home']);
Router::get("/about", [HomeController::class, 'about']);
Router::get("/register", [HomeController::class, 'register']);
Router::get("/login", [HomeController::class, 'login']);
Router::get("/dashboard", [UserController::class, 'home']);
Router::get("/dashboard/quizzes", [UserController::class, 'quizzes']);
Router::get("/dashboard/create-quiz", [UserController::class, 'create_quiz']);
Router::get("/dashboard/statistics", [UserController::class, 'statistics']);
Router::get('/dashboard/take-quiz', [UserController::class, 'take']);


Router::notFound();
