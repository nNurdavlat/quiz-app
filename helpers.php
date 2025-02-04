<?php

use JetBrains\PhpStorm\NoReturn;

function view(string $page, array $data = []): void
{
    extract($data); // Bu yerda array "key" ni varible "value" ni esa qiymati qilib oladi
    require 'resources/views/' . $page . '.php';
    exit();
}

function components(string $component, array $data = []): void
{
    extract($data); // Bu yerda array "key" ni varible "value" ni esa qiymati qilib oladi
    require 'resources/views/components/' . $component . '.php';
}

function assets ($fileName): string
{
    return $_ENV['APP_URL'] . '/public' . $fileName;
}

#[NoReturn] function redirect(string $url){
    header("Location: $url");
    exit;
}


#[NoReturn] function apiResponse($data, $status = 200): void
{
    header('Content-Type: application/json');
    http_response_code($status);
    echo json_encode($data);
    exit();
}
