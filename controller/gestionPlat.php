<?php

chdir('..');
include_once 'service/PlatService.php';
extract($_POST);

$ds = new PlatService();

header('Content-type: application/json');
    echo json_encode($ds->findAll());



