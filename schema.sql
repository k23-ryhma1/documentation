-- --------------------------------------------------------
-- Verkkotietokone:              127.0.0.1
-- Palvelinversio:               10.5.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Versio:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for op1_backend
DROP DATABASE IF EXISTS `op1_backend`;
CREATE DATABASE IF NOT EXISTS `op1_backend` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `op1_backend`;

-- Dumping structure for taulu op1_backend.clothing_size
DROP TABLE IF EXISTS `clothing_size`;
CREATE TABLE IF NOT EXISTS `clothing_size` (
  `id` bigint(20) NOT NULL,
  `clothing_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table op1_backend.clothing_size: ~4 rows (suunnilleen)
/*!40000 ALTER TABLE `clothing_size` DISABLE KEYS */;
INSERT INTO `clothing_size` (`id`, `clothing_size`) VALUES
	(1, 'S'),
	(2, 'M'),
	(3, 'L'),
	(4, '-');
/*!40000 ALTER TABLE `clothing_size` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.clothing_size_seq
DROP TABLE IF EXISTS `clothing_size_seq`;
CREATE TABLE IF NOT EXISTS `clothing_size_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;

-- Dumping data for table op1_backend.clothing_size_seq: ~1 rows (suunnilleen)
/*!40000 ALTER TABLE `clothing_size_seq` DISABLE KEYS */;
INSERT INTO `clothing_size_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
	(50001, 1, 9223372036854775806, 1, 50, 1000, 0, 0);
/*!40000 ALTER TABLE `clothing_size_seq` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table op1_backend.customer: ~3 rows (suunnilleen)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`, `email`, `first_name`, `last_name`, `phone`) VALUES
	(1, 'riku@email.com', 'Riku', 'Rekka', '0409620451'),
	(2, 'saku@email.com', 'Saku', 'Sauna', '0401234551'),
	(3, 'tiina@email.com', 'Tiina', 'Tikka', '0407620331');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.customer_seq
DROP TABLE IF EXISTS `customer_seq`;
CREATE TABLE IF NOT EXISTS `customer_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;

-- Dumping data for table op1_backend.customer_seq: ~1 rows (suunnilleen)
/*!40000 ALTER TABLE `customer_seq` DISABLE KEYS */;
INSERT INTO `customer_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
	(50001, 1, 9223372036854775806, 1, 50, 1000, 0, 0);
/*!40000 ALTER TABLE `customer_seq` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.manufacturer
DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table op1_backend.manufacturer: ~2 rows (suunnilleen)
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` (`id`, `name`) VALUES
	(1, 'Purina'),
	(2, 'Pedigree');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.manufacturer_seq
DROP TABLE IF EXISTS `manufacturer_seq`;
CREATE TABLE IF NOT EXISTS `manufacturer_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;

-- Dumping data for table op1_backend.manufacturer_seq: ~1 rows (suunnilleen)
/*!40000 ALTER TABLE `manufacturer_seq` DISABLE KEYS */;
INSERT INTO `manufacturer_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
	(50001, 1, 9223372036854775806, 1, 50, 1000, 0, 0);
/*!40000 ALTER TABLE `manufacturer_seq` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.orderinfo
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE IF NOT EXISTS `orderinfo` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `orderstatus` varchar(50) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8nbthrgma7jd149n5m4xgvep7` (`customer_id`),
  KEY `FKqw9i2vyoy3d5v8ft95wjrlrho` (`product_id`),
  CONSTRAINT `FK8nbthrgma7jd149n5m4xgvep7` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKqw9i2vyoy3d5v8ft95wjrlrho` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table op1_backend.orderinfo: ~2 rows (suunnilleen)
/*!40000 ALTER TABLE `orderinfo` DISABLE KEYS */;
INSERT INTO `orderinfo` (`id`, `date`, `orderstatus`, `customer_id`, `product_id`) VALUES
	(1, '2023-05-22', 'Tilaus toimitettu', 1, 1),
	(2, '2023-05-22', 'Tilaus peruttu', 3, 2);
/*!40000 ALTER TABLE `orderinfo` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.orderinfo_seq
DROP TABLE IF EXISTS `orderinfo_seq`;
CREATE TABLE IF NOT EXISTS `orderinfo_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;

-- Dumping data for table op1_backend.orderinfo_seq: ~1 rows (suunnilleen)
/*!40000 ALTER TABLE `orderinfo_seq` DISABLE KEYS */;
INSERT INTO `orderinfo_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
	(50001, 1, 9223372036854775806, 1, 50, 1000, 0, 0);
/*!40000 ALTER TABLE `orderinfo_seq` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` double NOT NULL CHECK (`price` >= 0),
  `quantity` int(11) NOT NULL CHECK (`quantity` >= 0),
  `manufacturer_id` bigint(20) DEFAULT NULL,
  `size_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK89igr5j06uw5ps04djxgom0l1` (`manufacturer_id`),
  KEY `FKmvniptxc270t3kqjim7xomj5j` (`size_id`),
  KEY `FKq3fvcsydiaotwy3iqn1erqsfd` (`type_id`),
  CONSTRAINT `FK89igr5j06uw5ps04djxgom0l1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`),
  CONSTRAINT `FKmvniptxc270t3kqjim7xomj5j` FOREIGN KEY (`size_id`) REFERENCES `clothing_size` (`id`),
  CONSTRAINT `FKq3fvcsydiaotwy3iqn1erqsfd` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table op1_backend.product: ~3 rows (suunnilleen)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `manufacturer_id`, `size_id`, `type_id`) VALUES
	(1, 'Sadetakki', 39.9, 3, 1, 2, 2),
	(2, 'Ulkotossut', 19.9, 6, 2, 1, 2),
	(3, 'Hassuhattu', 12.9, 5, 1, 3, 2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.product_orderinfos
DROP TABLE IF EXISTS `product_orderinfos`;
CREATE TABLE IF NOT EXISTS `product_orderinfos` (
  `product_id` bigint(20) NOT NULL,
  `orderinfos_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_oow971cmiaj3ed4cd22gf0wnb` (`orderinfos_id`),
  KEY `FKaybm33t7v95gf5ute806skpb` (`product_id`),
  CONSTRAINT `FKaybm33t7v95gf5ute806skpb` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKei8j8d8bg865vsomopdx3g4t1` FOREIGN KEY (`orderinfos_id`) REFERENCES `orderinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table op1_backend.product_orderinfos: ~0 rows (suunnilleen)
/*!40000 ALTER TABLE `product_orderinfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_orderinfos` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.product_seq
DROP TABLE IF EXISTS `product_seq`;
CREATE TABLE IF NOT EXISTS `product_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;

-- Dumping data for table op1_backend.product_seq: ~1 rows (suunnilleen)
/*!40000 ALTER TABLE `product_seq` DISABLE KEYS */;
INSERT INTO `product_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
	(50001, 1, 9223372036854775806, 1, 50, 1000, 0, 0);
/*!40000 ALTER TABLE `product_seq` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.type
DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table op1_backend.type: ~2 rows (suunnilleen)
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`id`, `type`) VALUES
	(1, 'Lelu'),
	(2, 'Vaate');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;

-- Dumping structure for taulu op1_backend.type_seq
DROP TABLE IF EXISTS `type_seq`;
CREATE TABLE IF NOT EXISTS `type_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;

-- Dumping data for table op1_backend.type_seq: ~1 rows (suunnilleen)
/*!40000 ALTER TABLE `type_seq` DISABLE KEYS */;
INSERT INTO `type_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
	(50001, 1, 9223372036854775806, 1, 50, 1000, 0, 0);
/*!40000 ALTER TABLE `type_seq` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
