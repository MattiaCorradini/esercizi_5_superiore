<?php

require 'vendor/autoload.php';
$templates = new League\Plates\Engine('templates', 'tpl');

function produci_codice():string {
    $codice = '';
    for ($i = 0; $i < 18; $i++) {
        $codice .= rand()%10;
    }
    return $codice;
}

$tipi = [
    1 => 1,
    2 => 1.5,
    3 => 2
];

$nome_tipi = [
    1 => 'Biglietto singolo',
    2 => 'Biglietto orario',
    3 => 'Biglietto giornaliero'
];

$zone = [
    1 => 1.4,
    2 => 1.8,
    3 => 2.2
];

if (isset($_POST['nome'])){
    $nome = $_POST['nome'];
    $zona = $_POST['zona'] ?? '';
    $tipo = $_POST['tipo'] ?? '';
    $numero = $_POST['numero'] ?? '';

    $tipo_biglietto = $nome_tipi[$tipo];
    $costo_biglietto = $zone[$zona] * $tipi[$tipo];

    $tickets = array();
    for ($i = 0; $i < $numero; $i++){
        $ticket['nome'] = $nome;
        $ticket['data'] = date("d-m-Y H:i:s");
        $ticket['costo'] = $costo_biglietto;
        $ticket['codice'] = produci_codice();
        $ticket['zona'] = $zona;
        $ticket['tipo'] = $tipo_biglietto;
        $tickets[] = $ticket;
    }

    $costo_totale = $costo_biglietto * $numero;

    echo $templates->render('biglietti', [
        'tickets' => $tickets,
        'costo_totale' => $costo_totale
    ]);
} else
    echo $templates->render('form');
