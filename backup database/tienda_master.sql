-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 24-05-2020 a las 23:11:08
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Celulares'),
(2, 'Computadores'),
(3, 'Televisores'),
(4, 'Impresoras'),
(5, 'Neveras'),
(6, 'Camaras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas_pedidos`
--

CREATE TABLE `lineas_pedidos` (
  `id` int(255) NOT NULL,
  `pedido_id` int(255) NOT NULL,
  `producto_id` int(255) NOT NULL,
  `unidades` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lineas_pedidos`
--

INSERT INTO `lineas_pedidos` (`id`, `pedido_id`, `producto_id`, `unidades`) VALUES
(1, 1, 1, 5),
(2, 1, 12, 1),
(3, 1, 7, 1),
(4, 1, 6, 1),
(5, 2, 1, 5),
(6, 2, 12, 1),
(7, 2, 7, 1),
(8, 2, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(255) NOT NULL,
  `usuario_id` int(255) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `localidad` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `coste` float(200,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuario_id`, `provincia`, `localidad`, `direccion`, `coste`, `estado`, `fecha`, `hora`) VALUES
(1, 11, 'sjafhkshdfkjf', 'kjsdhfkjshd', 'jksdhfkjhds', 10510.00, 'confirm', '2020-05-24', '13:54:48'),
(2, 2, 'sjdfhksd', 'lsjdflksdf', 'lsdflsd', 10510.00, 'preparation', '2020-05-24', '14:22:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(255) NOT NULL,
  `categoria_id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` float(100,2) NOT NULL,
  `stock` int(255) NOT NULL,
  `oferta` varchar(2) DEFAULT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `nombre`, `descripcion`, `precio`, `stock`, `oferta`, `fecha`, `imagen`) VALUES
(1, 1, 'IPhone XS MAX', 'Uno de los modelos mas recientes de iphones del mercado', 1350.00, 20, NULL, '2020-05-22', 'iphone-XS_1024x1024.png'),
(3, 1, 'moto g8 plus', 'moto g8 plus nuevo', 400.00, 190, NULL, '2020-05-23', 'descarga (1).jpg'),
(4, 3, 'Samsung 45 pulgadas 4k', 'Samsung 45 pulgadas 4k', 540.00, 11, NULL, '2020-05-23', 'descarga (2).jpg'),
(5, 6, 'Canno 2020', 'Camara Canno 2020 ', 476.00, 21, NULL, '2020-05-23', 'm50-transparency.png'),
(6, 1, 'Samsung Galaxy S20', 'Samsung Galaxy S20', 1120.00, 35, NULL, '2020-05-23', '846127191739-large.png'),
(7, 5, 'Nevecon', 'Nevecon', 1040.00, 10, NULL, '2020-05-23', 'frigorificos.png'),
(11, 1, 'iPhone 12 pro max', 'iPhone 12 pro max', 1200.00, 100, NULL, '2020-05-23', 'ge.png'),
(12, 3, 'Smart TV Samsung 60P', 'Smart TV Samsung 60Pulgadas ', 1600.00, 19, NULL, '2020-05-23', 'descarga.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `rol`, `imagen`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', 'contraseña', 'admin', NULL),
(2, 'Manuela', 'Garcia', 'dyg9812@gmail.com', '$2y$04$GBe2PVLLfDBuq.8gKw5Iaeig72i9sekFCSkJcmvsBNdDxe8KkPG0a', 'admin', NULL),
(3, 'Alexis', 'Holguin', 'alexis@alexis.com', '$2y$04$a5Ihv/kjiXDvwYzQ8hISl.9JDieDUNOXTbKRUEiNh3fddInJ5ba5m', 'user', NULL),
(4, 'Juanito', 'Rojas ', 'jueanito@gmail.com', '$2y$04$r.3y1BD511EcGg.ZsXBaAuCwIXakGjD30U2/Doan8IP1CsonnBPjS', 'user', NULL),
(5, 'Jorge ', 'reyes', 'george@gmail.com', '$2y$04$b/sF6w06Sf25Kury99Mh0O3YUSzlUHsek3By2aV7v1/ouwAj2gOom', 'user', NULL),
(6, 'Estefania', 'Meneses', 'stefy@gmail.com', '$2y$04$lS.Gtz2LbTZDiKX58Ns1Se8.m3194KujQbhjzZ4/3X4cv/M7gAf5S', 'user', NULL),
(7, 'fenarnando', 'Horjuela', 'Fhorjuela@gmail.com', '$2y$04$n3eWgown0exyunnL.0L3ueM6Nf/.UiKKmlUMAgm83lZsb4pES6.vG', 'user', NULL),
(8, 'Nancy', 'Garcia', 'nancy6832g@gmail.com', '$2y$04$QkrfD8m8HBndwINt3KMQKOYWkB6zpeHk1Ioi5Hz3r.g8XuuwjeS2e', 'user', NULL),
(9, 'paloma', 'paloma', 'palomon@gmail.com', '$2y$04$8P569Ztae/AjlTn3leWPrOFfiQNNSjlDuGLSUdgOZ9UAAJMhf34MS', 'user', NULL),
(10, 'esperanza', 'caicedo', 'pachita@gmail.com', '$2y$04$Wqg9xkXYFa.rN9R8gPlnmOV0qAQxOlX.RjwTHZPwF6SPWbCjmQRW6', 'user', NULL),
(11, 'stiven', 'guerrero', 'santacruz@gmail.com', '$2y$04$nPWruvHFSUgJUimlQuzhx.mqoAV5qmodZ.idXu/ae7shWPARaiTSi', 'user', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_linea_pedido` (`pedido_id`),
  ADD KEY `fk_linea_producto` (`producto_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_usuario` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producto_categoria` (`categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD CONSTRAINT `fk_linea_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `fk_linea_producto` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
