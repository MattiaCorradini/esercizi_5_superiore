<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Stato asiatico con il reddito pro capite più alto</title>
    <link rel="stylesheet" href="styles/tables.css">
</head>
<body>
<div>
    <h1>Stato asiatico con il reddito pro capite più alto</h1>
    <pre>
        <h2>Ecco la query che mi ha permesso di farlo:</h2>
        <code>
            SELECT Name , GNP/Population*1000000 AS GNP <br>
            FROM country <br>
            WHERE Continent = "Asia" <br>
            AND GNP/Population = (SELECT MAX(GNP/Population) <br>
                                  FROM country  <br>
                                  WHERE Continent = "Asia"); <br>
        </code>
    </pre>
    <a href="index.php">Fai un'altra domanda</a>
    <table>
        <thead>
        <tr>
            <th>Stato</th>
            <th>Reddito pro capite</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($asian as $c): ?>
        <tr>
            <td><?= $c['Name'] ?></td>
            <td><?= $c['GNP'] ?> $</td>
        </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>
</body>
</html>