<?php

chdir('..');
include_once 'service/Iconeservice.php';
extract($_POST);

$ds = new IconeService();

header('Content-type: application/json');
    echo json_encode($ds->findAll());




