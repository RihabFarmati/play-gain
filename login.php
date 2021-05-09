<?php
session_start();
$message = "";
if (isset($_POST['btn_submit'])) {
    if ($_POST['email'] != '' && $_POST['password'] != '') {
        include_once 'classe/User.php';
        include_once 'service/UserService.php';
        $es = new userService();
        $id = $es->findByEmail($_POST['email']);
        $em = $es->findById($id);
        if ( $em->getPassword()== $_POST['password']) {
            $_SESSION['id'] = $em->getId();
            $_SESSION['nom'] = $em->getNom();
            $_SESSION['prenom']=$em->getPrenom();
            $_SESSION['solde'] = $em->getSolde();
            $_SESSION['email'] = $em->getEmail();
            $_SESSION['psw'] = $em->getPassword();
            header('Location:./index.php?accueil');
        }
        else{
           // echo $_SESSION['email'];
          header('Location:./login.php?error=invalid');
        }
    } else {
        header('Location:./login.php?error=vide');
    }
}

?>
<!DOCTYPE html>
<html lang="en">

    <head>
       
<link rel="stylesheet" href="css/logiin.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="script/jquery.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="node_modules/sweetalert2/dist/sweetalert2.all.min.js"></script>
<link
rel="stylesheet"
href="vendors/ti-icons/css/themify-icons.css"
/>
<link rel="stylesheet" href="vendors/base/vendor.bundle.base.css" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Title Page-->
        <title>Gamification- Login</title>


    </head>

    <body>
                            <div class="login-form">
                              <?php
                                if(isset($_GET['error'])){
                                    if($_GET['error']=="invalid")
                                        echo '<div class="alert alert-danger" role="alert">Mote de passe ou Email incorrect!</div>';
                                    if($_GET['error']=="vide")
                                        echo '<div class="alert alert-danger" role="alert">Quelque champ est vide</div>';
                                }if(isset($_GET['success'])){
                                    if($_GET['success']=="verifyok")
                                        echo '<div class="alert alert-success" role="alert">Votre mot de passe est changé avec succés</div>';
                                }
                               ?></div>
                                  <div class="registration-form">
                                <form action="" method="POST" id="checkLogin" >
                                <div class="d-flex flex-column align-items-center text-center">
        <img src="logo.png  " alt="logo" class="rounded-circle" width="200">
</div>
<br>   <br>   <br>
            <div class="form-group">
                                        
                                        <input class="form-control item" type="email" id="email" name="email" placeholder="Email">
                                    </div>
                                    <br>
                                    <br>
                                    <div class="form-group">
                                        <input class="form-control item" type="password" id="password" name="password" placeholder="Password">
                                    </div>
                                        <!--
                                    <div class="login-checkbox float-right">
                                        <label>
                                            <a  class="text-primary" href="./forget.php">Mot de passe oublié?</a>
                                        </label>
                                    </div>
                                    -->   <br>   <br>
                                    <button id="connect" name="btn_submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" type="submit">Connexion</button>
                        
   
       </body>

</html>
<!-- end document-->
