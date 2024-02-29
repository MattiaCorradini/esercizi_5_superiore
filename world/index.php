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
        case 4:
            $GNP = \Model\WorldRepository::GNP();
            echo $template->render('gnp', ['GNP' => $GNP]);
            break;
        case 5:
            $numStati = \Model\WorldRepository::NumStati();
            echo $template->render('numStati', ['numStati' => $numStati]);
            break;
        case 6:
            $maxpop = \Model\WorldRepository::MaxPop();
            echo $template->render('maxPop', ['maxpop' => $maxpop]);
            break;
        case 7:
            $oldest = \Model\WorldRepository::oldest();
            echo $template->render('oldest', ['oldest' => $oldest]);
            break;
        case 8:
            $asian = \Model\WorldRepository::asian();
            echo $template->render('asian', ['asian' => $asian]);
            break;
        case 9:
            $ger = \Model\WorldRepository::ger();
            echo $template->render('ger', ['ger' => $ger]);
            break;
        case 10:
            $list = \Model\WorldRepository::list();
            echo $template->render('list', ['list' => $list]);
            break;
        default:
            echo $template->render('index', []);
            break;
    }
} else {
    echo $template->render('index', []);
}