<?php
if(session_status() != PHP_SESSION_ACTIVE) {
    session_start();
    }
  if(isset($_SESSION['id'])){

 ?>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"  href="css/profile.css"/>

<div class="container">
    <div class="main-body">
          <!-- /Breadcrumb -->
    
          <div class="row gutters-sm">
            <div class="col-md-6 mb-6">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="logo.png  " alt="logo" class="rounded-circle" width="150">
                                     <div class="mt-3">
                      <h4>  <?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT concat(nom,' ',prenom) as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?></h4>
                    </div>
                  </div>
                </div>
              </div>
             
              </div>
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0" id="test">NOM : </h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="nom" >
                    <?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT nom as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Prénom : </h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="prenom">
                    <?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT prenom as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?>
                                    
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email : </h6>
                    </div>
                    <div id="email" class="col-sm-9 text-secondary">
                    <?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT email as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Date De Naissance : </h6>
                    </div>
                    <div id="email" class="col-sm-9 text-secondary">
                    <?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT nais as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Sexe : </h6>
                    </div>
                    <div id="email" class="col-sm-9 text-secondary">
                    <?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT sexe as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Solde</h6>
                    </div>
                    <div id="solde" class="col-sm-9 text-secondary">
                    <?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT solde as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Mot De passe</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="psw" type="Password">
                    <?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT password as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?>
                    </div>
                  </div>
                </div>
              </div>
              
                  </div>
                </div>
       
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <?php

} else {
    header('Location:./login.php');
}
?>