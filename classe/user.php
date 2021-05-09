<?php

class User {
    private $id;
    private $email;
    private $nom;
    private $prenom;
    private $password;
    private $nais;
    private $sexe;
	private $solde;
    private $date;
    private $chance;
    

    function __construct($id,$nom,$prenom,$email,$password,$nais,$sexe,$solde,$date,$chance) {
        $this->id =$id;
        $this->nom =$nom;
         $this->prenom =$prenom;
        $this->email =$email;
         $this->password =$password;
         $this->nais=$nais;
         $this->sexe=$sexe;
		 $this->solde=$solde;
        $this->date=$date;
         $this->chance=$chance;
    }
     function getId() {
        return $this->id;
    }
    function getNais() {
        return $this->nais;
    }
    function getSexe() {
        return $this->sexe;
    }
    function getNom() {
        return $this->nom;
    }
    function getPrenom  () {
        return $this->prenom;
    }
    function getEmail() {
        return $this->email;
    }
       function getPassword() {
        return $this->password;
    }
    function getDate() {
        return $this->date;
    }
    function getChance() {
        return $this->chance;
    }
	  function getSolde() {
        return $this->solde;
    }
   
    function setEmail($email) {
        $this->email=$email;
    }
    function setNais($nais) {
        $this->nais=$nais;
    }
    function setSexe($sexe) {
        $this->sexe=$sexe;
    }
    function setId($id) {
        $this->id=$id;
    }
     function setPassword($password) {
        $this->password=$password;
    }
    function setNom($nom) {
        $this->nom=$nom;
    }
     function setPrenom($prenom) {
        $this->prenom=$prenom;
    }
    function setChance($chance) {
        $this->chance=$chance;
    }
    function setDate($date) {
        $this->date=$date;
    }
	  function setSolde($solde) {
        $this->solde = $solde;
    }  
}
