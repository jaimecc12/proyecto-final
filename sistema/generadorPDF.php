<?php
require('fpdf/fpdf.php');


class PDF extends FPDF
{
    // Cabecera de página
    function Header()
    {
        // Logo
        $this->Image('../public/img/logoUNM.png', 10, 8, 20);
        // Arial bold 15
        $this->SetFont('Arial', 'B', 18);
        // Movernos a la derecha
        $this->Cell(80);
        // Título
        $this->Cell(30, 10, 'Calificaciones por Semestre', 0, 0, 'C');
        // Salto de línea
        $this->Ln(40);
        $this->SetUTF8Font();
    }
    function SetUTF8Font()
    {

        $this->SetFont('Arial', '', 12);
    }
}





// Creación del objeto de la clase heredada
$pdf = new PDF();
$pdf->SetUTF8Font();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 12);

session_start();
if (!isset($_SESSION['id'])) {
    header("location:../index.html");
} else {
    $alumno = $_SESSION['id'];
    $calificaciones = $_SESSION['Calificaciones'];
    $semestres = $_SESSION['Semestre'];
    $nombreAlumno = $alumno['Nombre'] . ' ' . $alumno['Apellido_P'] . ' ' . $alumno['Apellido_M'];
    $promedio = 0;
    $Nun_materias = 0;



    $pdf->Cell(0, 10, $nombreAlumno, 0, 1, 'C');
    $pdf->Ln(40);
}


// Salto de línea

$pdf->Ln(40);
$pdf->SetUTF8Font('Arial', 'B', 14);
$pdf->Cell(45, 10, 'Semestre', 1, 0, 'C');
$pdf->Cell(90, 10, 'Materia', 1, 0, 'C');
$pdf->Cell(45, 10, 'Calificación', 1, 0, 'C');

$pdf->Output();
