<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Stato con più parlanti inglese</title>
    <link rel="stylesheet" href="styles/tables.css">
</head>
<body>
<div>
    <h1>Stato con il maggior numero di parlanti inglese</h1>
    <pre>
        <h2>Ecco la query che mi ha permesso di farlo:</h2>
        <code>
            SELECT country.Name AS Stato, FLOOR(country.Population * countrylanguage.Percentage / 100) AS Persone<br>
            FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode<br>
            WHERE countrylanguage.Language = "English"<br>
            AND country.Population * countrylanguage.Percentage =<br>
            (SELECT MAX(country.Population * countrylanguage.Percentage)<br>
             FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode<br>
             WHERE countrylanguage.Language = "English");
        </code>
    </pre>
    <a href="index.php">Fai un'altra domanda</a>
    <table>
        <thead>
        <tr>
            <th>Stato</th>
            <th>Persone</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($max as $c): ?>
        <tr>
            <td><?= $c['Stato'] ?></td>
            <td><?= $c['Persone'] ?></td>
        </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>
</body>
</html>