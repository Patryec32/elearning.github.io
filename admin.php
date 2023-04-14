<?php
    session_start();
    if( isset( $_SESSION['mail'])){
      require_once("template/cabecera.php"); 
      require_once("pages/admin.html");
      require_once("template/pie.php"); 
    } else {
        echo "No autenticado;";
        echo "<a href='index.php'>Volver</a>";
    }
?>