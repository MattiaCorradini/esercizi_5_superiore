<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Stato con il GNP più basso</title>
    <link rel="stylesheet" href="styles/tables.css">
</head>
<body>
<div>
    <h1>Stato con il GNP più basso</h1>
    <pre>
        <h2>Ecco la query che mi ha permesso di farlo:</h2>
        <code>
            SELECT country.Name, country.GNP/country.Population AS GNP <br>
            FROM country <br>
            WHERE country.GNP/country.Population = (SELECT MIN(country.GNP/country.Population) <br>
                                                    FROM country <br>
                                                    WHERE country.GNP > 0);
        </code>
    </pre>
    <a href="index.php">Fai un'altra domanda</a>

    <table>
        <thead>
        <tr>
            <th>Paese</th>
            <th>Reddito</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($GNP as $c): ?>
        <tr>
            <td><?= $c['Name'] ?></td>
            <td><?= number_format($c['GNP'], 6, '.', '') ?></td>
        </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>
</body>
</html>