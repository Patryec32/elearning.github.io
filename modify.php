<?php
    require_once('app/model/Usuario.php');
    $usuario=new Usuario();
    session_start();
    $usuario->mail = $_SESSION['email'];
    $password = $_POST['password'];
    $usuario->password = $password;
    $usuario->actualizar();
    header('location: perfil.php');    

?>