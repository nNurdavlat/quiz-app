<?php

namespace App\Models;

use App\Models\DB;

class Quiz extends DB
{
    public function create(int $userId, string $title, string $description, int $timeLimit): bool
    {
        $query = "INSERT INTO quizzes (user_id, title, description, time_limit, updated_at, created_at)
                VALUES (:user_id, :title, :description, :time_limit, NOW(), NOW())";
        $stmt = $this->conn->prepare($query);
        return $stmt->execute([
            'user_id' => $userId,
            'title' => $title,
            'description' => $description,
            'time_limit' => $timeLimit,
        ]);
    }
}