<?php
require_once("autoload.php");

class Alumno extends Conexion
{
    private $A_nombre;
    private $A_apellido_P;
    private $A_apellido_M;
    private $A_matricula;
    private $A_contraseña;
    private $conexion;

    public function __construct()
    {
        $this->conexion = new Conexion();
        $this->conexion = $this->conexion->Conectar();
    }

    public function getAlumno(string $nombre, string $apellido_P, string $apellido_M, string $matricula, string $contraseña)
    {
        $this->A_nombre = $nombre;
        $this->A_apellido_P = $apellido_P;
        $this->A_apellido_M = $apellido_M;
        $this->A_matricula = $matricula;
        $this->A_contraseña = $contraseña;

        $sql = "SELECT * FROM alumnos;";
        $execute = $this->conexion->query($sql);
        $request = $execute->fetchall(PDO::FETCH_ASSOC);
        return $request;
    }
}
