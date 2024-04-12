<?php

    require 'vendor/autoload.php';
    $templates = new League\Plates\Engine('templates', 'tpl');
    echo $templates -> render('index');

    session_start();
    if (isset($_SESSION['name'])){
        echo 'hi ' . $_SESSION['name'];
    } else {
        $name = $_GET['name'];
        $_SESSION['name'] = $name;
    }

