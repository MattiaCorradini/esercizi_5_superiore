<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Resistenze</title>
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-exp.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css">
</head>
<body>
<br><h1 style="text-align: center">Resistor Color Code 4 Band</h1>
<div class="columns">
    <div class="column col-6">
        <img src="Resistor_4_band_Table.png" width="740px" height=auto style="margin-left: 15px">
    </div>
    <div class="column col-6">
        <form method="POST" style="margin-right: 15px">
            <div class="form-group">
                <select name="primaBanda" class="form-select">
                    <option>Select a color</option>
                    <?php foreach ($colore as $c): ?>
                    <option style="color: <?=$c?>" <?php if ($_POST['primaBanda'] == $c) echo 'selected'; ?>><?=$c?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <select name="secondaBanda" class="form-select">
                    <option>Select a color</option>
                    <?php foreach ($colore as $c): ?>
                    <option style="color: <?=$c?>" <?php if ($_POST['secondaBanda'] == $c) echo 'selected'; ?>><?=$c?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <select name="terzaBanda" class="form-select">
                    <option>Select a color</option>
                    <?php foreach ($moltiplicatore as $m): ?>
                    <option style="color: <?=$m?>" <?php if ($_POST['terzaBanda'] == $m) echo 'selected'; ?>><?=$m?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <select name="quartaBanda" id="quartaBanda" class="form-select">
                    <option>Select a color</option>
                    <?php foreach ($tolleranza as $t): ?>
                    <option style="color: <?=$t?>" <?php if ($_POST['quartaBanda'] == $t) echo 'selected'; ?>><?=$t?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <br>
            <button type="submit" class="btn btn-primary">Calculate</button>
        </form>
        <br>
        <h3><?=$risultato?></h3>
    </div>
</div>
</body>
</html>
