<?php

namespace App\Models;

use App\Models\DB;

class Result extends DB
{

    public function find(int $id)
    {
        $query = "SELECT * FROM results WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->execute(['id' => $id]);
        return $stmt->fetch();
    }
    public function create(int $userID, int $quizID, int $limit)
    {
        $query = "INSERT INTO results (user_id, quiz_id, started_at, finished_at) 
                        VALUES (:user_id, :quizId, NOW(), :finishedAt)";
        $stmt = $this->conn->prepare($query);
        $stmt->execute([
            ':user_id' => $userID,
            ':quizId' => $quizID,
            ':finishedAt' => date("Y-m-d H:i:s", strtotime("+$limit minutes"))
        ]);
        $resultId = $this->conn->lastInsertId();
        return $this->find($resultId);
    }


    public function getUserResult (int $userID, int $quizID)
    {
        $query = "SELECT * FROM results WHERE user_id = :userId AND quiz_id = :quizId";
        $stmt = $this->conn->prepare($query);
        $stmt->execute([
            ':userId' => $userID,
            ':quizId' => $quizID
        ]);
        return $stmt->fetch();
    }
}