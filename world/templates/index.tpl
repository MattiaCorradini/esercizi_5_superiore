<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>World</title>
    <link rel="stylesheet" href="styles/home.css">
</head>
<body>
<h1>QUERY SUL DATABASE WORLD</h1>
<h3>Seleziona una delle seguenti domande e interroga il database world per scoprirne la risposta</h3>
<form action="index.php" method="post">
    <select name="query" id="">
        <option>Seleziona una domanda</option>
        <option value="1">Quante città ci sono per ogni stato?</option>
        <option value="2">Quante persone parlano inglese in ogni continente?</option>
        <option value="3">Qual è lo stato con più persone che parlano inglese e in quanti lo parlano?</option>
        <option value="4">Qual è lo stato con il GNP più basso?</option>
        <option value="5">Quanti stati ci sono per ogni continente?</option>
        <option value="6">Qual è il paese con il maggior numero di abitanti?</option>
        <option value="7">Qual è lo stato più antico?</option>
        <option value="8">Qual è lo stato asiatico con il reddito pro capite più alto?</option>
        <option value="9">Qual è la media degli abitanti delle città tedesche?</option>
        <option value="10">Quante città ci sono in ogni stato e, mediamente, quanta è la popolazione?</option>
    </select>
    <input type="submit" value="Interroga il DB">
</form>
</body>
</html>