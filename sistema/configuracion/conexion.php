<?php
class Conexion
{
    private $SERVIDOR = "localhost";
    private $USUARIO = "root";
    private $PASSWORD = "";
    private $DB = "escuela";
    private $conectar;

    public function __construct()
    {
        $conexionServidor = "mysql:host=" . $this->SERVIDOR . ";dbname=" . $this->DB . ";charset=utf8";
        try {
            $this->conectar = new PDO($conexionServidor, $this->USUARIO, $this->PASSWORD);
            $this->conectar->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            $this->conectar = "Error en la conexion a la base de datos";
            echo "ERROR: " . $e->getMessage();
        }
    }
    public function Conectar()
    {
        return $this->conectar;
    }
}
