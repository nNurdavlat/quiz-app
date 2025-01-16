<?php

namespace App\Http\Controllers\API;

use App\Models\Option;
use App\Models\Question;
use App\Models\Quiz;
use App\Traits\Validator;
use Src\Auth;

class QuizController
{
    use Validator;
    public function store()
    {
        $quizItems = $this->validate([
           'title' => 'string',
            'description' => 'string',
            'timeLimit' => 'int',
            'questions' => 'array',
        ]);

        $quiz = new Quiz();
        $question = new Question();
        $option = new Option();

        $quiz_id = $quiz->create(Auth::user()->id,  // Oxirgi Id qo'shiladi
                                    $quizItems['title'],
                                    $quizItems['description'],
                                    $quizItems['timeLimit'],
        );
        $questions = $quizItems['questions'];  // Buni ichida savollar array bo'lib keladi tepada

        foreach ($questions as $questionItem) {
            $question_id = $question->create($quiz_id, $questionItem['quiz']);
            $correct = $questionItem['correct'];
            foreach ($questionItem['options'] as $key => $optionItem) {
                $option->create($question_id, $optionItem, $correct == $key);
            }
        }

            apiResponse( ['message' => 'Quiz created successfully',],201);
    }
}