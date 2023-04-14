<?php
    session_start();
        unset($_SESSION['mail']);
        unset($_SESSION['nombrecompleto']);
        header('location: index.php');
?>