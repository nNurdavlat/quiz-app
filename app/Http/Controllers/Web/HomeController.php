<?php

namespace App\Http\Controllers\Web;

class HomeController
{
    public function home(): void{ view('home'); }

    public function about(): void { view('about'); }

    public function register(): void { view('auth/register'); }

    public function login(): void { view('auth/login'); }

}