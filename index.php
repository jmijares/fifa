<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" >

    <title>Home FIFA</title>
    </head>
  <body>
  <?php 
    include "navbar.php"; 
    include "database.php";
     $dia = (int)date('d');
     $mes = (int)date('m');
     $ano = (int)date('Y');
  ?>
<div class="container-fluid  "  id="topProgram" style="margin-top:80px; text-align: center;" >

</div>

    <div class="container-fluid pt-3 p-4" style="margin-top:35px">
      <div style="text-align: center;" id="inicio" >
      <div class="card-deck ">

        <div class="card bg-warning" style="width: 120px;">
           <img class="card-img-top" src="images/grupos.jpeg"   >
           <div class="card-body text-center" >
             <b><p class="card-text">Grupos</p></b>
             <a href="grupos.php"  class="stretched-link"></a>
           </div>
         </div>


         <div class="card bg-primary" style="width: 120px;">
           <img class="card-img-top" src="images/partidos.jpeg"  >
           <div class="card-body text-center"  >
             <b><p class="card-text">Partidos</p></b>
             <a href="partidos.php" class="stretched-link"></a>
           </div>
         </div>

         
         <div class="card bg-success" style="width: 120px;">
           <img class="card-img-top" src="images/proximospartidos.jpeg"   >
           <div class="card-body text-center" >
             <b><p class="card-text">Proximos Partidos</p></b>
             <a href="proximos.php"  class="stretched-link"></a>
           </div>
         </div>
      </div>
      <div>
            
    </div>
    <script src="../jquery/jquery-3.5.1.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>

  </body>
</html>
