<?php

require 'vendor/autoload.php';
require_once 'conf/config.php';
$template = new League\Plates\Engine('templates', 'tpl');

if (isset($_POST['query'])) {
    switch ($_POST['query']) {
        case 1:
            $n = \Model\WorldRepository::cityNumber();
            echo $template->render('numeroCitta', ['n' => $n]);
            break;
        case 2:
            $i = \Model\WorldRepository::english();
            echo $template->render('inglese', ['i' => $i]);
            break;
        case 3:
            $ing_max = \Model\WorldRepository::max();
            echo $template->render('max_ing', ['max' => $ing_max]);
            break;
        default:
            echo $template->render('index', []);
            break;
    }
} else {
    echo $template->render('index', []);
}