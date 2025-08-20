-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Ago-2025 às 17:43
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lavarapido`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `codmarca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`, `codmarca`) VALUES
(1, 'Corolla', 1),
(2, 'Hilux', 1),
(3, 'Yaris', 1),
(4, 'Civic', 2),
(5, 'Fit', 2),
(6, 'HR-V', 2),
(7, 'Fiesta', 3),
(8, 'Ka', 3),
(9, 'EcoSport', 3),
(10, 'Onix', 4),
(11, 'Prisma', 4),
(12, 'Tracker', 4),
(13, 'Gol', 5),
(14, 'Polo', 5),
(15, 'T-Cross', 5),
(16, 'Uno', 6),
(17, 'Argo', 6),
(18, 'Toro', 6),
(19, 'HB20', 7),
(20, 'Creta', 7),
(21, 'Azera', 7),
(22, 'March', 8),
(23, 'Versa', 8),
(24, 'Kicks', 8),
(25, 'Sandero', 9),
(26, 'Logan', 9),
(27, 'Duster', 9),
(28, 'Renegade', 10),
(29, 'Compass', 10),
(30, 'Commander', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`),
  ADD KEY `codmarca` (`codmarca`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`codmarca`) REFERENCES `marca` (`codmarca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
