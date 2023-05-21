<?php
    include "database.php";
    $query = 'SELECT * FROM Equipos WHERE Grupo = "W" ORDER BY id asc';
    $result = mysqli_query($connection,$query);
    while($row = mysqli_fetch_array($result)) {
        $id = $row['id'];
        $id1 = substr($id,1,2);
    
        $query1 = 'SELECT * FROM Partidos  WHERE id = "'.$id1.'"';
        $result1 = mysqli_query($connection,$query1);
        $row1 = mysqli_fetch_array($result1);
        $equipoA = $row1['EquipoA'];
        $equipoB = $row1['EquipoB'];
        $Geqa = $row1['Geqa'];
        $geqb = $row1['Geqb'];
        $query2 = 'SELECT * FROM Equipos WHERE id = "'.$equipoA.'"';
        $result2 = mysqli_query($connection,$query2);
        $row2 = mysqli_fetch_array($result2);
        $nombreA = $row2['Nombre'];
        $query3 = 'SELECT * FROM Equipos WHERE id = "'.$equipoB.'"';
        $result3 = mysqli_query($connection,$query3);
        $row3 = mysqli_fetch_array($result3);
        $nombreB = $row3['Nombre'];
        // determinar ganador
        if ($Geqa > $geqb) {
            $ganador = $nombreA;
        } else {
            $ganador = $nombreB;
        };
        // update tabla partidos
        $query4 = 'UPDATE Equipos SET Nombre = "'.$ganador.'" WHERE id = "'.$id.'"';
        $result4 = mysqli_query($connection,$query4);

    }
    header('Location: index.php');	
?>