<?php
if(session_status() != PHP_SESSION_ACTIVE) {
    session_start();
    }
  if(isset($_SESSION['id'])){
    $id=$_SESSION['id'];
    ?>
    <!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>PFA</title>
  <!-- plugins:css -->
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
  <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
  <link rel="stylesheet" href="css/roulette.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" media="screen" type="text/css" title="style" href="css/style.css"/>
  <link rel="stylesheet" type="text/css" href="node_modules/sweetalert2/dist/sweetalert2.css">
    <script src="node_modules/sweetalert2/dist/sweetalert2.all.min.js"></script>



</head>

<body>
 <!-- la roulette-->
 <div class="row">
 <div class="col-md-6">
                    <div id="chart"></div>
    </div>
    <div class="col-md-6">
    <br><br><br> 
   <h2 style="text-align:center"> <?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT concat(nom,' ',prenom) as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?></h2><br><br><br>
      <table class="table table-hover">
  <thead>
    
  </thead>
  <tbody>
  <tr>
      <th scope="col" >Solde : </th>
      <td id="so"><?php 
                                $bdd = new PDO('mysql:host=localhost;dbname=gamification;charset=utf8', 'root', '');
                                $reponse = $bdd->query("SELECT solde as n FROM clients where id='" . $_SESSION['id'] . "'");
                                 while ($donnees = $reponse->fetch()){
                                            echo $donnees['n'];}
                                ?></td>
    </tr>
    <tr>
      <th scope="col">Le gain du Jour : </th>
      <td id="gain">0</td>
    </tr>
    <tr>
      <th scope="col">Chance : </th>
      <td id="c">0</td>
    </tr>
    </tbody>
    </table>
    </div></div>
<div ></div>
   
    <footer>
        <p>ENSAJ Restaurant</p>
        
        <ul>
            <li><a href=""><i class="fab fa-twitter"></i></a></li>
            <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
            <li><a href=""><i class="fab fa-instagram"></i></a></li>
        </ul>
   
    </footer>
  <script src="script/d3.v3.min.js" charset="utf-8"></script>
  <script src="script/roul.js"></script>

  <!-- End custom js for this page-->
</body>

</html>
<?php
} else {
    header('Location:./login.php');
}
?>