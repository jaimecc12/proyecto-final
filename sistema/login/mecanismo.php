<?php
session_start();
include "../clases/Alumno.php";

$matricula = $_POST['matricula'];
$contraseña = $_POST['contraseña'];

$Auth = new Alumnos();

if ($Auth->Login($matricula, $contraseña)) {
    header("location:../inicio.php");
} else {
    echo "error";
}
