<?php
/**
 * Questo commento serve solo a eliminare l'indicazione di errore
 * da parte di PHPStorm per la variabile $studenti
 * @var $todos
 * @var $testo
 * @var $id
 * @var $importanza
 * @var $displayed_name
 */
?>

<style>
    .boh{
        border: 3px black solid;
        height: 40px;
        width: 90%;
        margin: 0 auto;
    }
</style>

<?php $this->layout('home', ['titolo' => 'Esempio autenticazione']) ?>

<header class="navbar">
    <section class="navbar-section">

    </section>

    <section class="navbar-section">
        <span class="label label-rounded label-primary m-2">
            Hello <?=$displayed_name?>
        </span>
        <button class="btn btn-action tooltip tooltip-bottom" data-tooltip="Logout">
            <a href="index.php?action=logout">
                <i class="icon icon-share"></i>
            </a>
        </button>
    </section>
</header>

<h1>Sei loggato</h1>




<a href="index.php?action=valutazioni">Vai alle valutazioni</a>