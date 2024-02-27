<?php

namespace Model;
use PDO;
use Util\Connection;

class WorldRepository {
    public static function cityNumber(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT country.Name, COUNT(*) as Citta
                FROM country
                INNER JOIN city ON city.CountryCode = country.Code
                GROUP BY country.Code
                HAVING Citta >= 10
                ORDER BY Citta DESC;';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
    public static function english(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT country.Continent AS Continente, FLOOR(SUM(country.Population * countrylanguage.Percentage / 100)) AS Parlanti
                FROM country
                INNER JOIN countrylanguage ON countrylanguage.CountryCode = country.Code
                WHERE countrylanguage.Language = "English"
                GROUP BY country.Continent
                ORDER BY Parlanti DESC;';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
    public static function max(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT country.Name AS Stato, FLOOR(country.Population * countrylanguage.Percentage / 100) AS Persone
                FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
                WHERE countrylanguage.Language = "English"
                AND country.Population * countrylanguage.Percentage = (SELECT MAX(country.Population * countrylanguage.Percentage)
                                                                       FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
                                                                       WHERE countrylanguage.Language = "English");';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
}