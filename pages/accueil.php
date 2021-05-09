<?php
if(session_status() != PHP_SESSION_ACTIVE) {
    session_start();
    }
  if(isset($_SESSION['id'])){

 ?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!--<script src="script/jquery.js"></script>
    <script src="script/jquery.min.js"></script>
    <script src='vendors/jquery-3.2.1.min.js'></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src='script/jquery-3.2.1.min.js'></script>-->
    <script src="script/jquery.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" media="screen" type="text/css" title="style" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" title="style" href="css/accueil.css"/>
    
</head>
<body>
    <header>

       
    </header>

    <main>
        <section class="sec__photos">

        <div class="container">
            <h1 class="title title__center">Photos</h1>

            <ul class="nav nav-pills" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="pill" href="#home">1</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="pill" href="#menu1">2</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="pill" href="#menu2">3</a>
    </li>
  </ul>  
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
    <div class="row">
                            <div class="col-sm-4" >
                                <label for="img1" id="img1"></label>
                                <label for="img1" id='t1' class="titre"></label><br>
                                <label for="img1" >Points : </label>
                                <label for="img1" id='p1'></label><br>
                                <label for="img1" >Reduction de  : </label>
                                <label for="img1" id='r1'></label>
                            </div>
                    <div class="col-sm-4" >
                                <label for="img1" id="img2"></label>
                                <label for="img1" id='t2' class="titre"></label><br>
                                <label for="img1" >Points : </label>
                                <label for="img1" id='p2'></label><br>
                                <label for="img1" >Reduction de  : </label>
                                <label for="img1" id='r2'></label>

                    </div>
                    <div class="col-sm-4" >
                                <label for="img1" id="img3"></label>
                                <label id='t3' class="titre"></label><br>
                                <label  >Points : </label>
                                <label for="img1" id='p3'></label><br>
                                <label for="img1" >Reduction de  : </label>
                                <label for="img1" id='r3'></label>

                    </div>
                    </div>
                    </div>
    <div id="menu1" class="container tab-pane fade"><br>
    <div class="row">
      <div class="col-sm-4" >
                                <label for="img1" id="img4"></label>
                                <label id='t4' class="titre"></label><br>
                                <label  >Points : </label>
                                <label for="img1" id='p4'></label><br>
                                <label for="img1" >Reduction de  : </label>
                                <label for="img1" id='r4'></label>

                    </div>
                    <div class="col-sm-4" >
                                <label for="img1" id="img5"></label>
                                <label id='t5' class="titre"></label><br>
                                <label  >Points : </label>
                                <label for="img1" id='p5'></label><br>
                                <label for="img1" >Reduction de  : </label>
                                <label for="img1" id='r5'></label>

                    </div>
                    <div class="col-sm-4" >
                                <label for="img1" id="img6"></label>
                                <label id='t6' class="titre"></label><br>
                                <label  >Points : </label>
                                <label for="img1" id='p6'></label><br>
                                <label for="img1" >Reduction de  : </label>
                                <label for="img1" id='r6'></label>

                    </div>
    </div></div>
    <div id="menu2" class="container tab-pane fade"><br>
    <div class="row">
    <div class="col-sm-4" >
                                <label for="img1" id="img7"></label>
                                <label id='t7' class="titre"></label><br>
                                <label  >Points : </label>
                                <label for="img1" id='p7'></label><br>
                                <label for="img1" >Reduction de  : </label>
                                <label for="img1" id='r7'></label>

                    </div>
                    <div class="col-sm-4" >
                                <label for="img1" id="img8"></label>
                                <label id='t8' class="titre"></label><br>
                                <label  >Points : </label>
                                <label for="img1" id='p8'></label><br>
                                <label for="img1" >Reduction de  : </label>
                                <label for="img1" id='r8'></label>

                    </div>
                    <div class="col-sm-4" >
                                <label for="img1" id="img10"></label>
                                <label id='t9' class="titre"></label><br>
                                <label  >Points : </label>
                                <label for="img1" id='p9'></label><br>
                                <label for="img1" >Reduction de  : </label>
                                <label for="img1" id='r9'></label>

                    </div>
        </div></div>


   
    <section class="photos__text">
        <div class="container">
            <h2 class="title__center">Le restaurant et son décor</h2>
            <div class="row">
                <div class="col-sm-6">
                    <p>Nous avons deux restaurants: un à Tamines et un à Châtelet. Mais une fois à l'intérieur, vous vous croirez au Japon. Nous sommes ouvert midi et soir chaque jour.</p>
                </div>
                <div class="col-sm-6">
                    <p>Vous pouvez manger à l'intérieur ou à l'extérieur. Nous disposons d'une terasse avec 10 tables et à l'intérieur 35 tables. Vous pouvez réserver à l'avance.</p>
                </div>
            </div>
        </div>
    </section>
    </main>

    <footer>
        <p>ENSAJ Restaurant</p>
        
        <ul>
            <li><a href=""><i class="fab fa-twitter"></i></a></li>
            <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
            <li><a href=""><i class="fab fa-instagram"></i></a></li>
        </ul>
    </footer>


  <script src="script/accueil.js"></script>
</body>
</html>
<?php

} else {
    header('Location:./login.php');
}
?>