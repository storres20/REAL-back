-- --------------------------------------------------------
-- Host:                         database-1.crwxddq8cva0.us-east-1.rds.amazonaws.com
-- Versión del servidor:         10.6.7-MariaDB-log - managed by https://aws.amazon.com/rds/
-- SO del servidor:              Linux
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para realplaza
CREATE DATABASE IF NOT EXISTS `realplaza` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `realplaza`;

-- Volcando estructura para tabla realplaza.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `image` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `warranty` text DEFAULT NULL,
  `quantity` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla realplaza.products: 7 rows
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `title`, `description`, `published`, `image`, `model`, `warranty`, `quantity`) VALUES
	(10, 'refrigerador', 'blackline', 0, 'https://realplaza.vtexassets.com/arquivos/ids/15118763-800-auto?v=637370032424530000&width=800&height=auto&aspect=true', 'frost', '01 año', '5'),
	(11, 'laptop', 'hp', 0, 'https://realplaza.vtexassets.com/arquivos/ids/20695732-800-auto?v=637803690377900000&width=800&height=auto&aspect=true', 'pavilion', '02 año', '10'),
	(12, 'smart tv', 'lg', 0, 'https://realplaza.vtexassets.com/arquivos/ids/17579057-800-auto?v=637708585360130000&width=800&height=auto&aspect=true', 'nanocell', '01 año', '2'),
	(13, 'tablet', 'apple', 1, 'https://realplaza.vtexassets.com/arquivos/ids/17543597-800-auto?v=637705336571130000&width=800&height=auto&aspect=true', 'air', '01 año', '7'),
	(18, 'monitor', 'lg', 0, 'https://realplaza.vtexassets.com/arquivos/ids/16583374-800-auto?v=637553883861900000&width=800&height=auto&aspect=true', '22MK600M', '01 año', '3'),
	(19, 'cellphone', 'apple', 0, 'https://realplaza.vtexassets.com/arquivos/ids/17823472-800-auto?v=637733796622230000&width=800&height=auto&aspect=true', '12', '01 año', '5'),
	(20, 'computer', 'generico', 0, 'https://realplaza.vtexassets.com/arquivos/ids/20485032-800-auto?v=637794202319100000&width=800&height=auto&aspect=true', 'monster', '01 año', '8');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
