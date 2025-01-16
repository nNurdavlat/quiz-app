<?php

namespace App\Http\Controllers\API;

use Src\Auth;

class QuizController
{
    public function store(): void
    {
            apiResponse([
                'message' => 'Quiz created successfully',
            ],201);
    }
}