<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Stato con più parlanti inglese</title>
    <link rel="stylesheet" href="styles/one_row.css">
</head>
<body>
<div>
    <h1>Stato con il maggior numero di parlanti inglese</h1>
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