<?php
if(session_status() != PHP_SESSION_ACTIVE) {
session_start();
}
if ($_SESSION["id"]) {
?>
<!DOCTYPE html>
<html lang="FR">

<head>
    <meta charset="UTF-8">
    <title>Play&Gain</title>
    <link rel="stylesheet"  href="css/profile.css"/>
    <!--<link href=https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css  rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    -->
    <link href="bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <style>

li a:hover, .dropdown:hover .dropbtn {
  background-color:#9932CC;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #9370DB;}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-light ">
    <div class="container-fluid">
      <a class="navbar-brand" href="#" >Play&Gain</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a style="color:white" class="nav-link active" aria-current="page" href="./index.php?p=accueil">Accueil</a>
          </li>
          <li class="nav-item">
            <a style="color:white" class="nav-link" href="./index.php?p=profile">profile</a>
          </li>
          <li class="nav-item">
            <a style="color:white" class="nav-link" href="./index.php?p=roulette">Roulette</a>
          </li>
          <li class="dropdown">
    <a href="javascript:void(0)" style="color:white" class="nav-link">Parametre</a>
    <div class="dropdown-content">
      <a href="./index.php?p=modifierProfile">Modifier Profile</a>
      <a href="logout.php">Déconnectez</a>
    </div>
  </li>
        </ul>
      </div>
    </div>
  </nav>
</body>
<?php
                    if( isset($_GET['p']) && $_GET['p'] != ""){
                        if($_GET['p']=="roulette"){
                            include_once './pages/roulette.php';
                        }elseif($_GET['p']=="profile"){
                            include_once './pages/profile.php';
                        }elseif($_GET['p']=="accueil"){
                            include_once './pages/accueil.php';
                        }
                      elseif($_GET['p']=="modifierProfile"){
                        include_once './pages/modifierProfile.php';
                    }
                    }else{
                        include_once './pages/accueil.php';
                    }
                ?>
</html>
<?php

} else {
    header('Location:./login.php');
}
?>