<?php

chdir('..');
include_once 'service/Userservice.php';
extract($_POST);

$ds = new UserService();

if ($op != '') {
    if ($op == 'add') {
        $ds->create(new User(0, $nom, $prenom,$email,$psw,$nais,$sexe,0,0,0));
    }
    elseif ($op == 'find') {
        header('Content-type: application/json');
        echo json_encode($ds->find());
    }
    elseif ($op == 'update') {
        $ds->update($solde);
    }
    elseif ($op == 'increment') {
        $ds->incremenet();
    }
    elseif ($op == 'mo') {
        $ds->modifier($nom,$prenom,$email,$psw,$nais);
    }
    elseif ($op == 'updatesolde') {
        $ds->updatesolde($p);
    }

}





