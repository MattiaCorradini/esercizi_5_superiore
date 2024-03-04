<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Numero delle città in ogni stato</title>
    <link rel="stylesheet" href="styles/tables.css">
</head>
<body>
<div>
    <h1>Numero di città per ogni stato</h1>
    <pre>
        <h2>Ecco la query che mi ha permesso di farlo:</h2>
        <code>
            SELECT country.Name, COUNT(*) as Citta<br>
            FROM country<br>
            INNER JOIN city ON city.CountryCode = country.Code<br>
            GROUP BY country.Code<br>
            HAVING Citta >= 10<br>
            ORDER BY Citta DESC;<br>
        </code>
    </pre>
    <a href="index.php">Fai un'altra domanda</a>
</div>
<table>
    <thead>
    <tr>
        <th>Stato</th>
        <th>Numero città</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($n as $c): ?>
    <tr>
        <td><?= $c['Name'] ?></td>
        <td><?= $c['Citta'] ?></td>
    </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</body>
</html>