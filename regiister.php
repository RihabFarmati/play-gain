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
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css 
<link rel="stylesheet" href="css/regiister.css" />
-->
<title>PFA</title>

</head>

<body>
 <!--- <IMG src="C:\wamp64\www\template\RoyalUI-Admin-master\images\roult.gif" alt="Le France" align=right>  -->
 <div class="registration-form">
 <div class="d-flex flex-column align-items-center text-center">
    <h1 class="display-4" id="tit">Inscriez-Vous Pour Tenter vous Chance !!!!</h1>
</div>
        <form>
        <div class="d-flex flex-column align-items-center text-center">
        <img src="logo.png  " alt="logo" class="rounded-circle" width="200">
</div>
            <div class="login-form">
            <div class="form-group">
                <input type="text" class="form-control item" id="nom" placeholder="nom" required="">
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="prenom" placeholder="prenom" required="">
            </div>
            <div class="form-group">
                <input type="email" class="form-control item" id="email" placeholder="email" required="">
            </div>
            <div class="form-group">
                <input type="date" class="form-control item" id="nais" placeholder="Date De Naissance" required="">
            </div>
            <div class="form-group">
            <input type="radio" name="sexe" value="Femme" checked="checked" />
        <label for="feminin">Femme</label>

        <input type="radio" name="sexe" value="Homme" />
           <label for="masculin">Homme</label>
            </div><br>
            <div class="form-group">
                <input type="password" class="form-control item" id="psw" placeholder="Mot De Passe" required="">
            </div>
            <div class="form-group">
                <input type="password" class="form-control item" id="cpsw" placeholder="Confirmation Du Mot De Passe" required="">
            </div>
      <div class="col-auto">
        <span id="passwordHelpInline" class="form-text">
          Must be 8-20 characters long.
        </span>
      </div>
      </form>
      <div class="mt-3">
        <button id="btnSignUp"  class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">Inscription</button>
      </div>
      <div class="text-center mt-4 font-weight-light">
        vous avez déja un compte?
        <a href="login.php" class="text-primary">Connexion</a>
      </div>
    </div>
  </div>
  <!-- content-wrapper ends -->
</div>
<!-- page-body-wrapper ends -->

     <script src="script/regiister.js"></script>
 
</body>
</html>

