<?php 
session_start();
include "../clases/Autenticacion.php";

$matricula = $_POST['matricula'];
$contraseña = $_POST['contraseña'];

$Auth = new Autenticacion();

if ($Auth->logeo($matricula,$contraseña)) {
    header("location:../inicio.php");
} else {
    echo "error";
}
