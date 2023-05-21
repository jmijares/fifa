<?php 
    include "database.php";
     $dia = (int)date('d');
     $mes = (int)date('m');
     $ano = (int)date('Y');

    $id = $_GET['id'];
    $gola = $_GET['gola'];
    $golb = $_GET['golb'];
    $pwd = $_GET['pwd'];
    $penal = $_GET['penal']; //on o nothrin

  
    if ($pwd != "54913") {
      header('Location: index.php');	
      exit;
    };
    
    
    
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
        $ok = $row['ok'];
        $penalti = $row['penalti'];
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

    $accion = 3; // gana b
    if ($gola == $golb) $accion =1; //empate
    if ($gola > $golb) $accion =2; //gana a
    
    switch ($accion) {
      case 0:
        break;
      case 1: // empate
        $Agfavor = $Agfavor + $gola;
        $Bgfavor = $Bgfavor + $golb;
        $Agcontra = $Agcontra + $golb;
        $Bgcontra = $Bgcontra + $gola;
        $Aempatados = $Aempatados + 1;
        $Bempatados = $Bempatados + 1;  
        $Apuntos = $Apuntos + 1;
        $Bpuntos = $Bpuntos + 1;
        $fuepenal = 0;
        break;
      case 2: // gana a
        $Agfavor = $Agfavor + $gola;
        $Bgfavor = $Bgfavor + $golb;
        $Agcontra = $Agcontra + $golb;
        $Bgcontra = $Bgcontra + $gola;
        $Aganados = $Aganados + 1;
        $Bperdidos = $Bperdidos + 1;
        if ($penal) {
          $fuepenal = 1;
          $Apuntos = $Apuntos + 2;
          $Bpuntos = $Bpuntos + 1;
        } else {
          $fuepenal = 0;
          $Apuntos = $Apuntos + 3;
          $Bpuntos = $Bpuntos + 0;
        }
        break;
        case 3: // gana a
          $Agfavor = $Agfavor + $gola;
          $Bgfavor = $Bgfavor + $golb;
          $Agcontra = $Agcontra + $golb;
          $Bgcontra = $Bgcontra + $gola;
          $Bganados = $Bganados + 1;
          $Aperdidos = $Aperdidos + 1;
          if ($penal) {
            $fuepanal = 1;
            $Bpuntos = $Bpuntos + 2;
            $Apuntos = $Apuntos + 1;
          } else {
            $fuepenal = 0;
            $Bpuntos = $Bpuntos + 3;
            $Apuntos = $Apuntos + 0;
          }
          break;
    }
 

    $sql = 'UPDATE Partidos SET Geqa = "'.$gola.'", Geqb = "'.$golb.'", ok = "1",  penalti = "'.$fuepenal.'" WHERE id = "'.$id.'"';
    $result = mysqli_query($connection, $sql);

    // update equipos
    $sql = 'UPDATE Equipos SET Gfavor = "'.$Agfavor.'", Gcontra = "'.$Agcontra.'", Ganados = "'.$Aganados.'", Perdidos = "'.$Aperdidos.'", Empatados = "'.$Aempatados.'", Puntos = "'.$Apuntos.'" WHERE id = "'.$equipoa.'"';
    $result = mysqli_query($connection, $sql);
    $sql = 'UPDATE Equipos SET Gfavor = "'.$Bgfavor.'", Gcontra = "'.$Bgcontra.'", Ganados = "'.$Bganados.'", Perdidos = "'.$Bperdidos.'", Empatados = "'.$Bempatados.'", Puntos = "'.$Bpuntos.'" WHERE id = "'.$equipob.'"';
    $result = mysqli_query($connection, $sql);
    
    header('Location: index.php');	
  ?>