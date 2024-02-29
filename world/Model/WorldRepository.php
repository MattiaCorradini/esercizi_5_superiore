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

    public static function GNP(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT country.Name, country.GNP/country.Population AS GNP
                FROM country
                WHERE country.GNP/country.Population = (SELECT MIN(country.GNP/country.Population)
                                                        FROM country
                                                        WHERE country.GNP > 0);';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function NumStati(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT country.Continent, COUNT(country.Name) AS NumeroStati
                From country
                GROUP BY country.Continent
                ORDER BY NumeroStati DESC;';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function MaxPop(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT country.Name, country.Population
                FROM country
                WHERE country.Population = (SELECT MAX(country.Population) FROM country);';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function oldest(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT country.Name, country.IndepYear
                FROM country
                WHERE country.IndepYear = (SELECT MIN(country.IndepYear) FROM country);';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function asian(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT Name , GNP/Population*1000000 AS GNP
                FROM country
                WHERE Continent = "Asia"
                AND GNP/Population = (SELECT MAX(GNP/Population)
                                      FROM country 
                                      WHERE Continent = "Asia");';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function ger(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT AVG(city.Population) AS media
                FROM country
                INNER JOIN city ON country.Code = city.CountryCode
                WHERE country.Name = "Germany";';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function list(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT country.Name, COUNT(*) AS c, AVG(city.Population) AS d
                FROM country
                INNER JOIN city ON country.Code = city.CountryCode
                GROUP BY country.Name
                ORDER BY d DESC;';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
}