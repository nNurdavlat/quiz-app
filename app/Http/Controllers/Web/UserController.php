<?php

namespace App\Http\Controllers\Web;

class UserController
{
    public function home()
    {
        view('dashboard/home');
    }
}