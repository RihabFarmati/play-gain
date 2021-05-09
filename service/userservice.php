<?php
include_once 'classe/user.php';
include_once 'connexion/connexion.php';

class userService  {

    private $connexion;

    function __construct() {
        $this->connexion = new Connexion();
    }
    public function create($o) {
        $query = "INSERT INTO `clients`(`nom`, `prenom`,`email`, `password`,`nais`,`sexe`,`date`,`solde`,`chance`) "
                . "VALUES (?,?,?,?,?,?,CURDATE()-1,0,3)";
        $req = $this->connexion->getConnexion()->prepare($query);
        $req->execute(array($o->getNom(),$o->getPrenom(),$o->getEmail(),$o->getPassword(),$o->getNais(),$o->getSexe())) or die('Error');
    }
    public function update($solde) {
        if(session_status() != PHP_SESSION_ACTIVE) {
            session_start();
            }
        $query = "UPDATE `clients` SET solde=solde+$solde, date=CURDATE()+1 where email='" . $_SESSION['email'] . "'";
        $req = $this->connexion->getConnexion()->prepare($query);
        $req->execute() or die('Error');

    }
    public function updatesolde($p) {
        if(session_status() != PHP_SESSION_ACTIVE) {
            session_start();
            }
        $query = "UPDATE `clients` SET solde=solde+$p where email='" . $_SESSION['email'] . "'";
        $req = $this->connexion->getConnexion()->prepare($query);
        $req->execute() or die('Error');

    }
    public function delete($id) {
        $query = "DELETE FROM clients WHERE id = ?";
        $req = $this->connexion->getConnexion()->prepare($query);
        $req->execute(array($id)) or die("erreur delete");
    }
    public function find() {
        if(session_status() != PHP_SESSION_ACTIVE) {
            session_start();
            }
        $query = "select * from clients where id='" . $_SESSION['id'] . "'";
        $req = $this->connexion->getConnexion()->query($query);
        $f = $req->fetchAll(PDO::FETCH_OBJ);
        return $f;
    }
    public function findById($id) {
        $query = "select id,nom,prenom,email,password,nais,sexe,solde,date,chance from clients where id =?";
        $req = $this->connexion->getConnexion()->prepare($query);
        $req->execute(array($id));
        $res = $req->fetch(PDO::FETCH_OBJ);
        $user = new User($res->id, $res->nom, $res->prenom, $res->email, $res->password,$res->nais,$res->sexe, $res->solde,$res->date,$res->chance);
        return $user;
    }

     public function findByEmail($email) {
        $query = "select id,nom,prenom,email,password,nais,sexe,solde,date,chance from clients where email =?";
        $req = $this->connexion->getConnexion()->prepare($query);
        $req->execute(array($email));
        $s = $req->fetchAll(PDO::FETCH_OBJ);
        if (count($s) != 0) {
            foreach ($s as $res) {
                $id = $res->id;
        }
            return $id;
        } else
            return -1;
    }
    public function modifier($nom,$prenom,$email,$psw,$nais) {
        if(session_status() != PHP_SESSION_ACTIVE) {
            session_start();
            }
        $query = "UPDATE clients SET  nom='".$nom."',prenom='".$prenom."',email='".$email."',password='".$psw."',nais='".$nais."' where  id='" . $_SESSION['id'] . "'";
        $req = $this->connexion->getConnexion()->prepare($query);
        $req->execute() or die('Error');
    }

}
