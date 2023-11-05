<?php

require 'vendor/autoload.php';
$templates = new League\Plates\Engine('templates', 'tpl');

$ris = [];
if (isset($_POST['valori'])) {
    $valori = $_POST['valori'];
    $insieme = explode(',', $valori);
    $operazione = isset($_POST['operazioni']) ? $_POST['operazioni'] : '';
    $applicaPari = isset($_POST['pari']);
    $applicaDispari = isset($_POST['dispari']);
    $i = 0;

    foreach ($insieme as $numero) {
        $numero = trim($numero);
        if ($applicaPari && $applicaDispari) {
            $ris[$i] = applicaOperazione($numero, $operazione);
        } elseif ($applicaPari && $numero % 2 === 0) {
            $ris[$i] = applicaOperazione($numero, $operazione);
        } elseif ($applicaDispari && $numero % 2 !== 0) {
            $ris[$i] = applicaOperazione($numero, $operazione);
        } else {
            $ris[$i] = $numero;
        }
        $i++;
    }
}

function applicaOperazione($numero, $operazione) {
    switch ($operazione) {
        case 'radq':
            return sqrt($numero);
        case 'quad':
            return pow($numero, 2);
        case 'cubo':
            return pow($numero, 3);
        default:
            return $numero;
    }
}

echo $templates->render('insiemi', [
    'risultato' => implode(', ', $ris)
]);