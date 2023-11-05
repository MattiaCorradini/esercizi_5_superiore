<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Distanza di hamming</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1 style="text-align: center">Calcola la distanza di hamming</h1>
<form action="" method="post">
    <input type="text" name="a" value="<?php echo isset($_POST['a']) ? htmlspecialchars($_POST['a'], ENT_QUOTES) : ''; ?>">
    <input type="text" name="b" value="<?php echo isset($_POST['b']) ? htmlspecialchars($_POST['b'], ENT_QUOTES) : ''; ?>">
    <input type="submit" value="calcola" name="calcola">
    <p style="text-align: center">La distanza di hamming è <?=$hamming?></p>
</form>
</body>
</html>