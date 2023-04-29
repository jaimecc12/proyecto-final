-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2023 a las 04:49:59
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido_P` varchar(100) NOT NULL,
  `Apellido_M` varchar(100) NOT NULL,
  `Matricula` varchar(10) NOT NULL,
  `Contrasena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `Nombre`, `Apellido_P`, `Apellido_M`, `Matricula`, `Contrasena`) VALUES
(2, 'Sofia', 'Perez', 'Ramirez', 'SPR00123', 'F8G3K1'),
(3, 'Juan', 'Gonzalez', 'Fernandez', 'JGF00011', 'M7P2L9'),
(4, 'Ana', 'Rodriguez', 'Sanchez', 'ARS00012', 'T2W6N8'),
(5, 'Carlos', 'Hernandez', 'Lopez', 'CHL00015', 'H4J9L6'),
(6, 'Maria', 'Martinez', 'Castro', 'MMC00213', 'Q5R8S2'),
(7, 'Jose', 'Diaz', 'Soto', 'JDS00020', 'V1F2G4'),
(8, 'Alejandra', 'Flores', 'Ramirez', 'AFR00014', 'B9T6M2'),
(9, 'Eduardo', 'Garcia', 'Ramirez', 'EGR00016', 'D7Z9X1'),
(10, 'Andrea', 'Torres', 'Ortiz', 'ATO00016', 'K8N6J2'),
(11, 'Luis', 'Vazquez', 'Castro', 'LVC00211', 'S3P6V8'),
(12, 'Gabriela', 'Romero', 'Reyes', 'GRR00019', 'W2Z6F7'),
(13, 'Manuel', 'Cruz', 'Torres', 'MCT00017', 'P3D6R8'),
(14, 'Fernanda', 'Aguilar', 'Flores', 'FAF00018', 'V5B4S2'),
(15, 'David', 'Gonzalez', 'Torres', 'DGT00013', 'K9N2Z6'),
(16, 'Paulina', 'Gomez', 'Espinosa', 'PGE00015', 'Q2T6F7'),
(17, 'Sergio', 'Reyes', 'Garcia', 'SRG00014', 'L3M6S9'),
(18, 'Karen', 'Hernandez', 'Flores', 'KHF00012', 'B4T2L9'),
(19, 'Oscar', 'Martinez', 'Sanchez', 'OMS00013', 'R1Z6W8'),
(20, 'Mariana', 'Morales', 'Castro', 'MMC00018', 'H6J9G4'),
(21, 'Marco', 'Rivera', 'Ortiz', 'MRO00016', 'D2F6X8'),
(22, 'Vanessa', 'Jimenez', 'Ramirez', 'VJR00019', 'T5B6L2'),
(23, 'Hector', 'Mendoza', 'Flores', 'HMF00011', 'Q8T6N1'),
(24, 'Regina', 'Gonzalez', 'Ortiz', 'RGO00015', 'W3V6F7'),
(25, 'Miguel', 'Hernandez', 'Soto', 'MHS00016', 'P7N2T6'),
(26, 'Paola', 'Torres', 'Cruz', 'PTC00014', 'V9B6J1'),
(27, 'Roberto', 'Martinez', 'Aguilar', 'RMA00012', 'K2T6Z8'),
(28, 'Valeria', 'Lopez', 'Reyes', 'VLR000', 'S5G6F1'),
(29, 'Jaime', 'Carrazco', 'Cajero', 'JCC00012', 'ADMIN'),
(30, 'Mariana', 'Lorenzo', 'San Pablo', 'MLSP0025', 'ADMIN'),
(31, 'Jesus', 'Gonzales', 'Velasco', 'JGV00067', 'ADMIN'),
(32, 'Hector Guztavo', 'Vasquez', 'Godinez', 'HGVG0091', 'ADMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(11) NOT NULL,
  `id_Alumno` int(11) NOT NULL,
  `id_Materia` int(11) NOT NULL,
  `id_Ciclo` int(11) NOT NULL,
  `Calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id`, `id_Alumno`, `id_Materia`, `id_Ciclo`, `Calificacion`) VALUES
(1, 29, 81, 6, 9),
(2, 29, 82, 6, 9),
(3, 29, 83, 6, 8),
(4, 29, 84, 6, 8),
(5, 29, 85, 6, 10),
(6, 29, 86, 6, 9),
(7, 30, 81, 6, 10),
(8, 30, 82, 6, 9),
(9, 30, 83, 6, 10),
(10, 30, 84, 6, 9),
(11, 30, 85, 6, 10),
(12, 30, 86, 6, 9),
(13, 31, 81, 6, 10),
(14, 31, 82, 6, 10),
(15, 31, 83, 6, 10),
(16, 31, 84, 6, 10),
(17, 31, 85, 6, 10),
(18, 31, 86, 6, 9),
(19, 32, 81, 6, 8),
(20, 32, 82, 6, 7),
(21, 32, 83, 6, 9),
(22, 32, 84, 6, 7),
(23, 32, 85, 6, 8),
(24, 32, 86, 6, 9),
(25, 29, 87, 7, 10),
(26, 29, 88, 7, 10),
(27, 29, 89, 7, 9),
(28, 29, 90, 7, 8),
(29, 29, 91, 7, 9),
(30, 29, 92, 7, 9),
(31, 29, 93, 8, 8),
(32, 29, 94, 8, 9),
(33, 29, 95, 8, 10),
(34, 29, 96, 8, 9),
(35, 29, 97, 8, 8),
(36, 29, 98, 8, 7),
(37, 29, 99, 9, 10),
(38, 29, 100, 9, 9),
(39, 29, 101, 9, 10),
(40, 29, 102, 9, 9),
(41, 29, 103, 9, 8),
(42, 29, 104, 9, 10),
(43, 29, 105, 10, 8),
(44, 29, 106, 10, 9),
(45, 29, 107, 10, 7),
(46, 29, 108, 10, 9),
(47, 29, 109, 10, 9),
(48, 29, 110, 11, 9),
(49, 29, 111, 11, 9),
(50, 29, 112, 11, 10),
(51, 29, 113, 11, 7),
(52, 29, 114, 11, 8),
(53, 29, 115, 12, 7),
(54, 29, 116, 12, 9),
(55, 29, 117, 12, 10),
(56, 29, 118, 12, 8),
(57, 29, 119, 12, 8),
(58, 30, 87, 7, 10),
(59, 30, 88, 7, 10),
(60, 30, 89, 7, 9),
(61, 30, 90, 7, 9),
(62, 30, 91, 7, 9),
(63, 30, 92, 7, 9),
(64, 30, 93, 8, 8),
(65, 30, 94, 8, 9),
(66, 30, 95, 8, 10),
(67, 30, 96, 8, 9),
(68, 30, 97, 8, 8),
(69, 30, 98, 8, 9),
(70, 30, 99, 9, 10),
(71, 30, 100, 9, 9),
(72, 30, 101, 9, 10),
(73, 30, 102, 9, 9),
(74, 30, 103, 9, 9),
(75, 30, 104, 9, 10),
(76, 30, 105, 10, 8),
(77, 30, 106, 10, 9),
(78, 30, 107, 10, 10),
(79, 30, 108, 10, 9),
(80, 30, 109, 10, 9),
(81, 30, 110, 11, 9),
(82, 30, 111, 11, 9),
(83, 30, 112, 11, 10),
(84, 30, 113, 11, 10),
(85, 30, 114, 11, 10),
(86, 30, 115, 12, 10),
(87, 30, 116, 12, 9),
(88, 30, 117, 12, 10),
(89, 30, 118, 12, 8),
(90, 30, 119, 12, 8),
(91, 31, 87, 7, 10),
(92, 31, 88, 7, 10),
(93, 31, 89, 7, 9),
(94, 31, 90, 7, 10),
(95, 31, 91, 7, 9),
(96, 31, 92, 7, 9),
(97, 31, 93, 8, 10),
(98, 31, 94, 8, 9),
(99, 31, 95, 8, 10),
(100, 31, 96, 8, 9),
(101, 31, 97, 8, 10),
(102, 31, 98, 8, 9),
(103, 31, 99, 9, 10),
(104, 31, 100, 9, 9),
(105, 31, 101, 9, 10),
(106, 31, 102, 9, 10),
(107, 31, 103, 9, 9),
(108, 31, 104, 9, 10),
(109, 31, 105, 10, 10),
(110, 31, 106, 10, 9),
(111, 31, 107, 10, 10),
(112, 31, 108, 10, 9),
(113, 31, 109, 10, 9),
(114, 31, 110, 11, 9),
(115, 31, 111, 11, 9),
(116, 31, 112, 11, 10),
(117, 31, 113, 11, 10),
(118, 31, 114, 11, 10),
(119, 31, 115, 12, 10),
(120, 31, 116, 12, 9),
(121, 31, 117, 12, 10),
(122, 31, 118, 12, 10),
(123, 31, 119, 12, 10),
(124, 32, 87, 7, 7),
(125, 32, 88, 7, 7),
(126, 32, 89, 7, 6),
(127, 32, 90, 7, 7),
(128, 32, 91, 7, 8),
(129, 32, 92, 7, 8),
(130, 32, 93, 8, 7),
(131, 32, 94, 8, 6),
(132, 32, 95, 8, 8),
(133, 32, 96, 8, 7),
(134, 32, 97, 8, 8),
(135, 32, 98, 8, 9),
(136, 32, 99, 9, 8),
(137, 32, 100, 9, 9),
(138, 32, 101, 9, 8),
(139, 32, 102, 9, 7),
(140, 32, 103, 9, 6),
(141, 32, 104, 9, 7),
(142, 32, 105, 10, 8),
(143, 32, 106, 10, 9),
(144, 32, 107, 10, 7),
(145, 32, 108, 10, 7),
(146, 32, 109, 10, 6),
(147, 32, 110, 11, 7),
(148, 32, 111, 11, 6),
(149, 31, 112, 11, 6),
(150, 31, 113, 11, 7),
(151, 32, 114, 11, 7),
(152, 32, 115, 12, 7),
(153, 32, 116, 12, 8),
(154, 32, 117, 12, 10),
(155, 32, 118, 12, 8),
(156, 32, 119, 12, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclo`
--

CREATE TABLE `ciclo` (
  `id` int(11) NOT NULL,
  `Nom_Ciclo` varchar(100) NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciclo`
--

INSERT INTO `ciclo` (`id`, `Nom_Ciclo`, `Fecha_Inicio`, `Fecha_Fin`) VALUES
(1, '2015-1', '2015-02-09', '2015-07-03'),
(2, '2015-2', '2015-08-03', '2016-01-04'),
(3, '2016-1', '2016-02-08', '2016-07-04'),
(4, '2016-2', '2016-08-08', '2017-01-09'),
(5, '2017-1', '2017-02-06', '2017-07-03'),
(6, '2017-2', '2017-08-07', '2018-01-08'),
(7, '2018-1', '2018-02-05', '2018-07-02'),
(8, '2018-2', '2018-08-06', '2019-01-07'),
(9, '2019-1', '2019-02-04', '2019-07-01'),
(10, '2019-2', '2019-08-05', '2020-01-13'),
(11, '2020-1', '2020-02-10', '2020-07-06'),
(12, '2020-2', '2020-08-03', '2021-01-08'),
(13, '2021-1', '2021-02-08', '2021-07-02'),
(14, '2021-2', '2021-08-09', '2022-01-07'),
(15, '2022-1', '2022-02-07', '2022-07-06'),
(16, '2022-2', '2022-08-08', '2023-01-09'),
(17, '2023-1', '2023-02-06', '2023-07-01'),
(18, '2023-2', '2023-08-07', '2024-01-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licenciaturas`
--

CREATE TABLE `licenciaturas` (
  `id` int(11) NOT NULL,
  `Nom_Licenciaturas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `licenciaturas`
--

INSERT INTO `licenciaturas` (`id`, `Nom_Licenciaturas`) VALUES
(1, 'Administración y Desarrollo de Empresas'),
(2, 'Pedagogía'),
(3, 'Sistemas Computacionales'),
(4, 'Psicología Social'),
(5, 'Contaduría Pública'),
(6, 'Educación Física'),
(7, 'Nutrición y Educación Alimentaria'),
(8, 'Derecho'),
(9, 'Filosofía'),
(10, 'Criminología y Criminalística'),
(11, 'Administración Turística y Gastronomía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `Nom_Materia` varchar(200) NOT NULL,
  `id_Licenciatura` int(11) NOT NULL,
  `id_Semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `Nom_Materia`, `id_Licenciatura`, `id_Semestre`) VALUES
(1, 'Matemáticas Financieras', 1, 1),
(2, 'Contabilidad Administrativa', 1, 1),
(3, 'Comunicación Oral y Escrita', 1, 1),
(4, 'Informática I', 1, 1),
(5, 'Introducción a la Economía', 1, 1),
(6, 'Comunicación Administrativa', 1, 2),
(7, 'Recursos Humanos', 1, 2),
(8, 'Macroeconomía', 1, 2),
(9, 'Informática II', 1, 2),
(10, 'Habilidades Directivas', 1, 2),
(11, 'Calidad I', 1, 3),
(12, 'Administración Estratégica', 1, 3),
(13, 'Microeconomía', 1, 3),
(14, 'Derecho Mercantil', 1, 3),
(15, 'Probabilidad y Estadística', 1, 3),
(16, 'Calidad II', 1, 4),
(17, 'Capacitación y Desarrollo', 1, 4),
(18, 'Metodología de la Investigación', 1, 4),
(19, 'Derecho Fiscal', 1, 4),
(20, 'Análisis Socioeconómico de México', 1, 4),
(21, 'Planeación Estratégica', 1, 5),
(22, 'Psicología Organizacional', 1, 5),
(23, 'Investigación de Operaciones', 1, 5),
(24, 'Derecho Laboral', 1, 5),
(25, 'Finanzas Internacionales', 1, 5),
(26, 'Administración de Ventas', 1, 6),
(27, 'Comportamiento del Consumidor', 1, 6),
(28, 'Presupuestos', 1, 6),
(29, 'Planeación Financiera', 1, 6),
(30, 'Mercadotecnia I', 1, 6),
(31, 'Mercadotecnia II', 1, 7),
(32, 'Desarrollo Organizacional', 1, 7),
(33, 'Auditoría Administrativa', 1, 7),
(34, 'Gestión de Proyectos', 1, 7),
(35, 'Costos y Evaluación de Proyectos', 1, 7),
(36, 'Ética Profesional', 1, 8),
(37, 'Diseño de Procedimientos Administrativos', 1, 8),
(38, 'Análisis de Proyectos de Inversión', 1, 8),
(39, 'Gestión en Administración Estratégica', 1, 8),
(40, 'Seminario de Tesis', 1, 8),
(41, 'Infancia I', 2, 1),
(42, 'Psicología de la Educación I', 2, 1),
(43, 'Sociología de la Educación I', 2, 1),
(44, 'Teoría Pedagógica I', 2, 1),
(45, 'Metodología de la Investigación', 2, 1),
(46, 'Infancia II', 2, 2),
(47, 'Psicología de la Educación II', 2, 2),
(48, 'Sociología de la Educación II', 2, 2),
(49, 'Teoría Pedagógica II', 2, 2),
(50, 'Filosofía de la Educación', 2, 2),
(51, 'Adolescencia I', 2, 3),
(52, 'Didáctica', 2, 3),
(53, 'Estadística Aplicada a la Educación I', 2, 3),
(54, 'Historia General de la Educación I', 2, 3),
(55, 'Filosofía de la Cultura', 2, 3),
(56, 'Adolescencia II', 2, 4),
(57, 'Comunicación Educativa', 2, 4),
(58, 'Estadística Aplicada a la Educación II', 2, 4),
(59, 'Historia General de la Educación II', 2, 4),
(60, 'Psicopedagogía I', 2, 4),
(61, 'Inglés I', 2, 5),
(62, 'Técnicas de Psicopedagogía para la Detección y Diagnóstico de Problemas del Aprendizaje I', 2, 5),
(63, 'Administración Educativa I', 2, 5),
(64, 'Técnicas de Elaboración de Recursos Didácticos', 2, 5),
(65, 'Psicopedagogía II', 2, 5),
(66, 'Inglés II', 2, 6),
(67, 'Técnicas de Psicopedagogía para la Detección y Diagnóstico de Problemas del Aprendizaje II', 2, 6),
(68, 'Administración Educativa II', 2, 6),
(69, 'Orientación Educativa, Vocacional y Profesional', 2, 6),
(70, 'Modalidades Educativas y el Entorno', 2, 6),
(71, 'Técnicas Lúdicas de Enseñanza', 2, 7),
(72, 'Diseño y Evaluación Curricular', 2, 7),
(73, 'Técnicas de Análisis de Contenidos I', 2, 7),
(74, 'Análisis Psicopatológico del Escolar', 2, 7),
(75, 'Planeación Estratégica de la Enseñanza', 2, 7),
(76, 'Ética Profesional del Magisterio', 2, 8),
(77, 'Planeación Educativa', 2, 8),
(78, 'Técnicas de Análisis de Contenidos II', 2, 8),
(79, 'Seminario de Investigación Pedagógica', 2, 8),
(80, 'Educación Especializada', 2, 8),
(81, 'Introducción a las Ciencias Computacionales', 3, 1),
(82, 'Lógica de Programación con Algoritmos', 3, 1),
(83, 'Matemáticas para la Computación', 3, 1),
(84, 'Matemáticas I', 3, 1),
(85, 'Administración', 3, 1),
(86, 'Contabilidad', 3, 1),
(87, 'Arquitectura de Computadoras', 3, 2),
(88, 'Principios de Programación', 3, 2),
(89, 'Matemáticas II', 3, 2),
(90, 'Contabilidad de Costos', 3, 2),
(91, 'Sistemas Digitales', 3, 2),
(92, 'Psicología y Relaciones Humanas en la Industria', 3, 2),
(93, 'Lenguaje Ensamblador', 3, 3),
(94, 'Programación I', 3, 3),
(95, 'Probabilidad y Estadística', 3, 3),
(96, 'Telemática', 3, 3),
(97, 'Derecho', 3, 3),
(98, 'Inglés I', 3, 3),
(99, 'Sistemas Operativos', 3, 4),
(100, 'Introducción a las Redes de Computadoras', 3, 4),
(101, 'Programación de Aplicaciones en Web', 3, 4),
(102, 'Investigación de Operaciones I', 3, 4),
(103, 'Economía', 3, 4),
(104, 'Inglés II', 3, 4),
(105, 'Planeación de Redes', 3, 5),
(106, 'Bases de Datos I', 3, 5),
(107, 'Investigación de Operaciones II', 3, 5),
(108, 'Mercadotecnia', 3, 5),
(109, 'Sistemas Distribuidos', 3, 5),
(110, 'Administración de Redes', 3, 6),
(111, 'Bases de Datos II', 3, 6),
(112, 'Teoría General de Sistemas', 3, 6),
(113, 'Administración de Sistemas Operativos', 3, 6),
(114, 'Introducción a la Inteligencia Artificial', 3, 6),
(115, 'Análisis y Diseño de Sistemas', 3, 7),
(116, 'Seguridad Informática', 3, 7),
(117, 'Redacción e Investigación Documental', 3, 7),
(118, 'Ética Profesional', 3, 7),
(119, 'Principios de Robótica', 3, 7),
(120, 'Auditoría Informática', 3, 8),
(121, 'Seminario de Titulación', 3, 8),
(122, 'Desarrollo de Proyectos', 3, 8),
(123, 'Innovaciones Tecnológicas', 3, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestres`
--

CREATE TABLE `semestres` (
  `id` int(11) NOT NULL,
  `Semestre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `semestres`
--

INSERT INTO `semestres` (`id`, `Semestre`) VALUES
(1, 'Primero'),
(2, 'Segundo'),
(3, 'Tercero'),
(4, 'Cuarto'),
(5, 'Quinto'),
(6, 'Sexto'),
(7, 'Septimmo'),
(8, 'Octavo'),
(9, 'Noveno'),
(10, 'Decimo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Alumno` (`id_Alumno`),
  ADD KEY `id_Materia` (`id_Materia`),
  ADD KEY `id_Ciclo` (`id_Ciclo`);

--
-- Indices de la tabla `ciclo`
--
ALTER TABLE `ciclo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licenciaturas`
--
ALTER TABLE `licenciaturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Licenciatura` (`id_Licenciatura`),
  ADD KEY `id_Semestre` (`id_Semestre`);

--
-- Indices de la tabla `semestres`
--
ALTER TABLE `semestres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `ciclo`
--
ALTER TABLE `ciclo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `licenciaturas`
--
ALTER TABLE `licenciaturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `semestres`
--
ALTER TABLE `semestres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `Calificacion_Alumno` FOREIGN KEY (`id_Alumno`) REFERENCES `alumnos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Calificacion_Ciclo` FOREIGN KEY (`id_Ciclo`) REFERENCES `ciclo` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Calificacion_materia` FOREIGN KEY (`id_Materia`) REFERENCES `materias` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `Materia_Licenciatura` FOREIGN KEY (`id_Licenciatura`) REFERENCES `licenciaturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Materia_Semestre` FOREIGN KEY (`id_Semestre`) REFERENCES `semestres` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
