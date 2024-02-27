<?php

require 'vendor/autoload.php';
require_once 'conf/config.php';
$template = new League\Plates\Engine('templates', 'tpl');

$studente['nome'] = '';
$studente['cognome'] = '';

if(isset($_GET['action'])){
    if ($_GET['action'] == 'delete'){
        $id = $_GET['id'];
        \Model\StudenteRepository::remove($id);
    }
    if ($_GET['action'] == 'update'){
        $id = $_GET['id'];
        $studente = \Model\StudenteRepository::getStudenteByID($id);
    }
}

if (isset($_POST['nome'])){
    if (isset($_POST['id'])){
        $id = $_POST['id'];
        $nome = $_POST['nome'];
        $cognome = $_POST['cognome'];
        $id_classe = $_POST['id_classe'];
        \Model\StudenteRepository::update($nome, $cognome, $id_classe, $id);
    }
    else{
        $nome = $_POST['nome'];
        $cognome = $_POST['cognome'];
        $id_classe = $_POST['id_classe'];
        \Model\StudenteRepository::add($nome, $cognome, $id_classe);
    }
}else if (isset($_POST['sezione'])){
    $sezione = $_POST['sezione'];
    \Model\ClasseRepository::add($sezione);
}

$studenti = \Model\StudenteRepository::listAll();
$classi = \Model\ClasseRepository::listAll();

echo $template->render('index', [
    'studenti'=>$studenti,
    'studente'=>$studente,
    'classi'=>$classi
]);