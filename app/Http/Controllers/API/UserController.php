<?php

namespace App\Http\Controllers\API;

use App\Models\User;
use App\Traits\Validator;
use JetBrains\PhpStorm\NoReturn;
use Src\Auth;

class UserController
{
    use Validator;
    #[NoReturn] public function store(): void
    {
        $userData = $this->validate([
           'full_name' => 'string',
           'email' => 'string',
           'password' => 'string'
        ]);
        $user = new User();
        $user->create($userData['full_name'], $userData['email'], $userData['password']);
        apiResponse(['message' => 'User created',
            'token'=>$user->api_token]);  // HasApiToken dan User clasi obyekt olganligi uchun bu yerda ko'rinvotti
    }

    public function login(): void
    {
        $userData = $this->validate([
            'email' => 'string',
            'password' => 'string'
        ]);
        $user = new User();
        if ($user->getUser($userData['email'], $userData['password']))
        {
            apiResponse([
                'message' => 'User logged in successfully',
                'token'=>$user->api_token
            ]);
        }
        apiResponse([
            'errors'=>[ 'message'=>'Invalid email or password' ]
        ],401);
    }

    public function show (): void
    {
        $user = Auth::user();
        apiResponse([
           'message'=>'User information',
            'data'=>$user,
        ]);
    }
}