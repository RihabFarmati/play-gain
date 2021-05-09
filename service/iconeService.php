<?php
include_once 'classe/icone.php';
include_once 'connexion/connexion.php';

class IconeService  {

    private $connexion;

    function __construct() {
        $this->connexion = new Connexion();
    }

    public function findAll() {
        $query = "select label,question,point from Icones";
        $req = $this->connexion->getConnexion()->query($query);
        $f = $req->fetchAll(PDO::FETCH_OBJ);
        return $f;
    }
}