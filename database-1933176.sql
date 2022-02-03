-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for database-1933176
CREATE DATABASE IF NOT EXISTS `database-1933176` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `database-1933176`;

-- Dumping structure for table database-1933176.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `customers_id` char(36) NOT NULL DEFAULT uuid(),
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `address` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `province` varchar(25) NOT NULL,
  `postalcode` varchar(7) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`customers_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table database-1933176.customers: ~11 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`customers_id`, `firstname`, `lastname`, `address`, `city`, `province`, `postalcode`, `username`, `password`) VALUES
	('1df6ca66-a57e-11eb-9f28-b8ca3ad98a90', 'Saleem', 'Amwer', '987Saint ', 'Quebec ', 'QC', 'H4M 2j1', 'a', '10'),
	('1fa9701d-abc4-11eb-a798-b8ca3ad98a90', 'Samer', 'Nour', 'Lasalle', 'Toronto', 'Ontario', 'H3s 9A0', 'mnourra', '56487'),
	('24572482-a31a-11eb-a961-b8ca3ad98a90', 'Noura', 'Sammer', '578 saint', 'Mon', 'Que', 'H51', 'N', '8'),
	('27e19596-ab66-11eb-a381-b8ca3ad98a90', 'Ali', 'Mohamad', '230 Saint', 'Montreal', 'Qc', '5487', 'mnourr', '548'),
	('4ddd88e1-ab65-11eb-a381-b8ca3ad98a90', 'Mohammad', 'Nour', 'Lasalle', 'Montreal', 'QC', '12234', 'mnour', 'nour'),
	('596872dc-ab75-11eb-a381-b8ca3ad98a90', 'Omar', 'Nour', '210 Saint', 'Montreal', 'Qubec', 'H2S 3q0', 'omr_8', '54848'),
	('62075ffe-ab6a-11eb-a381-b8ca3ad98a90', 'Roua', 'Hossam', '130 Saint Josph', 'Montreal', 'Quebec', 'H4S 2L3', 'r_h', '5478'),
	('6d2a0a48-ab68-11eb-a381-b8ca3ad98a90', 'Tamer', 'Hosny', '847 Saint Laursnt', 'Toronto', 'Ontario', 'H5N 2L9', 'T_M', '32254'),
	('7da9ac38-ab74-11eb-a381-b8ca3ad98a90', 'Mona', 'Ammer', '987 marcl', 'Montreal', 'Quebec', 'H2S 3N9', 'mo_na', '548'),
	('abede1e4-ab75-11eb-a381-b8ca3ad98a90', 'Safaa', 'Hossam', '9874 l', 'Quebec', 'Quebec', 'H3s 9A0', 'm_s', '5848916'),
	('daa71f2b-ab65-11eb-a381-b8ca3ad98a90', 'Samer', 'Saleem', '120 Saint', 'Qunbec', 'QC', '6587', 'N_M', '2036');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for procedure database-1933176.customers_delete
DELIMITER //
CREATE PROCEDURE `customers_delete`(
	IN `p_customers_id` CHAR(36)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
	DELETE FROM customers 
		WHERE customers_id = p_customers_id;

END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.customers_insert
DELIMITER //
CREATE PROCEDURE `customers_insert`(
	IN `p_firstname` VARCHAR(20),
	IN `p_lastname` VARCHAR(20),
	IN `p_address` VARCHAR(25),
	IN `p_city` VARCHAR(25),
	IN `p_province` VARCHAR(25),
	IN `p_postalcode` VARCHAR(7),
	IN `p_username` VARCHAR(12),
	IN `p_password` VARCHAR(255)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
INSERT INTO customers 
 	(firstname , lastname , address , city , province , postalcode , username , PASSWORD)
 
 		VALUES (p_firstname, p_lastname , p_address , p_city ,p_province ,  p_postalcode,p_username, p_password);

END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.customers_select_all
DELIMITER //
CREATE PROCEDURE `customers_select_all`()
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
#we should not show password
	SELECT  customers_id ,firstname , lastname , address, city , province,  postalcode, username
		FROM customers
			ORDER BY firstname;

	END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.customers_select_one
DELIMITER //
CREATE PROCEDURE `customers_select_one`(
	IN `p_customers_id` CHAR(36)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
#by using customers_id , we can show the data that selected 
	SELECT customers_id ,firstname , lastname , address, city , province, postalcode, username
			FROM customers
				WHERE customers_id =p_customers_id; 
	END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.customers_update
DELIMITER //
CREATE PROCEDURE `customers_update`(
	IN `p_customer_id` CHAR(36),
	IN `p_firstname` VARCHAR(20),
	IN `p_lastname` VARCHAR(20),
	IN `p_address` VARCHAR(25),
	IN `p_city` VARCHAR(25),
	IN `p_province` VARCHAR(25),
	IN `p_postalcode` VARCHAR(7),
	IN `p_username` VARCHAR(12),
	IN `p_password` VARCHAR(255)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
UPDATE customers 
	SET firstname = p_firstname, 
			lastname =p_lastname ,
				address = p_address , 
					city = p_city , 
						province = p_province , 
				postalcode = p_postalcode, 
		username = p_username,
	password = p_password

	WHERE customers_id = p_customer_id;

END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.filter_purchases
DELIMITER //
CREATE PROCEDURE `filter_purchases`()
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
SELECT c.firstname, c.city, p.quantity, p.comments, p.cost_price, p.purchasesdatetime
	FROM customers c
			INNER JOIN purchases p
		ON c.customers_id = p.customers_id
	ORDER BY p.purchasesdatetime;

END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.login
DELIMITER //
CREATE PROCEDURE `login`(
	IN `p_username` VARCHAR(12),
	IN `p_password` VARCHAR(225)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
       SELECT password
              from customers 
                      WHERE username = p_username;  
 
END//
DELIMITER ;

-- Dumping structure for table database-1933176.products
CREATE TABLE IF NOT EXISTS `products` (
  `products_id` char(36) NOT NULL DEFAULT uuid(),
  `productcode` varchar(12) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` decimal(30,2) NOT NULL,
  `cost_price` decimal(30,2) NOT NULL,
  PRIMARY KEY (`products_id`),
  KEY `cost_price` (`cost_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table database-1933176.products: ~4 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`products_id`, `productcode`, `description`, `price`, `cost_price`) VALUES
	('4bfa6832-a31b-11eb-a961-b8ca3ad98a90', 'P45', 'Nice', 13.00, 16.00),
	('6232c3c9-aaba-11eb-bdba-b8ca3ad98a90', 'p84', 'good', 10.00, 36.00),
	('66cd7646-a57e-11eb-9f28-b8ca3ad98a90', 'pjh', 'a', 0.00, 0.00),
	('8703b3a9-a55e-11eb-9f28-b8ca3ad98a90', 'g', 'n', 10.00, 3.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for procedure database-1933176.products_delete
DELIMITER //
CREATE PROCEDURE `products_delete`(
	IN `p_products_id` CHAR(36)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
DELETE FROM products 
		WHERE 
			products_id = p_products_id;

END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.products_insert
DELIMITER //
CREATE PROCEDURE `products_insert`(
	IN `p_productcode` VARCHAR(12),
	IN `p_description` VARCHAR(100),
	IN `p_price` DECIMAL(30,2),
	IN `p_cost_price` DECIMAL(30,2)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
	INSERT INTO products 
		( productcode , description, price , cost_price)
	
			VALUES( p_productcode , p_description , p_price , p_cost_price);


END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.products_select_all
DELIMITER //
CREATE PROCEDURE `products_select_all`()
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021

SELECT products_id , productcode , description , price , cost_price
	FROM products 
		ORDER BY productcode;


END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.products_select_one
DELIMITER //
CREATE PROCEDURE `products_select_one`(
	IN `p_products_id` CHAR(36)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
	SELECT products_id , productcode , description , price , cost_price
			FROM products 
				WHERE products_id = p_products_id;

END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.products_update
DELIMITER //
CREATE PROCEDURE `products_update`(
	IN `p_products_id` CHAR(36),
	IN `p_productcode` VARCHAR(12),
	IN `p_description` VARCHAR(100),
	IN `p_price` DECIMAL(30,2),
	IN `p_cost_price` DECIMAL(30,2)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
UPDATE products 
	SET productcode =p_productcode,
			description = p_description,
					price = p_price , 
						cost_price = p_cost_price

WHERE products_id = p_products_id;

END//
DELIMITER ;

-- Dumping structure for table database-1933176.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `purchases_id` char(36) NOT NULL DEFAULT uuid(),
  `customers_id` char(36) NOT NULL DEFAULT uuid(),
  `products_id` char(36) NOT NULL DEFAULT uuid(),
  `quantity` int(11) NOT NULL,
  `cost_price` decimal(30,2) NOT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `purchasesdatetime` date DEFAULT curdate(),
  PRIMARY KEY (`purchases_id`),
  KEY `customers_id` (`customers_id`),
  KEY `products_id` (`products_id`),
  KEY `FK3_` (`cost_price`),
  CONSTRAINT `FK2_purchase_products` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`),
  CONSTRAINT `FK_purchases_customers` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table database-1933176.purchases: ~2 rows (approximately)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` (`purchases_id`, `customers_id`, `products_id`, `quantity`, `cost_price`, `comments`, `purchasesdatetime`) VALUES
	('a1496615-a57e-11eb-9f28-b8ca3ad98a90', '1df6ca66-a57e-11eb-9f28-b8ca3ad98a90', '66cd7646-a57e-11eb-9f28-b8ca3ad98a90', 85, 252.00, 'p', '2021-04-25'),
	('b8e6edbc-a579-11eb-9f28-b8ca3ad98a90', '24572482-a31a-11eb-a961-b8ca3ad98a90', '8703b3a9-a55e-11eb-9f28-b8ca3ad98a90', 2, 30.00, 'j', '2021-04-24');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Dumping structure for procedure database-1933176.purchases_delete
DELIMITER //
CREATE PROCEDURE `purchases_delete`(
	IN `p_purchases_id` CHAR(36)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
	DELETE FROM purchases 
		WHERE 
			purchases_id = p_purchases_id;

END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.purchases_insert
DELIMITER //
CREATE PROCEDURE `purchases_insert`(
	IN `p_customers_id` CHAR(36),
	IN `p_products_id` CHAR(36),
	IN `p_quantity` INT,
	IN `p_cost_price` DECIMAL(30,2),
	IN `p_comments` VARCHAR(200)
)
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
	INSERT INTO purchases(customers_id , products_id , quantity , cost_price , comments)
	
		VALUES(p_customers_id , p_products_id , p_quantity , p_cost_price , p_comments);

END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.purchases_select_all
DELIMITER //
CREATE PROCEDURE `purchases_select_all`()
BEGIN
#Mohamad Nour AL Shaar(1933176)
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021

SELECT  purchases_id , customers_id , products_id , quantity , cost_price, comments, purchasesdatetime 
	FROM purchases
			ORDER BY quantity;

END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.purchases_select_one
DELIMITER //
CREATE PROCEDURE `purchases_select_one`(
	IN `p_purchases_id` CHAR(36)
)
BEGIN
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
SELECT  purchases_id , customers_id , products_id , quantity , cost_price , comments , purchasesdatetime

FROM purchases 
WHERE purchases_id = p_purchases_id;


END//
DELIMITER ;

-- Dumping structure for procedure database-1933176.purchases_update
DELIMITER //
CREATE PROCEDURE `purchases_update`(
	IN `p_purchases_id` CHAR(36),
	IN `p_customers_id` CHAR(36),
	IN `p_products_id` CHAR(36),
	IN `p_quantity` INT,
	IN `p_cost_price` DECIMAL(30,2),
	IN `p_comments` VARCHAR(200)
)
BEGIN
#I filled the data on 20-04-2021
#I creat the procedures on 24-04-2021
UPDATE purchases

	SET customers_id = p_customers_id,
		products_id = p_products_id , 
			quantity = p_quantity,
				cost_price = p_cost_price,
					comments = p_comments 
WHERE purchases_id = p_purchases_id;

END//
DELIMITER ;

-- Dumping structure for view database-1933176.view
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view` (
	`firstname` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_general_ci',
	`city` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_general_ci',
	`quantity` INT(11) NOT NULL,
	`comments` VARCHAR(200) NULL COLLATE 'utf8mb4_general_ci',
	`cost_price` DECIMAL(30,2) NOT NULL,
	`purchasesdatetime` DATE NULL
) ENGINE=MyISAM;

-- Dumping structure for view database-1933176.view
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view` AS select `c`.`firstname` AS `firstname`,`c`.`city` AS `city`,`p`.`quantity` AS `quantity`,`p`.`comments` AS `comments`,`p`.`cost_price` AS `cost_price`,`p`.`purchasesdatetime` AS `purchasesdatetime` from (`customers` `c` join `purchases` `p` on(`c`.`customers_id` = `p`.`customers_id`)) order by `p`.`purchasesdatetime`;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
