-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              5.7.30-log - MySQL Community Server (GPL)
-- S.O. server:                  Win64
-- HeidiSQL Versione:            11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dump della struttura del database eserciziofile
CREATE DATABASE IF NOT EXISTS `eserciziofile` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `eserciziofile`;

-- Dump della struttura di tabella eserciziofile.threads
CREATE TABLE IF NOT EXISTS `threads` (
  `key` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) NOT NULL DEFAULT '0',
  `nomefile` varchar(50) NOT NULL DEFAULT '0',
  `timestamp` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella eserciziofile.threads: ~0 rows (circa)
DELETE FROM `threads`;
/*!40000 ALTER TABLE `threads` DISABLE KEYS */;
/*!40000 ALTER TABLE `threads` ENABLE KEYS */;

-- Dump della struttura di tabella eserciziofile.utenti
CREATE TABLE IF NOT EXISTS `utenti` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella eserciziofile.utenti: ~1 rows (circa)
DELETE FROM `utenti`;
/*!40000 ALTER TABLE `utenti` DISABLE KEYS */;
INSERT INTO `utenti` (`username`, `password`, `nome`, `cognome`) VALUES
	('miao123', 'miao123', 'pippo', 'poppi');
/*!40000 ALTER TABLE `utenti` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
