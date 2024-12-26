<?php

namespace App\Traits;

trait HasApiTokens
{
    protected string $api_token;
    protected string $duration;

    public function createApiToken(int $userId): string
    {
        $query = "INSERT INTO user_api_tokens (user_id, token, expires_at) 
                    VALUES (:userId, :token, :expires_at)";

        $this->api_token = bin2hex(random_bytes(40)); // 40 ta symbol aralashtirvoradi
        $this->duration = date("Y-m-d H:i:s", strtotime("+" . $_ENV['API_TOKEN_EXPIRE_DAY'] . "day"));

        $stmt = $this->conn->prepare($query);
        $stmt->execute([
            "userId" => $userId,
            "token" => $this->api_token,
            "expires_at" => $this->duration
        ]);
        return $this->api_token;
    }
}