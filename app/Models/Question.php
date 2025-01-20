<?php

namespace App\Models;

use App\Models\DB;

class Question extends DB
{
    public function create(int $quizId, string $questionText): false|string
    {
        $query = "INSERT INTO questions (quiz_id, question_text, updated_at, created_at)
                VALUES (:quizId, :question_text, NOW(), NOW())";
        $stmt = $this->conn->prepare($query);
        $stmt->execute([
            'quizId' => $quizId,
            ':question_text' => $questionText,
        ]);
        return $this->conn->lastInsertId();
    }

    public function deleteByQuizId (int $questionId): bool
    {
        $query = "DELETE FROM questions WHERE id = :questionId";
        $stmt = $this->conn->prepare($query);
        return $stmt->execute([
            'questionId' => $questionId,
        ]);
    }

}