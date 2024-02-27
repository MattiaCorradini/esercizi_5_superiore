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
        <option>-</option>
        <option value="1">Quante città ci sono per ogni stato?</option>
        <option value="2">Quante persone parlano inglese in ogni continente?</option>
        <option value="3">Qual è lo stato con più persone che parlano inglese e in quanti lo parlano?</option>
    </select>
    <input type="submit" value="Interroga il DB">
</form>
</body>
</html>