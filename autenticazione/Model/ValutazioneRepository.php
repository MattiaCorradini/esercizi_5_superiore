<?php

namespace Model;
use Util\Connection;

class ValutazioneRepository{

    public static function getValutazioniStudente(int $id):array|null{
        $pdo = Connection::getInstance();
        $sql = 'SELECT * FROM voto WHERE id_studente=:id';
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
                'id' => $id
            ]
        );

        $rows = $stmt->fetchAll();
        return $rows;
    }


}