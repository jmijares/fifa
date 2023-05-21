<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" >

    <title>Resultados</title>
    </head>
  <body>
  <?php 
    include "navbar.php"; 
    include "database.php";
     $dia = (int)date('d');
     $mes = (int)date('m');
     $ano = (int)date('Y');
  ?>
<div class="container-fluid  "  id="topProgram" style="margin-top:80px; text-align: left;" >
<h2>Resultado del Partido </h2>





<?php 
   
    

    $id = $_GET['id'];
    $query = 'SELECT * FROM Partidos WHERE id = "'.$id.'"';
    $result = mysqli_query($connection,$query);
    while($row = mysqli_fetch_array($result)) {
        $fecha = date('d/m/Y', strtotime($row['Fecha']));
        $hora = $row['Hora'];
        $grupo = $row['Grupo'];
        $equipoa = $row['EquipoA'];
        $equipob = $row['EquipoB'];
        $geqa = $row['Geqa'];
        $geqb = $row['Geqb'];
        $ok = $row['Ok'];
    }
    $query1 = 'SELECT * FROM Equipos WHERE id = "'.$equipoa.'"';
    $result1 = mysqli_query($connection,$query1);
    while($row1 = mysqli_fetch_array($result1)) {
        $nequipoa = $row1['Nombre'];
        $Agfavor = $row1['Gfavor'];
        $Agcontra = $row1['Gcontra'];
        $Aganados = $row1['Ganados'];
        $Aperdidos = $row1['Perdidos'];
        $Aempatados = $row1['Empatados'];
        $Apuntos = $row1['Puntos'];
    }
    $query2 = 'SELECT * FROM Equipos WHERE id = "'.$equipob.'"';
    $result2 = mysqli_query($connection,$query2);
    while($row2 = mysqli_fetch_array($result2)) {
        $nequipob = $row2['Nombre'];
        $Bgfavor = $row2['Gfavor'];
        $Bgcontra = $row2['Gcontra'];
        $Bganados = $row2['Ganados'];
        $Bperdidos = $row2['Perdidos'];
        $Bempatados = $row2['Empatados'];
        $Bpuntos = $row2['Puntos'];
    }

    echo "<h3>".$nequipoa." vs ".$nequipob."</h3><hr>";
  ?>
  
    <form action="postresult.php">
    <input type="hidden"  id="id" name = "id" value="<?php echo $id ?>">
      <div class="form-group">
        <label for="gola"><?php echo $nequipoa ?>:</label>
        <input type="number" class="form-control" id="gola" name="gola" >
      </div>
      <div class="form-group">
        <label for="golb"><?php echo $nequipob ?>:</label>
        <input type="number" class="form-control" id="golb" name="golb">
      </div>
      <div class="checkbox">
        <label><input type="checkbox" name="penal"> Resolucion por penalti</label>
      </div>
      <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="password" class="form-control" id="pwd" name = "pwd">
      </div>
      
      <!-- <div class="checkbox">
        <label><input type="checkbox"> Remember me</label>
      </div> -->
      <button type="submit" class="btn btn-default">Submit</button>
    </form>

   




  </div>
    <script src="../jquery/jquery-3.5.1.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
