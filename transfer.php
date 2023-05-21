<?php
//print "<img src='reloj-de-arena-imagen-animada-0004.gif'";
// Database remote configuration
$host = "10.0.1.109";
$username = "rootroot";
$password = "Lupapaul5409*1";
$database_name = "fifa";


// Database local configuration

$hostlocal = "localhost";
$usernamelocal = "root";
$passwordlocal = "Lupapaul5409";
$database_namelocal = "fifa";


// Get connection object and set the charset
$conn = mysqli_connect($host, $username, $password, $database_name);
$conn->set_charset("utf8");

// set local connection

$connlocal = mysqli_connect($hostlocal, $usernamelocal, $passwordlocal, $database_namelocal);
$connlocal->set_charset("utf8");


// Get All Table Names From the Database
$tables = array();
$sql = "SHOW TABLES";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_row($result)) {
    $tables[] = $row[0];
}

$sqlScript = "";
foreach ($tables as $table) {

    // delete table

    $sqlScript = "DROP TABLE IF EXISTS ".$table.";\n\n";

    // print "<br>".$sqlScript;
    $querylocal = $sqlScript;
    $resultlocal = mysqli_query($connlocal, $querylocal);

    $sqlScript = ""; 

    // Prepare SQLscript for creating table structure
    $query = "SHOW CREATE TABLE $table";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_row($result);

    // $sqlScript .= "\n\n" . $row[1] . ";\n\n";

    $sqlScript = "\n\n" . $row[1] . ";\n\n";

   
    $querylocal = $sqlScript;
    $resultlocal = mysqli_query($connlocal, $querylocal);

    $sqlScript = "";

    $query1= "SELECT * FROM $table";
    $result1 = mysqli_query($conn, $query1);

    $columnCount = mysqli_num_fields($result1);

    // Prepare SQLscript for dumping data for each table
    for ($i = 0; $i < $columnCount; $i ++) {
        while ($row1 = mysqli_fetch_row($result1)) {
            $sqlScript .= "INSERT INTO $table VALUES(";
            for ($j = 0; $j < $columnCount; $j ++) {
                $row1[$j] = $row1[$j];

                if (isset($row1[$j])) {
                    $sqlScript .= '"' . $row1[$j] . '"';
                } else {
                    $sqlScript .= 'NULL';
                }
                if ($j < ($columnCount - 1)) {
                    $sqlScript .= ',';
                }
            }
            $sqlScript .= ");\n";

            
            $querylocal = $sqlScript;
            
            $resultlocal = mysqli_query($connlocal, $querylocal);
            $sqlScript = "";
        }
    }

   //$sqlScript .= "\n";
//print $sqlScript."<br>nnnnnnnnnn<br>";
}
//header("Location: contabilidad/transfer-cnt-anexos.php");
header("Location: index.php");
?>
