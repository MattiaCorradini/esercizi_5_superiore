<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Operazioni su insiemi</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1 style="text-align: center">Operazione di accumulazione</h1>
<form action="" method="post">
    <div>
        <label class="form-label" for="valori">Valori (separati da virgole)</label>
        <input id="valori" class="input" type="text" name="valori" value="<?php echo isset($_POST['valori']) ? htmlspecialchars($_POST['valori'], ENT_QUOTES) : ''; ?>">
    </div>

    <div>
        <label class="form-label" for="operazioni">Operazioni sulla sequenza</label>
        <select id="operazioni" class="select" name="operazioni">
            <option value="radq">Radice quadrata (√n)</option>
            <option value="quad">Quadrato (n²)</option>
            <option value="cubo">Cubo (n³)</option>
        </select>
    </div>

    <div>
        <input type="checkbox" id="pari" name="pari" value="pari">
        <label class="form-checkbox" for="pari">Pari</label>
    </div>
    <div>
        <input type="checkbox" id="dispari" name="dispari" value="dispari">
        <label class="form-checkbox" for="dispari">Dispari</label>
    </div><br>

    <button type="submit" name="calcola">Calcola</button>
    <p>Il risultato è <?=$risultato?></p>
</form>


</body>
</html>
