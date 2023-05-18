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
<!doctype html>
<html lang="es">

<head>
    <title>Calificaciones</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.0.2 -->
    <link rel="stylesheet" href="../public/bootstrap/css/bootstrap.min.css">

</head>

<body>

    <div>
        <img src="http://<?php echo $_SERVER['HTTP_HOST']; ?>/proyecto-final/public/img/logoUNM.png" alt="" width="60">
        <h3 class="text-success mt-3">Nombre del Alumno: <?php echo $alumno['Nombre'] . " " . $alumno['Apellido_P'] . " " . $alumno['Apellido_M'] ?></h3>
        <p class="text-success mt-2">Promedio General <?php echo round($alumno['promedio']) ?></p>
    </div>

    <div>
        <table class="table table-bordered">
            <thead class=" bg-success ">
                <tr>
                    <th scope="col">Semestre</th>
                    <th scope="col">Materia</th>
                    <th scope="col">Calificación</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <?php
                    for ($i = 0; $i < count($semestres); $i++) {

                        for ($j = 0; $j < count($calificaciones); $j++) {
                            if ($semestres[$i]['Semestre'] == $calificaciones[$j]['Semestre']) { ?>

                                <td> <?php echo $semestres[$i]['Semestre']  ?></td>
                                <td> <?php echo $calificaciones[$j]['Nom_Materia'] ?> </td>
                                <td> <?php echo $calificaciones[$j]['Calificacion'] ?></td>

                </tr>

    <?php }
                        }
                    } ?>

            </tbody>

        </table>
    </div>





    <!-- Bootstrap JavaScript Libraries -->
    <script src=" ../public/bootstrap/js/bootstrap.min.js">
    </script>

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
$dompdf->stream("Calificaciones_.pdf", array("Attachment" => false));
?>