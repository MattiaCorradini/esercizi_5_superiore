<?php

require 'vendor/autoload.php';
$templates = new League\Plates\Engine('templates', 'tpl');

function consentiti($stringa, $caratteriPermesso): bool {
    // Calcola la lunghezza del segmento iniziale che contiene solo i caratteri specificati
    $lunghezzaSegmento = strspn($stringa, $caratteriPermesso);
    return $lunghezzaSegmento === strlen($stringa);
}

$hamming = 0;
$caratteriPermessi = "CAGTcagt";

if (isset($_POST['a'])){
    $primo = $_POST['a'];
    $secondo = $_POST['b'];
    if (isset($_POST['calcola'])){
        if (consentiti($primo, $caratteriPermessi) && consentiti($secondo, $caratteriPermessi) && strlen($primo) == strlen($secondo)){
            for ($i = 0; $i < strlen($primo); $i++) {
                if ($primo[$i] != $secondo[$i]){
                    $hamming += 1;
                }
            }
        } else {
            $hamming = 'non calcolabile a causa di un errore nell input';
        }
    }
}

echo $templates -> render('hamming', ['hamming' => $hamming]);