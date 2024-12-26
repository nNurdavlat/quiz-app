<?php

namespace App\Traits;

trait Validator
{
    public function validate(array $data)
    {
        $requiredKeys = [];
        foreach ($data as $key => $value) {
            if (array_key_exists($key, $_REQUEST)) {
                continue;
            }
            $requiredKeys[$key] = $key . " is required";
        }
        if (!empty($requiredKeys)) {
            apiResponse(['error'=>$requiredKeys], 400);
        }
        return $_REQUEST;
    }
}