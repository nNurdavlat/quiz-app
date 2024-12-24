<?php

namespace App;
use mysql_xdevapi\SqlStatementResult;

class Router
{
    public $currentRoute;

    public function __construct()
    {
        $this->currentRoute = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH); //Bu localhost/ <- Shu bo'sh joydagi yozuvni olib beradi yoki bolmasa "/" shuni oladi
    }

    public static function getRoute(): false|array|int|string|null
    {
        return (new static())->currentRoute;
    }


    public static function getResource($route): false|string
    {
        $resourceIndex = mb_strripos($route, '{id}');

        if (!$resourceIndex)
        {
            return false;
        }

        $resourceValue = substr(self::getRoute(), $resourceIndex); // shu yozuvdan kein yana nimadur bormi shuni tekshiradi

        if ($limit = mb_stripos($resourceValue, '/')) { // Limitga masalan 90/update bo'lsa 2 qaytadi chunki / 3 uzunlikda turibdi
            return substr($resourceValue, 0, $limit);
        }

        return $resourceValue ?: false;
    }

    public static function runCallback(string $route, callable $callback)
    {
        $resourceValue = self::getResource($route);  // getResource dan qaytvotgan returni shunga tenglab olamiz
        if ($resourceValue)
        {
            $resourceRoute = str_replace('{id}', $resourceValue, $route);
            if ($resourceRoute == self::getRoute()) // (new static()) = deganimizda obyekt paydo bo'ladi. Routerdan olingan obyekt paydo bo'ladi
            {
                $callback($resourceValue);
                exit();
            }
        }
        if ($route == self::getRoute())
        {
            $callback();
            exit();
        }
    }


    public static function get($route, $callback): void
    {
        if ($_SERVER['REQUEST_METHOD'] == 'GET')
        {
            self::runCallback($route, $callback);
        }
    }


    public static function post($route, $callback): void
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST')
        {
            self::runCallback($route, $callback);
        }
    }



    public static function put($route, $callback): void
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST' || $_SERVER['REQUEST_METHOD'] == 'PUT')
        {
            if ((isset($_POST['_method']) &&  $_POST['_method'] == 'PUT') || $_SERVER['REQUEST_METHOD'] == 'PUT')
            {
                self::runCallback($route, $callback);
            }
        }
    }

    public static function delete($route, $callback): void
    {
        if ($_SERVER['REQUEST_METHOD'] == 'DELETE')
        {
           self::runCallback($route, $callback);
        }
    }

    public static function isApiCall(): bool
    {
        return mb_stripos(self::getRoute(), '/api') === 0;
    }


    public static function isTelegram()
    {
        return mb_stripos(self::getRoute(), '/telegram') === 0;
    }
}
