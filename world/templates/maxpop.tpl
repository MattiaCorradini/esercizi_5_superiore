<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Paese con il maggior numero di abitanti</title>
    <link rel="stylesheet" href="styles/tables.css">
</head>
<body>
<div>
    <h1>Paese con il maggior numero di abitanti</h1>
    <pre>
        <h2>Ecco la query che mi ha permesso di farlo:</h2>
        <code>
            SELECT country.Name, country.Population <br>
            FROM country <br>
            WHERE country.Population = (SELECT MAX(country.Population) FROM country); <br>
        </code>
        <h2>Anche se avrei ottenuto lo stezso risultato con questa:</h2>
        <code>
            SELECT country.Name, country.Population AS M <br>
            FROM country <br>
            ORDER BY M DESC <br>
            LIMIT 0,1; <br>
        </code>
    </pre>
    <a href="index.php">Fai un'altra domanda</a>
</div>
<table>
    <thead>
    <tr>
        <th>Paese</th>
        <th>Numero abitanti</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($maxpop as $c): ?>
    <tr>
        <td><?= $c['Name'] ?></td>
        <td><?= $c['Population'] ?></td>
    </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</body>
</html>