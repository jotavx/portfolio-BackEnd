-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bdsmineoinjzfa0dbjhp-mysql.services.clever-cloud.com:3306
-- Generation Time: Jul 29, 2022 at 04:08 PM
-- Server version: 8.0.22-13
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdsmineoinjzfa0dbjhp`
--

-- --------------------------------------------------------

--
-- Table structure for table `estudios`
--

CREATE TABLE `estudios` (
  `id` bigint NOT NULL,
  `casa_estudios` varchar(50) NOT NULL,
  `periodo` varchar(50) DEFAULT NULL,
  `titulo_estudios` varchar(50) NOT NULL,
  `url_logo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estudios`
--

INSERT INTO `estudios` (`id`, `casa_estudios`, `periodo`, `titulo_estudios`, `url_logo`) VALUES
(1, 'Gobernador Alvarez', '2004-2009', 'Primario', 'https://1.bp.blogspot.com/-WToHYPfOxC0/XuFVZpDGIBI/AAAAAAAA5pg/Wte0LOibCHkRQ0KUJTIjp5FrlCWAv5anACK4BGAsYHg/w1200-h630-p-k-no-nu/LOGO%2B1.png    '),
(2, 'Instituto Cristo Redentor ', '2010-2016', 'Secundario (Bachiller en Comunicación)', 'https://yt3.ggpht.com/ytc/AKedOLT_PtV5Px-zMD7c97lbmM7dtQn_MXqKXvPhZAVE=s900-c-k-c0x00ffffff-no-rj'),
(3, 'Argentina Programa ', '2021-2022 ', 'Full Stack Developer Jr.', 'https://argentinaprograma.inti.gob.ar/pluginfile.php/1/theme_moove/logo/1657411642/APLogo-20-20.png        ');

-- --------------------------------------------------------

--
-- Table structure for table `experiencia`
--

CREATE TABLE `experiencia` (
  `id` bigint NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `periodo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiencia`
--

INSERT INTO `experiencia` (`id`, `descripcion`, `logo`, `nombre`, `periodo`) VALUES
(1, 'Formateo, recuperación de datos, mantenimiento y limpieza de hardware, instalación de modem y servicios de internet, instalación de Windows, drivers y programas a elección.', 'https://www.innovacionate.com/images/mantenimiento-pc.jpg  ', 'Arreglo y mantenimiento de computadoras ', '2020-2022 ');

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `id` bigint NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `sobremi` varchar(255) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`id`, `apellido`, `domicilio`, `img`, `nombre`, `sobremi`, `titulo`) VALUES
(1, 'Viarruel', 'Merlo, San Luis.', 'https://i.ibb.co/nbPJQ3V/joaquin-img.jpg     ', 'Joaquín', 'Hola! Soy un aficionado por las tecnologías tanto hardware como software, actualmente me encuentro estudiando Desarrollo Web, también tengo conocimientos en SO y una gran velocidad de tipeo!               ', 'Full Stack Jr. Desarrollador Web.             ');

-- --------------------------------------------------------

--
-- Table structure for table `proyectos`
--

CREATE TABLE `proyectos` (
  `id` bigint NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha` varchar(50) NOT NULL,
  `institucion` varchar(50) DEFAULT NULL,
  `nombre_proyecto` varchar(50) NOT NULL,
  `url_img` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proyectos`
--

INSERT INTO `proyectos` (`id`, `descripcion`, `fecha`, `institucion`, `nombre_proyecto`, `url_img`) VALUES
(1, 'El proyecto se basa en crear una app fullstack, en este caso un portfolio, con el front, el back y su base de datos.  ', 'Febrero 2022', 'Argentina Programa             ', 'Portfolio Argentina Programa.  ', 'https://argentinaprograma.inti.gob.ar/pluginfile.php/1/theme_moove/logo/1657411642/APLogo-20-20.png');

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `id` int NOT NULL,
  `rol_nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id`, `rol_nombre`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint NOT NULL,
  `porcentaje` varchar(255) NOT NULL,
  `skill` varchar(50) NOT NULL,
  `url_logo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `porcentaje`, `skill`, `url_logo`) VALUES
(1, '85', 'CSS', 'https://cdn.pixabay.com/photo/2017/08/05/11/16/logo-2582747_1280.png          '),
(2, '95', 'HTML5', 'https://www.offidocs.com/images/logohtmlhtml5.jpg '),
(3, '55', 'JS', 'https://i.pinimg.com/originals/5a/10/dc/5a10dc26f67f4217c22136dbd69dbc47.jpg  ');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint NOT NULL,
  `github` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `linkedin` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `github`, `instagram`, `linkedin`) VALUES
(1, 'A', 'A', 'A'),
(2, 'A', 'A', 'A'),
(3, NULL, NULL, NULL),
(4, 'http://github.com/jotavx', 'https://www.instagram.com/_joaquinvx  ', 'https://www.linkedin.com/in/joaquin-viarruel-757431232  ');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `nombre_usuario`, `password`) VALUES
(1, 'admin@admin.com', 'admin', 'admin', 'admin'),
(2, 'user@user.com', 'user', 'user', 'user'),
(3, 'jvx97@admin', 'joaquin', 'jvx97', '$2a$10$sj2mml89Koxf1OfP6OytaO5Fo0x9oDgjufXOxhX9GZyto4mTV3xsC');

-- --------------------------------------------------------

--
-- Table structure for table `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `usuario_id` int NOT NULL,
  `rol_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_id`, `rol_id`) VALUES
(1, 1),
(3, 1),
(2, 2),
(3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`);

--
-- Indexes for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`usuario_id`,`rol_id`),
  ADD KEY `FK610kvhkwcqk2pxeewur4l7bd1` (`rol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK610kvhkwcqk2pxeewur4l7bd1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `FKbyfgloj439r9wr9smrms9u33r` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
