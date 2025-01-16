<?php

namespace App\Models;

use App\Models\DB;

class Option extends DB
{
    public function create(int $questionId, string $optionText, bool $isCorrect): false|string
    {
        $query = "INSERT INTO options (question_id, option_text, is_correct, updated_at, created_at)
                VALUES (:questionId, :optionText, :isCorrect, NOW(), NOW())";
        $stmt = $this->conn->prepare($query);
        $stmt->execute([
            'questionId' => $questionId,
            ':optionText' => $optionText,
            ':isCorrect' => $isCorrect ? 1 : 0,
        ]);
        return $this->conn->lastInsertId();
    }
}