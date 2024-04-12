<?php

    require 'vendor/autoload.php';
    $templates = new League\Plates\Engine('templates', 'tpl');


    echo $templates -> render('index', []);

?>