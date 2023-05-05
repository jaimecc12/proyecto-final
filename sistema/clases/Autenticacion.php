<?php
include "Conexion.php";

class Autenticacion extends Conexion
{
    public function logeo($matricula, $contraseña)
    {
        $conexion = parent::conectar();
        $sql = "SELECT * FROM alumnos WHERE matricula = '$matricula' AND contrasena = '$contraseña' ";
        $respuesta = mysqli_query($conexion, $sql);
        $id = $respuesta;

        if ($id) {
            $_SESSION['alumno'] = $id;
            return true;
        } else {
            echo "no crack, no puedes pasar, no tienes acceso";
            return false;
        }
    }
}
