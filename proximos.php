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
<div class="container-fluid  "  id="topProgram" style="margin-top:80px; text-align: left;" >
<h2>Partidos</h2>
<h3>Fecha Actual: <?php echo $dia."/".$mes."/".$ano; ?></h3>
<hr>
<?php
    $query = 'SELECT * FROM Partidos WHERE not ok ORDER BY Fecha, Hora, Grupo';
    $result = mysqli_query($connection,$query);
    while($row = mysqli_fetch_array($result)) {
        $fecha = date('d/m/Y', strtotime($row['Fecha']));
        $id = $row['id'];


        print "<h4>".$fecha." a las ".$row['Hora'];
        
        switch($row['Grupo']) {
            case "S":
                print " Octavos de Final";
                break;
            case "T":
                print " Cuartos de Final";
                break;
            case "U":
                print " Semifinal";
                break;
            case "V":    
                print " Tercer Puesto";
                break;
            case "W":
                print " Final";
                break;
            default:
                print  " Grupo ".$row['Grupo'];
                break;
            };
        

        $tuip = substr($_SERVER['REMOTE_ADDR'],0,5);
        
        if (($tuip == "127.0")|| ($tuip == "10.0."))  {
          print " <a href='resultado.php?id=$id'>post</a></h4><br>";
        };


print '

<table class="table table-sm table-striped">
<tr>
	<thead  class="thead-dark"> 
		<th>
		Equipos
		</th>
		<th style="text-align:right" >
		Goles
		</th> 		
		<th style="text-align:right" >
		GF
		</th> 
        <th style="text-align:right" >
		GC
		</th> 		
		<th style="text-align:right" >
		PG
		</th> 	
        <th style="text-align:right" >
		PP
		</th> 	
        <th style="text-align:right" >
		PE
		</th> 
        <th style="text-align:right" >
		Pts
		</th> 		
	</tehead>
</tr>';

        print "<tr>";
        $key = $row['EquipoA'];
        $query1 = 'SELECT * FROM Equipos WHERE id = "'.$key.'"';
        $result1 = mysqli_query($connection,$query1);
        while($row1 = mysqli_fetch_array($result1)) {
            print "<td><b>".$row1['Nombre']."</b></td>";
            print "<td style='text-align:right'>".$row['Geqa']."</td>";
            print "<td style='text-align:right'>".$row1['Gfavor']."</td>";
            print "<td style='text-align:right'>".$row1['Gcontra']."</td>";
            print "<td style='text-align:right'>".$row1['Ganados']."</td>";
            print "<td style='text-align:right'>".$row1['Perdidos']."</td>";
            print "<td style='text-align:right'>".$row1['Empatados']."</td>";
            print "<td style='text-align:right'>".$row1['Puntos']."</td>";
        }
        print "</tr>";
        print "<tr>";
        $key = $row['EquipoB'];
        $query1 = 'SELECT * FROM Equipos WHERE id = "'.$key.'"';
        $result1 = mysqli_query($connection,$query1);
        while($row1 = mysqli_fetch_array($result1)) {
            print "<td><b>".$row1['Nombre']."</b></td>";
            print "<td style='text-align:right'>".$row['Geqb']."</td>";
            print "<td style='text-align:right'>".$row1['Gfavor']."</td>";
            print "<td style='text-align:right'>".$row1['Gcontra']."</td>";
            print "<td style='text-align:right'>".$row1['Ganados']."</td>";
            print "<td style='text-align:right'>".$row1['Perdidos']."</td>";
            print "<td style='text-align:right'>".$row1['Empatados']."</td>";
            print "<td style='text-align:right'>".$row1['Puntos']."</td>";
        }
        print '</tr>
</table><hr style="width:100%", size="3", color=black>';
    };
?>

</div>
    <script src="../jquery/jquery-3.5.1.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
