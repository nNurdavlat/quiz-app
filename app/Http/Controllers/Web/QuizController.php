<?php

namespace App\Http\Controllers\Web;

use App\Models\Quiz;

class QuizController
{

    public function takeQuiz(string $uniqueValue): void
    {
        $quiz = (new Quiz())->findByUniqueValue($uniqueValue);
        if ($quiz) {
            view('quiz/take-quiz');
        }
        view('errors/404');
    }
}