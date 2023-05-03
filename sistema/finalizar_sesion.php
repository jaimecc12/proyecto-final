<?php
session_start();


session_destroy();

// redirigir a la página de inicio de sesión
header("Location: ../index.html");
exit;
