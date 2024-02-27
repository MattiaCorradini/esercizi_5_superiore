<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Form biglietti</title>
    <link rel="stylesheet" href="styles/form.css">
</head>
<body>
<form action="" method="post">
    <label for="nome">Inserisci il cognome e nome dell'acquirente:</label>
    <input type="text" name="nome" id="nome"><br>

    <div class="select-group">
        <label for="zona">Zona:</label>
        <select name="zona" id="zona">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select>
    </div>

    <p>Seleziona il tipo di biglietto che vuoi acquistare:</p>
    <div class="radio-group">
        <input type="radio" name="tipo" id="semplice" value="1">
        <label for="semplice">Corsa semplice</label><br>

        <input type="radio" name="tipo" id="orario" value="2">
        <label for="orario">Biglietto orario</label><br>

        <input type="radio" name="tipo" id="giornaliero" value="3">
        <label for="giornaliero">Biglietto giornaliero</label><br>
    </div><br>

    <div class="select-group">
        <label for="numero">Numero biglietti:</label>
        <select name="numero" id="numero">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>
    </div>

    <button type="submit" name="acquista">Acquista</button>
</form>
</body>
</html>
