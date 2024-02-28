<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Persone che parlano inglese in ogni continente</title>
    <link rel="stylesheet" href="styles/tables.css">
</head>
<body>
<div>
    <h1>Numero di persone che parlano inglese in ogni continente</h1>
    <pre>
        <h2>Ecco la query che mi ha permesso di farlo:</h2>
        <code>
            SELECT country.Continent AS Continente, FLOOR(SUM(country.Population * countrylanguage.Percentage / 100))<br>
            FROM country<br>
            INNER JOIN countrylanguage ON countrylanguage.CountryCode = country.Code<br>
            WHERE countrylanguage.Language = "English"<br>
            GROUP BY country.Continent<br>
            ORDER BY Parlanti DESC;<br>
        </code>
    </pre>
    <a href="index.php">Fai un'altra domanda</a>
</div>
<table>
    <thead>
    <tr>
        <th>Continente</th>
        <th>Parlanti</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($i as $c): ?>
    <tr>
        <td><?= $c['Continente'] ?></td>
        <td><?= $c['Parlanti'] ?></td>
    </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</body>
</html>