<?php
    require_once('app/model/Usuario.php');
    $usuario=new Usuario();

    if( !isset( $_POST['email']) && !isset($_POST['password']) && !isset($_POST['nombrecompleto'])) {
        echo "vacio";
        return;
    }else{

    $nombrecompleto=$_POST['nombrecompleto'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    
    $usuario->nombrecompleto=$nombrecompleto;
    $usuario->mail=$email;
    $usuario->password=$password;
    $usuario->usetype=1;
    $usuario->guardar();
    
    $_SESSION['nombrecompleto'] = $usuario->nombrecompleto;
    header('location: index.php');    
    }
?>