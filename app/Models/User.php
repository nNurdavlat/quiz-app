<?php

namespace App\Models;

use App\Traits\HasApiTokens;


class User extends DB  // User ichida DB property lari bor meros olganimiz uchun
{
    use HasApiTokens;
    public function create(string $fullName, string $email, string $password): bool  // REGISTER
    {
        $query = "INSERT INTO users (full_name, email, password, updated_at, created_at) VALUES (:fullName, :email, :password, NOW(), NOW())";
        $stmt = $this->conn
            ->prepare($query)
            ->execute([
            ':fullName' => $fullName,
            ':email' => $email,
            ':password' => password_hash($password, PASSWORD_DEFAULT)
        ]);
        $userId = $this->conn->lastInsertId();
        $this-> createApiToken($userId);
        return true;
    }

    public function getUser(string $email, string $password): bool  // LOGIN
    {
        $query = "SELECT * FROM users WHERE email = :email";
        $stmt = $this->conn
            ->prepare($query);
        $stmt->execute([
            ':email' => $email
        ]);
        $user = $stmt->fetch();
        if ($user && password_verify($password, $user->password)) // User kiritgan parol bilan hashlangan parol to'g'ri bo'lsa TRUE
        {
            $this->createApiToken($user->id);
            return true;
        }
        return false;
    }

    public function getUserById(int $id)
    {
        $query = "SELECT id,full_name,email,updated_at,created_at FROM users WHERE id = :id";
        $stmt = $this->conn
            ->prepare($query);
        $stmt->execute([
            ':id' => $id
        ]);
        return $stmt->fetch();
    }
}