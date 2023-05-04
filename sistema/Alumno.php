<?php
require_once("autoload.php");

class Alumno extends Conexion
{
    private $nombre;
    private $apallido_P;
    private $apallido_M;
    private $matricula;
    private $contraseña;
    private $conexion;

    public function __construct()
    {
        $this->conexion = new Conexion();
        $this->conexion = $this->conexion->Conectar();
    }

    public function getAlumno(Type $var = null)
    {
        # code...
    }
}
