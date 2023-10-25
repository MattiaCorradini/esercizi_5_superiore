<?php

require 'vendor/autoload.php';
$templates = new League\Plates\Engine('templates', 'tpl');

$a = null;
$b = null;
$c = null;
$d = null;

if (isset($_POST['a'])) {
    $a = $_POST['a'];
    $b = $_POST['b'];
    if (isset($_POST['addizione'])){
        $c = $a + $b;
        $d = 'addizione';
    }elseif (isset($_POST['sottrazione'])){
        $c = $a - $b;
        $d = 'sottrazione';
    }elseif (isset($_POST['moltiplicazione'])){
        $c = $a * $b;
        $d = 'moltiplicazione';
    }elseif (isset($_POST['divisione'])){
        $c = $a / $b;
        $d = 'divisione';
    }
}


echo $templates -> render('moltiplicazione', [
    'risultato' => $c,
    'operazione' => $d
]);

?>