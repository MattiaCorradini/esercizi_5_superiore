<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Esempio CRUD</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
<div class="container">
    <h1>Esempio CRUD</h1>

    <div>
        <h2>Inserimento nuovo studente</h2>
        <form action="index.php" method="post">
            <input type="text" name="nome" placeholder="Nome" required><br>
            <input type="text" name="cognome" placeholder="Cognome" required><br>
            <select name="id_classe" required>
                <option disabled selected value="">Classe</option>
                <?php foreach ($classi as $classe): ?>
                <option value="<?= $classe['id'] ?>"><?= $classe['sezione'] ?></option>
                <?php endforeach ?>
            </select>
            <input type="submit" value="Inserisci un nuovo studente" class="btn btn-primary">
        </form>
    </div>

    <div>
        <h2>Inserimento classe</h2>
        <form action="index.php" method="post">
            <input type="text" name="sezione" placeholder="Classe" required><br>
            <input type="submit" value="Inserisci una nuova classe" class="btn btn-primary">
        </form>
    </div>

    <hr>

    <h1>Elenco studenti</h1>
    <table class="table">
        <tr class="highlight">
            <th>Nome</th>
            <th>Cognome</th>
            <th>Classe</th>
            <th>Modifica</th>
            <th>Elimina</th>
        </tr>
        <?php foreach ($studenti as $s): ?>
        <?php if (isset($studente['id']) && $s['id'] == $studente['id']): ?>
        <form action="index.php" method="post">
            <tr>
                <td><input type="text" name="nome" value="<?= $studente['nome'] ?>"></td>
                <td><input type="text" name="cognome" value="<?= $studente['cognome'] ?>"></td>
                <td>
                    <select name="id_classe" id="">
                        <?php foreach ($classi as $classe): ?>
                        <option value="<?= $classe['id'] ?>"><?= $classe['sezione'] ?></option>
                        <?php endforeach ?>
                    </select>
                </td>
                <input type="hidden" name="id" value="<?= $studente['id'] ?>">
                <td><button type="submit"><i class="fas fa-edit"></i> Modifica</button></td>
            </tr>
        </form>
        <?php else: ?>
        <tr>
            <td><?= $s['nome'] ?></td>
            <td><?= $s['cognome'] ?></td>
            <td><?= $s['sezione'] ?></td>
            <td><a href="index.php?action=update&id=<?= $s['id'] ?>"><i class="fas fa-edit"></i> Modifica</a></td>
            <td><a href="index.php?action=delete&id=<?= $s['id'] ?>"><i class="fas fa-trash-alt"></i> Elimina</a></td>
        </tr>
        <?php endif ?>
        <?php endforeach ?>
    </table>
</div>
</body>
</html>
