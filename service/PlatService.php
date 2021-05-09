<?php
include_once 'classe/plat.php';
include_once 'connexion/connexion.php';

class PlatService  {

    private $connexion;

    function __construct() {
        $this->connexion = new Connexion();
    }
    public function findById($id) {
        $query = "select * from plat where id =?";
        $req = $this->connexion->getConnexion()->prepare($query);
        $req->execute(array($id));  
        $res=$req->fetch(PDO::FETCH_OBJ);
        $fonction = new user($res->id,$res->titre, $res->points, $res->reduction, $res->description,$res->image);
        return $fonction;
    }
    public function findAll() {
        $query = "select * from Plats";
        $req = $this->connexion->getConnexion()->query($query);
        $f = $req->fetchAll(PDO::FETCH_OBJ);
        return $f;
    }
}
