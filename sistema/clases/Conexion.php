<?php

class Conexion
{
    public $server = 'localhost';
    public $host = 'root';
    public $password = '';
    public $bd = 'escuela';

    public function conectar()
    {
        return mysqli_connect(
            $this->server,
            $this->host,
            $this->password,
            $this->bd


        );
    }
}
