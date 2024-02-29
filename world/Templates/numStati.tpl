<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Numero degli stati per ogni continente</title>
    <link rel="stylesheet" href="styles/tables.css">
</head>
<body>
<div>
    <h1>Numero degli stati per ogni continente</h1>
    <pre>
        <h2>Ecco la query che mi ha permesso di farlo:</h2>
        <code>
            SELECT country.Continent, COUNT(country.Name) AS NumeroStati <br>
            From country <br>
            GROUP BY country.Continent <br>
            ORDER BY NumeroStati DESC; <br>
        </code>
    </pre>
    <a href="index.php">Fai un'altra domanda</a>
</div>
<table>
    <thead>
    <tr>
        <th>Continente</th>
        <th>Stati</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($numStati as $c): ?>
    <tr>
        <td><?= $c['Continent'] ?></td>
        <td><?= $c['NumeroStati'] ?></td>
    </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</body>
</html>