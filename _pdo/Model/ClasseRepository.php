<?php

namespace Model;
use Util\Connection;

class ClasseRepository {
    public static function add($sezione) {
        $pdo = Connection::getInstance();
        $sql = 'INSERT INTO classe (sezione) VALUES (:sezione)';
        $result = $pdo->prepare($sql);
        $result->execute([
            'sezione'=>$sezione
        ]);
        return $result->fetchAll();
    }

    public static function listAll() {
        $pdo = Connection::getInstance();
        $sql = 'SELECT * FROM classe';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
}