-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03-Jul-2017 às 15:58
-- Versão do servidor: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agenda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE IF NOT EXISTS `aluno` (
  `nome` varchar(120) NOT NULL,
  `matricula` int(15) NOT NULL,
  `curso` varchar(45) NOT NULL,
  `turma` varchar(6) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `nome` varchar(120) NOT NULL,
  `matricula` int(15) NOT NULL,
  `funcao` varchar(45) NOT NULL,
  `rg` int(12) NOT NULL,
  PRIMARY KEY (`matricula`),
  UNIQUE KEY `rg` (`rg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE IF NOT EXISTS `historico` (
  `data` date NOT NULL,
  `hora` date NOT NULL,
  `local` varchar(5) NOT NULL,
  `Solicitante` int(15) NOT NULL,
  PRIMARY KEY (`local`),
  UNIQUE KEY `Solicitante` (`Solicitante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `laboratorio`
--

CREATE TABLE IF NOT EXISTS `laboratorio` (
  `numerolaboratorio` int(5) NOT NULL,
  `numerocomputadores` int(3) NOT NULL,
  `equipamentos` varchar(45) DEFAULT NULL,
  `software` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`numerolaboratorio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

CREATE TABLE IF NOT EXISTS `sala` (
  `numerosala` varchar(5) NOT NULL,
  `equipamento` varchar(45) NOT NULL,
  PRIMARY KEY (`numerosala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
