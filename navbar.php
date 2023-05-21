<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top ">
  <a class="navbar-brand" href="http://blog.jmijares.ml:4080/"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
    </svg></a>
        <a class="navbar-brand" href="../fifa/index.php">Fifa</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li  class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Aplicaciones
                    </a>
                    <div  class="dropdown-menu">
                        <a class="dropdown-item " href="grupos.php">Grupos</a>    
                        <a class="dropdown-item" href="partidos.php">Partidos</a>
                        <a class="dropdown-item " href="proximos.php">Proximos Partidos</a>
                        
                    </div>
                    <li  class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Historico
                    </a>
                    <div  class="dropdown-menu">
                        <a class="dropdown-item " href="mundiales.php">Mundiales de Football
                        </a>    
                        
                    </div>
                </li>
<?php 
 $tuip = substr($_SERVER['REMOTE_ADDR'],0,5);
        
 if (($tuip == "127.0")|| ($tuip == "10.0."))  {
    print ' 
                <li  class="nav-item dropdown" id="utilidades">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Utilidades
                    </a>
                    <div  class="dropdown-menu">
                        <!-- <a class="dropdown-item" Id="backupdb" href="octavos.php">Actualizar Octavos de Final.</a> -->
                        <a class="dropdown-item" Id="backupdb" href="cuartos.php">Actualizar Cuartos de Final.</a>
                        <a class="dropdown-item" Id="backupdb" href="semifinal.php">Actualizar Semi Final.</a>
                        <a class="dropdown-item" Id="backupdb" href="tercero.php">Actualizar Tercer Lugar.</a>
                        <a class="dropdown-item" Id="backupdb" href="final.php">Actualizar La Final.</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" Id="backupdb" href="backup.php">Backup Data Base</a>
                        <!-- <a class="dropdown-item" Id="backupdb" href="transfer.php">Transferir Data Base from Master</a> -->
                    </div>c
                </li>
';
 };
?>
            </ul>
        </div>
</nav>
