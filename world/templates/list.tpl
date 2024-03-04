<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lista di tutte le nazioni con il numero di città e la popolazione media delle città</title>
    <link rel="stylesheet" href="styles/tables.css">
</head>
<body>
<div>
    <h1>Lista di tutte le nazioni con il numero di città e la popolazione media delle città</h1>
    <pre>
        <h2>Ecco la query che mi ha permesso di farlo:</h2>
        <code>
            SELECT country.Name, COUNT(*), AVG(city.Population) <br>
            FROM country <br>
            INNER JOIN city ON country.Code = city.CountryCode <br>
            GROUP BY country.Name; <br>
        </code>
    </pre>
    <a href="index.php">Fai un'altra domanda</a>
</div>
<table>
    <thead>
    <tr>
        <th>Stato</th>
        <th>Numero città</th>
        <th>Popolazione media</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($list as $c): ?>
    <tr>
        <td><?= $c['Name'] ?></td>
        <td><?= $c['c'] ?></td>
        <td><?= number_format($c['d'], 0, '', '') ?></td>
    </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</body>
</html>