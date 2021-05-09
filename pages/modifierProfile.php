<link rel="stylesheet" type="text/css" href="node_modules/sweetalert2/dist/sweetalert2.css">
    <script src="node_modules/sweetalert2/dist/sweetalert2.all.min.js"></script>
<link rel="stylesheet"  href="css/profile.css"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="script/modifierProfile.js"></script>
<form>
<div class="col-md-12">
              <div class="card mb-12">
                <div class="card-body">

            <div class="form-group">
<label class="mb-0">Nom : </label>
<input class="form-control item" id="nom" name="nom" value=<?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT nom as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?> >
</div>
<div class="form-group">
<label class="mb-0">Prénom : </label>
<input class="form-control item" id="prenom" name="prenom" value=<?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT prenom as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?> >
</div>
<div class="form-group">
<label type="email" class="mb-0">Email : </label>
<input class="form-control item" id="email" name="email" value=<?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT email as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?> >
</div>
<div class="form-group">
<label type="email" class="mb-0">Date De Naissance : </label>
<input type="date" class="form-control item" id="nais" name="nais" value=<?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT nais as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?> >
</div>
<div class="form-group">
<label class="mb-0">Mot De Passe : </label>
<input type="password" class="form-control item" id="psw" name="psw" value=<?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT password as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?> >
</div>
<button id="modifier" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">modifier</button>
</div></div></div></div></div>
</form>