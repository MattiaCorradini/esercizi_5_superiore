<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Biglietti Bus</title>
    <link rel="stylesheet" href="styles/biglietti.css">
</head>
<body>
<h1>Biglietti acquistati!</h1>
<p>Il costo totale dei biglietti è <?=$costo_totale?> €</p> <br>
<?php foreach ($tickets as $ticket):?>
<div>
    <img src="img/logo.png" alt="">
    <h1>Nome: <strong><?=$ticket['nome']?></strong></h1><br>
    <p>Data: <strong><?=$ticket['data']?></strong></p><br>
    <p>Costo: <strong><?=$ticket['costo']?>€</strong></p><br>
    <p>Codice: <strong><?=$ticket['codice']?></strong></p><br>
    <p>Zona: <strong><?=$ticket['zona']?></strong></p><br>
    <p>Tipo: <strong><?=$ticket['tipo']?></strong></p>
</div>
<?php endforeach;?>
<hr>
<a href="index.php">Acquista altri biglietti</a>
</body>
</html>
