-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2021 at 11:39 PM
-- Server version: 10.2.38-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcsogt_sistventas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tbl_categoria`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tbl_cliente`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logsalida`
--

CREATE TABLE `tbl_logsalida` (
  `id` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fin_login` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logsalida`
--

INSERT INTO `tbl_logsalida` (`id`, `idusuario`, `fin_login`) VALUES
(1, 1, '2020-06-04 23:32:59'),
(2, 1, '2020-06-05 02:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_moneda`
--

CREATE TABLE `tbl_moneda` (
  `id_moneda` int(11) NOT NULL,
  `moneda` varchar(15) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_moneda`
--

INSERT INTO `tbl_moneda` (`id_moneda`, `moneda`, `descripcion`) VALUES
(1, 'GTQ', 'Quetzales '),
(2, 'EUR€', 'Euro'),
(5, 'HNL', 'Lempira Hondureña'),
(6, 'MXN$', 'Peso Mexicano'),
(7, 'USD$', 'Dolar Estadounidense');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_producto`
--

CREATE TABLE `tbl_producto` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_proveedor` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tbl_producto`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proveedor`
--

CREATE TABLE `tbl_proveedor` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono_proveedor` varchar(100) NOT NULL,
  `email_proveedor` varchar(100) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `telefono_empresa` varchar(100) NOT NULL,
  `email_empresa` varchar(100) NOT NULL,
  `direccion_empresa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_proveedor`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `finlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`, `finlogin`) VALUES
(1, 'Administrador', 'admin', '$6$rounds=5000$elobrero$RssnTknGVs9qzQBIdJ531H91bkZA.q1oxuHZxQxnojL3MHSfCh7WiQwcR4egwLsamSpBoLP/SHV50Kr9PypK//', 'Administrador', 'vistas/img/usuarios/admin/508.png', 1, '2021-06-07 21:34:29', '2021-06-08 03:34:29', '0000-00-00 00:00:00'),
(5, 'Cliente', 'usuario', '$6$rounds=5000$elobrero$.u4VVNxrihai8B1qjnbUrxRPJzojFw3PeQKvRLdV5DWlPuWmXsty5cQn03ARLaJK8MK294cB22IMv5ShlWzzx/', 'Editor', '', 1, '2021-06-07 21:36:26', '2021-06-08 03:36:26', '0000-00-00 00:00:00'),
(7, 'Vendedor', 'ventas', '$6$rounds=5000$elobrero$Di5xxbNHblXpWF9Ni1uOl8mc6h9xLJ8JGPuqFEjTP0hPwJ1ItrOnyOCTBd.oxtO3mxclCpIK69yDnvtFYYCRM/', 'Vendedor', '', 1, '0000-00-00 00:00:00', '2020-11-22 17:32:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_venta`
--

CREATE TABLE `tbl_venta` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `descuento` float NOT NULL,
  `subtotal` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tbl_venta`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logsalida`
--
ALTER TABLE `tbl_logsalida`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_moneda`
--
ALTER TABLE `tbl_moneda`
  ADD PRIMARY KEY (`id_moneda`);

--
-- Indexes for table `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_logsalida`
--
ALTER TABLE `tbl_logsalida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_moneda`
--
ALTER TABLE `tbl_moneda`
  MODIFY `id_moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_producto`
--
ALTER TABLE `tbl_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_venta`
--
ALTER TABLE `tbl_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
