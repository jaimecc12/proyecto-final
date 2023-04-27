<?php

if ($_POST) {
    session_start();
    include("configuracion/conexion.php");

    $u = $_POST['matricula'];

    $p = $_POST['contraseña'];

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $query = $pdo->prepare("SELECT * FROM alumnos WHERE Matricula= :u AND Contrasena = :p ");
    $query->bindParam(":u", $u);
    $query->bindParam(":p", $p);
    $query->execute();

    $id = $query->fetch(PDO::FETCH_ASSOC);

    if ($id) {
        $_SESSION['id'] = $id['id'];
        header("location:inicio.php");
    } else {
        echo "no crack, no puedes pasar, no tienes acceso";
    }
}
