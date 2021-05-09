<?php
if(session_status() != PHP_SESSION_ACTIVE) {
session_start();
}?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PFA</title>
    <h1>Welcome <?php echo $_SESSION['nom']; ?></h1>
    <h1>votre solde est :  <?php echo $_SESSION['solde']; ?></h1>
    <p> there is nothing to show for now. you can <a href="logout.php">Logout</a></p>
   
</head>
<body>
    
</body>
</html>