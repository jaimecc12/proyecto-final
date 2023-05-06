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
            <a class="navbar-brand" href="../index.html">
                <img src="../public/img/UNM-LOGO.png" alt="logo de UNM" height="60">
            </a>

            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link active text-success" aria-current="page" href="../index.html">inicio</a>
                </li>


            </ul>
        </div>
    </nav>



    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card shadow-2-strong" style="border-radius: 1.5rem;">
                    <div class="card-body p-5 text-center">
                        <form action="login/mecanismo.php" method="post">

                            <img src="../public/img/logoUNM.png" alt="logo" width="70">
                            <h3 class="md-6 fs-5 fw-semibold">UNIVERSIDAD NACIONALISTA MÉXICO</h3>
                            <br>
                            <div class="form-outline mb-4">
                                <input type="text" name="matricula" id="typeEmailX-2" class="form-control " placeholder="MATRICULA" require />
                            </div>
                            <div class="form-outline mb-4">
                                <input type="password" name="contraseña" id="typePasswordX-2" class="form-control " placeholder="CONTRASEÑA" require />
                            </div>
                            <button class="btn btn-success" type="submit">ENTRAR</button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- Bootstrap JavaScript Libraries -->
    <script src="../public/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>