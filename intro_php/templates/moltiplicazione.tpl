<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>

<form action="" method="post">
    <input type="text" name="a" value="<?php echo isset($_POST['a']) ? htmlspecialchars($_POST['a'], ENT_QUOTES) : ''; ?>">
    <input type="text" name="b" value="<?php echo isset($_POST['b']) ? htmlspecialchars($_POST['b'], ENT_QUOTES) : ''; ?>">
    <input type="submit" value="+" name="addizione">
    <input type="submit" value="-" name="sottrazione">
    <input type="submit" value="X" name="moltiplicazione">
    <input type="submit" value="/" name="divisione">
</form>

<p>Il risultato della <?=$operazione?> è <?=$risultato?></p>

</body>
</html>
