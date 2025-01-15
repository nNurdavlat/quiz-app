<?php

namespace App\Http\Controllers\Web;

class UserController
{
    public function home(): void { view('dashboard/home'); }
    public function quizzes(): void { view('dashboard/quizzes'); }
}