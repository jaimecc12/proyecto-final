<?php
session_start();
if (!isset($_SESSION['id'])) {
    header("location:../index.html");
} else {
    $alumno = $_SESSION['id'];
    $calificaciones = $_SESSION['Calificaciones'];
    $semestres = $_SESSION['Semestre'];
    $html = "";
    $promedio = 0;
    $Nun_materias = 0;
}

?>
<!doctype html>
<html lang="es">

<head>
    <title>Login | Universidad Nacionalista México</title>
    <link rel="icon" type="image/x-icon" href="../public/img/logoUNM.png">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.0.2 -->
    <link rel="stylesheet" href="../public/bootstrap/css/bootstrap.min.css">

</head>

<body>

    <nav class="navbar navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="../public/img/UNM-LOGO.png" alt="logo de UNM" height="60">
            </a>

            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link active text-success" aria-current="page" href="finalizar_sesion.php">Salir</a>
                </li>


            </ul>
        </div>
    </nav>
    <br>

    <div class="container-fluid">
        <div class="row">
            <div class="col-3 ">
                <div class="d-flex flex-column justify-content-center align-items-center p-4 border border-success" style="border-radius: 1.5rem;">

                    <img src="../public/img/usuario.png" class="rounded-circle" width="100" height="100">
                    <h5 class="text-success mt-3">
                        <?php echo $alumno['Nombre'] . " " . $alumno['Apellido_P'] . " " . $alumno['Apellido_M'] ?>
                    </h5>
                    <br>
                    <p class="text-success mt-2">Promedio General <?php echo round($alumno['promedio']) ?></p>
                    <br>
                    <p class="text-success mt-2">Semestre Actual 8</p>
                    <br>
                    <button class="btn btn-success" type="submit">Todas las Calificaciones</button>


                </div>
            </div>

            <div class="col-9 border p-4 border-success" style="border-radius: 1.5rem;">
                <div class="accordion" id="accordionPanelsStayOpenExample">
                    <?php
                    for ($i = 0; $i < count($semestres); $i++) {
                        $html .= "<div class='accordion-item'>
                        <h2 class='accordion-header'>
                        <button class='accordion-button' type='button' data-bs-toggle='collapse' data-bs-target='#panelsStayOpen-collapseOne' aria-expanded='true' aria-controls='panelsStayOpen-collapseOne'>
                            " . $semestres[$i]['Semestre'] . "
                        </button>
                    </h2>
                    <div id='panelsStayOpen-collapseOne' class='accordion-collapse collapse show'>
                        <div class='accordion-body'>
                            <table class='table table-striped'>
                                <thead>
                                    <tr>
                                        
                                        <th scope='col'>Materia</th>
                                        <th scope='col'>Calificación</th>
                                    </tr>
                                </thead>
                                <tbody>
                        ";
                        for ($j = 0; $j < count($calificaciones); $j++) {
                            if ($semestres[$i]['Semestre'] == $calificaciones[$j]['Semestre']) {
                                $html .= "
                                <tr>
                                    
                                    <td>" . $calificaciones[$j]['Nom_Materia'] . "</td>
                                    <td>" . $calificaciones[$j]['Calificacion'] . "</td>
                                    </tr>  
                                ";
                                $promedio += $calificaciones[$j]['Calificacion'];
                                $Nun_materias++;
                            }
                        }
                        $html .= "</tbody>
                        </table>
                    </div>
                </div>
            </div>";
                    }
                    echo $html;
                    ?>

                </div>
            </div>
        </div>
    </div>



    <h4> </h4>

    <!-- Bootstrap JavaScript Libraries -->
    <script src=" ../public/bootstrap/js/bootstrap.min.js">
    </script>

</body>

</html>