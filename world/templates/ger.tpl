<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Media degli abitanti delle città tedesche</title>
    <link rel="stylesheet" href="styles/tables.css">
</head>
<body>
<div>
    <h1>Media degli abitanti delle città tedesche</h1>
    <pre>
        <h2>Ecco la query che mi ha permesso di farlo:</h2>
        <code>
            SELECT AVG(city.Population) AS media <br>
            FROM country <br>
            INNER JOIN city ON country.Code = city.CountryCode <br>
            WHERE country.Name = 'Germany'; <br>
        </code>
    </pre>
    <a href="index.php">Fai un'altra domanda</a>
</div>
<table>
    <thead>
    <tr>
        <th>Media</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($ger as $c): ?>
    <tr>
        <td><?= number_format($c['media'], 0, '', '') ?></td>
    </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</body>
</html>