-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-11-2024 a las 01:25:26
-- Versión del servidor: 8.4.3
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bank`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `account_id` int NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `balance` decimal(19,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `account_number` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `account_name` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `account_type` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `balance` decimal(18,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`account_id`, `user_id`, `account_number`, `account_name`, `account_type`, `balance`, `created_at`, `updated_at`) VALUES
(1, 7, '718000', 'ahorro', 'savings', 246000.00, NULL, '2024-11-21 05:49:30'),
(2, 7, '779000', 'corriente', 'business', 500.00, NULL, '2024-11-21 05:50:17'),
(6, 32, '855000', 'Trabajo', 'business', 1450.00, NULL, '2024-11-22 00:49:04'),
(7, 35, '350000', 'ahorro', 'savings', 0.00, NULL, '2024-11-24 01:46:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int NOT NULL,
  `account_id` int NOT NULL,
  `amount` double NOT NULL,
  `beneficiary` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `beneficiary_acc_no` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `reason_code` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT NULL,
  `beneficiary` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `beneficiary_acc_no` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `reference_no` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `reason_code` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`payment_id`, `account_id`, `beneficiary`, `beneficiary_acc_no`, `amount`, `reference_no`, `status`, `reason_code`, `created_at`) VALUES
(1, 1, 'ahorroHunk', '166000', 500.00, 'Oneta', 'success', 'Payment Processed Successfully!', '2024-11-21 05:37:02'),
(2, 1, 'fabiana galdamez', '258000', 500.00, 'un perrito', 'success', 'Payment Processed Successfully!', '2024-11-21 05:37:02'),
(3, 1, 'Yara', '258000', 500.00, 'un perrito', 'success', 'Payment Processed Successfully!', '2024-11-21 05:37:02'),
(4, 1, 'fabiana galdamez', '294000', 1000.00, 'por bonita', 'success', 'Payment Processed Successfully!', '2024-11-21 05:37:02'),
(5, 1, 'check', '294000', 1000.00, 'por bonita', 'success', 'Payment Processed Successfully!', '2024-11-21 05:37:02'),
(6, 1, 'fabiana galdamez', '294000', 1000.00, 'Oneta', 'success', 'Payment Processed Successfully!', '2024-11-21 05:37:02'),
(7, 6, 'Jonathan Reyes', '779000', 500.00, 'un perrito', 'success', 'Payment Processed Successfully!', '2024-11-22 00:48:26'),
(8, 6, 'corriente', '779000', 500.00, 'un perrito', 'success', 'Payment Processed Successfully!', '2024-11-22 00:48:26'),
(9, 6, 'Jonathan Reyes', '779000', 50.00, 'corriente', 'success', 'Payment Processed Successfully!', '2024-11-22 00:48:26'),
(10, 6, 'yara cloe', '350000', 500.00, 'un perrito', 'success', 'Payment Processed Successfully!', '2024-11-24 01:41:04'),
(11, 1, 'fabiana galdamez', '350000', 500.00, 'un perrito', 'success', 'Payment Processed Successfully!', '2024-11-24 01:59:52'),
(12, 1, 'fabiana galdamez', '350000', 500.00, 'un perrito', 'success', 'Payment Processed Successfully!', '2024-11-24 01:59:52'),
(13, 1, 'fabiana galdamez', '350000', 500.00, 'un perrito', 'success', 'Payment Processed Successfully!', '2024-11-24 02:03:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transact`
--

DROP TABLE IF EXISTS `transact`;
CREATE TABLE IF NOT EXISTS `transact` (
  `transaction_id` int NOT NULL,
  `account_id` int NOT NULL,
  `amount` double NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `reason_code` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `transaction_type` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaction_history`
--

DROP TABLE IF EXISTS `transaction_history`;
CREATE TABLE IF NOT EXISTS `transaction_history` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT NULL,
  `transaction_type` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `source` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `reason_code` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `transaction_history`
--

INSERT INTO `transaction_history` (`transaction_id`, `account_id`, `transaction_type`, `amount`, `source`, `status`, `reason_code`, `created_at`) VALUES
(1, 2, 'Transfer', 500.00, 'online', 'failed', 'Insufficient Funds', '2024-11-21 05:37:02'),
(2, 1, 'Transfer', 500.00, 'online', 'success', 'Transfer Transaction Successful', '2024-11-21 05:37:02'),
(3, 1, 'Payment', 500.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-21 05:37:02'),
(4, 1, 'Payment', 500.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-21 05:37:02'),
(5, 1, 'Payment', 500.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-21 05:37:02'),
(6, 1, 'deposit', 500.00, 'online', 'success', 'Deposit Transaction Successful', '2024-11-21 05:37:02'),
(7, 1, 'Payment', 1000.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-21 05:37:02'),
(8, 1, 'Payment', 1000.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-21 05:37:02'),
(9, 1, 'Payment', 1000.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-21 05:37:02'),
(10, 6, 'deposit', 500.00, 'online', 'success', 'Deposit Transaction Successful', '2024-11-22 00:48:26'),
(11, 6, 'Payment', 500.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-22 00:48:26'),
(12, 6, 'deposit', 2500.00, 'online', 'success', 'Deposit Transaction Successful', '2024-11-22 00:48:26'),
(13, 6, 'Payment', 500.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-22 00:48:26'),
(14, 6, 'Payment', 50.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-22 00:48:26'),
(15, 6, 'Payment', 500.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-24 01:41:04'),
(16, 1, 'Payment', 500.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-24 01:59:52'),
(17, 1, 'Payment', 500.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-24 01:59:52'),
(18, 1, 'Payment', 500.00, 'online', 'success', 'Payment Transaction Successful', '2024-11-24 02:03:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `verified` int NOT NULL,
  `verified_at` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `code` int DEFAULT NULL,
  `verified` int DEFAULT '1',
  `verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `token`, `code`, `verified`, `verified_at`, `created_at`, `updated_at`) VALUES
(7, 'Jonathan', 'Reyes', 'Jonnreyes1195@gmail.com', '$2a$10$/2H5J5TjvdNXdQy00nJ87u..20uJC8tLVAcOHhe96FE02BSdwtLLG', NULL, NULL, 1, '2024-11-20 23:46:33', NULL, '2024-11-21 05:46:33'),
(32, 'yara', 'cloe', 'Hunkspartacoc@gmail.com', '$2a$10$kHpx2Ej27V/YOr76NSZFYOAYgDWUKkR6i6rLkVYgN/4d.8j7SZ2g2', NULL, NULL, 1, '2024-11-21 18:01:38', NULL, '2024-11-22 00:01:38'),
(35, 'yara', 'cloe', 'fabiigaldy@gmail.com', '$2a$10$GUc5AGjib7tSRd70JhHMEuTxp/tqrG4GRuUCUQNvpDuSmUDtEoIW2', NULL, NULL, 1, NULL, NULL, '2024-11-24 01:41:25');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_payments`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_payments`;
CREATE TABLE IF NOT EXISTS `v_payments` (
`account_id` int
,`amount` decimal(18,2)
,`beneficiary` varchar(50)
,`beneficiary_acc_no` varchar(255)
,`created_at` timestamp
,`payment_id` int
,`reason_code` varchar(100)
,`reference_no` varchar(100)
,`status` varchar(50)
,`user_id` int
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_transaction_history`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `v_transaction_history`;
CREATE TABLE IF NOT EXISTS `v_transaction_history` (
`account_id` int
,`amount` decimal(18,2)
,`created_at` timestamp
,`reason_code` varchar(100)
,`source` varchar(50)
,`status` varchar(50)
,`transaction_id` int
,`transaction_type` varchar(50)
,`user_id` int
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_payments`
--
DROP TABLE IF EXISTS `v_payments`;

DROP VIEW IF EXISTS `v_payments`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_payments`  AS SELECT `p`.`payment_id` AS `payment_id`, `a`.`account_id` AS `account_id`, `u`.`user_id` AS `user_id`, `p`.`beneficiary` AS `beneficiary`, `p`.`beneficiary_acc_no` AS `beneficiary_acc_no`, `p`.`amount` AS `amount`, `p`.`status` AS `status`, `p`.`reference_no` AS `reference_no`, `p`.`reason_code` AS `reason_code`, `p`.`created_at` AS `created_at` FROM ((`payments` `p` join `accounts` `a` on((`p`.`account_id` = `a`.`account_id`))) join `users` `u` on((`a`.`user_id` = `u`.`user_id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_transaction_history`
--
DROP TABLE IF EXISTS `v_transaction_history`;

DROP VIEW IF EXISTS `v_transaction_history`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_transaction_history`  AS SELECT `t`.`transaction_id` AS `transaction_id`, `a`.`account_id` AS `account_id`, `u`.`user_id` AS `user_id`, `t`.`transaction_type` AS `transaction_type`, `t`.`amount` AS `amount`, `t`.`source` AS `source`, `t`.`status` AS `status`, `t`.`reason_code` AS `reason_code`, `t`.`created_at` AS `created_at` FROM ((`transaction_history` `t` join `accounts` `a` on((`t`.`account_id` = `a`.`account_id`))) join `users` `u` on((`a`.`user_id` = `u`.`user_id`))) ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD CONSTRAINT `transaction_history_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
