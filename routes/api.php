<?php

use App\Router;

$router = new Router();

// Agar methodlarni static qilsak o'sha method obyektga tobe  bo'lmay qoladi

Router::get("/", "HomeController@index");


