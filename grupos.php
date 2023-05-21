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
     
  ?>
<div class="container-fluid  "  id="topProgram" style="margin-top:80px; text-align: left;" >

<?php
    $oldgrupo = " ";
    $query = 'SELECT * FROM Equipos ORDER BY Grupo asc, Puntos desc, Gfavor - Gcontra desc,  Gfavor DESC, Gcontra asc,id asc';
    $result = mysqli_query($connection,$query);
    while($row = mysqli_fetch_array($result)) {
    $grupo = $row['Grupo'];
    if ($grupo != $oldgrupo) {
        if ($oldgrupo != " ") print "</table>";
        print "<h2>";
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
        print "</h2>";
        
        print '
        <table class="table table-sm table-striped">
        <tr>
            <thead  class="thead-dark"> 
                <th>
                Equipo
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
        $oldgrupo = $grupo;
       
    } else {

    };
    
    



            print '<tr>';
            print "<td><b>".$row['Nombre']."</b></td>";
            print "<td style='text-align:right'>".$row['Gfavor']."</td>";
            print "<td style='text-align:right'>".$row['Gcontra']."</td>";
            print "<td style='text-align:right'>".$row['Ganados']."</td>";
            print "<td style='text-align:right'>".$row['Perdidos']."</td>";
            print "<td style='text-align:right'>".$row['Empatados']."</td>";
            print "<td style='text-align:right'>".$row['Puntos']."</td>";
            print "</tr>";
            
            
    };
    print '</table><hr style="width:100%", size="3", color=black>'; 

?>
        

    


</div>
    <script src="../jquery/jquery-3.5.1.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
