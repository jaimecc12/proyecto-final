<?php
include "Conexion.php";

class Alumnos extends Conexion
{
    public $intIdAlumno;
    public $strAlumno;
    public $strApellido_P;
    public $strApellido_M;
    public $strLicenciatura;
    public $strMatricula;
    public $strContraseña;

    #public function __construct(string $Alumno, string $Apellido_P, string $Apellido_M, string $Licenciatura, string $matricula, string $coontraseña)
    #{
    #}

    public function Login($matricula, $contraseña)
    {
        $conexion = parent::conectar();
        $sql = "SELECT a.*, (SELECT AVG (calificacion ) FROM calificaciones WHERE id_Alumno=a.id) as promedio FROM alumnos a WHERE matricula = '$matricula' AND contrasena = '$contraseña' ";
        $respuesta = mysqli_query($conexion, $sql);
        $id = $respuesta->fetch_assoc();

        if ($id) {
            $_SESSION['id'] = $id;
            $_SESSION['Calificaciones'] = $this->Consultar_calificaciones($id['id']);
            $_SESSION['Semestre'] = $this->Semestres_alumno($id['id']);
            return true;
        } else {
            echo "no crack, no puedes pasar, no tienes acceso";
            return false;
        }
    }

    public function Consultar_calificaciones(int $id)
    {
        $conexion = parent::conectar();
        $sql = "SELECT c.id,c.id_Ciclo,c.Calificacion,m.Nom_Materia,s.Semestre,a.Nombre,ci.Nom_Ciclo FROM `calificaciones` c
        INNER JOIN materias m on c.id_Materia=m.id
        INNER JOIN alumnos a on c.id_Alumno=a.id
        INNER JOIN ciclo ci on c.id_Ciclo=ci.id
        INNER JOIN semestres s on m.id_Semestre=s.id
        where c.id_Alumno=$id; ";
        $respuesta = mysqli_query($conexion, $sql);
        $Calificaciones_Semestre = array();
        while ($aux = $respuesta->fetch_assoc()) {
            $Calificaciones_Semestre[] = $aux;
        }

        return $Calificaciones_Semestre;
    }

    public function Semestres_alumno($id)
    {
        $conexion = parent::conectar();
        $sql = "SELECT DISTINCT(s.Semestre) FROM `calificaciones` c 
        INNER JOIN materias m on c.id_Materia=m.id 
        INNER JOIN alumnos a on c.id_Alumno=a.id 
        INNER JOIN ciclo ci on c.id_Ciclo=ci.id 
        INNER JOIN semestres s on m.id_Semestre=s.id 
        where c.id_Alumno=$id; ";
        $respuesta = mysqli_query($conexion, $sql);
        $Semestre = array();
        while ($aux = $respuesta->fetch_assoc()) {
            $Semestre[] = $aux;
        }
        //$Semestre = $respuesta->num_rows;

        return $Semestre;
    }
}
