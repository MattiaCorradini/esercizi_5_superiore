<?php

namespace Model;
use Util\Connection;

class StudenteRepository {
    public static function listAll(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT studenti.*, classe.sezione FROM studenti INNER JOIN classe ON classe.id = studenti.id_classe';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function getStudenteByID($id) {
        $pdo = Connection::getInstance();
        $sql = 'SELECT * FROM studenti WHERE ID=:id';
        $result = $pdo->prepare($sql);
        $result->execute([
            'id' => $id
        ]);
        $studente = $result->fetchAll();
        return $studente[0];
    }

    public static function add($nome, $cognome, $id_classe) {
        $pdo = Connection::getInstance();
        $sql = 'INSERT INTO studenti (nome, cognome, id_classe) VALUES (:nome, :cognome, :id_classe)';
        $result = $pdo->prepare($sql);
        $result->execute([
            'nome' => $nome,
            'cognome' => $cognome,
            'id_classe' => $id_classe
        ]);
    }

    public static function remove($id) {
        $pdo = Connection::getInstance();
        $sql = 'DELETE FROM studenti WHERE id=:id';
        $result = $pdo->prepare($sql);
        $result->execute([
            'id' => $id
        ]);
    }

    public static function update($nome, $cognome, $id_classe, $id) {
        $pdo = Connection::getInstance();
        $sql = 'UPDATE studenti SET nome = :nome, cognome = :cognome, id_classe = :id_classe WHERE id = :id';
        $result = $pdo->prepare($sql);
        $result->execute([
            'nome' => $nome,
            'cognome' => $cognome,
            'id' => $id,
            'id_classe' => $id_classe
        ]);
    }
}