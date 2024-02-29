<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Paese più antico</title>
    <link rel="stylesheet" href="styles/tables.css">
</head>
<body>
<div>
    <h1>Paese più antico</h1>
    <pre>
        <h2>Ecco la query che mi ha permesso di farlo:</h2>
        <code>
            SELECT country.Name, country.IndepYear <br>
            FROM country <br>
            WHERE country.IndepYear = (SELECT MIN(country.IndepYear) FROM country); <br>
        </code>
    </pre>
    <a href="index.php">Fai un'altra domanda</a>
</div>
<table>
    <thead>
    <tr>
        <th>Paese</th>
        <th>Anno di "nascita"</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($oldest as $c): ?>
    <tr>
        <td><?= $c['Name'] ?></td>
        <td><?= $c['IndepYear'] ?></td>
    </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</body>
</html>