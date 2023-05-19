<?php
ob_start();
session_start();
if (!isset($_SESSION['id'])) {
    header("location:../index.html");
} else {
    $alumno = $_SESSION['id'];
    $calificaciones = $_SESSION['Calificaciones'];
    $semestres = $_SESSION['Semestre'];
}

?>
<!DOCTYPE html>
<html>

<head>
    <style>
        h2,
        p {
            color: #036F03;
        }

        table {
            font-family: arial, sans-serif;
            font-size: 12px;
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>

<body>
    <img src="http://<?php echo $_SERVER['HTTP_HOST']; ?>/proyecto-final/public/img/logoUNM.png" alt="" width="60">
    <h2>Nombre del Alumno: <?php echo $alumno['Nombre'] . " " . $alumno['Apellido_P'] . " " . $alumno['Apellido_M'] ?></h2>
    <p>Promedio General <?php echo round($alumno['promedio']) ?></p>



    <table>
        <thead>
            <tr>
                <th>Semestre</th>
                <th>Materia</th>
                <th>Calificación</th>
            </tr>
        </thead>
        <tbody>
            <?php
            for ($i = 0; $i < count($semestres); $i++) {

                for ($j = 0; $j < count($calificaciones); $j++) {
                    if ($semestres[$i]['Semestre'] == $calificaciones[$j]['Semestre']) { ?>
                        <tr>


                            <td> <?php echo $semestres[$i]['Semestre']  ?></td>
                            <td> <?php echo $calificaciones[$j]['Nom_Materia'] ?> </td>
                            <td> <?php echo $calificaciones[$j]['Calificacion'] ?> </td>

                        </tr>
            <?php }
                }
            } ?>
        </tbody>
    </table>


</body>

</html>

<?php
$html = ob_get_clean();

require_once("libreria/dompdf/autoload.inc.php");

// reference the Dompdf namespace
use Dompdf\Dompdf;

// instantiate and use the dompdf class
$dompdf = new Dompdf();
$options = $dompdf->getOptions();
$options->set(array('isRemoteEnabled' => true));
$dompdf->setOptions($options);

$dompdf->loadHtml($html);

// (Optional) Setup the paper size and orientation
$dompdf->setPaper('letter');

// Render the HTML as PDF
$dompdf->render();

// Output the generated PDF to Browser
$dompdf->stream("Calificaciones_.pdf", array("Attachment" => true));
?>