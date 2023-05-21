<?php
    include "database.php";
    $query = 'SELECT * FROM Equipos WHERE Grupo = "S" ORDER BY id asc';
    $result = mysqli_query($connection,$query);
    while($row = mysqli_fetch_array($result)) {
        $id = $row['id'];
        $Destposicion = substr($id,0,1);
        $Destgrupo = substr($id,1);
        // buscar el primer y/o segundo lugar del grupo Destgrupo
        $query1 = 'SELECT * FROM Equipos WHERE Grupo = "'.$Destgrupo.'" ORDER BY Puntos DESC,  Gfavor - Gcontra DESC, Gfavor DESC, Gcontra asc,id asc LIMIT 2';
        $result1 = mysqli_query($connection,$query1);
        $row1 = mysqli_fetch_array($result1);
        $NombreDest1 = $row1['Nombre'];
        $row1 = mysqli_fetch_array($result1);
        $NombreDest2 = $row1['Nombre'];
        
        if ($Destposicion == 1) {
            $query2 = "UPDATE Equipos SET Nombre = '$NombreDest1' WHERE id = '$id'";
        } else {
            $query2 = "UPDATE Equipos SET Nombre = '$NombreDest2' WHERE id = '$id'";
        };
        $result2 = mysqli_query($connection,$query2);  
    }
    header('Location: index.php');	
?>