<?php
    require_once('app/model/Usuario.php');
    $usuario=new Usuario();

    if( !isset( $_POST['email']) && !isset($_POST['password'])) {
        echo "Datos ivalido";
        return;
    }

    $email = $_POST['email'];
    $password = $_POST['password'];

    $respuesta =$usuario->loguear($email,$password);

    if( count($respuesta) > 0){
        session_start();
        $_SESSION['email'] = $respuesta[0]['mail'];
        $_SESSION['nombrecompleto'] = $respuesta[0]['nombrecompleto'];
        header('location: perfil.php');    
    }else{
        echo  "<div class='alert alert-warning mt-4' role='alert'>
                Usuario o Contraseña incorrectos
                </div>";
        require_once('index.php');
        require_once('template/pie.php');        
    }
?>