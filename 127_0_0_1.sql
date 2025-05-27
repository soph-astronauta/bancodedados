-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/05/2025 às 23:04
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--
CREATE DATABASE IF NOT EXISTS `etecmcm2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm2`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'laticínios'),
(2, 'higiene'),
(3, 'limpeza'),
(4, 'frios'),
(5, 'enlatados'),
(7, 'laticínios');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`, `unidade_medida`) VALUES
(1, 'Iogurte', 5.50, 50, 'Danone', 1, NULL),
(2, 'Mussarela', 50.00, 15, 'Presidente', 1, NULL),
(3, 'sabao em po', 30.50, 50, 'OMO', 1, NULL),
(4, 'detergente', 3.55, 10, 'Ype', 1, NULL),
(5, 'Creme de leite', 10.50, 10, 'Nestle', 1, NULL),
(6, 'Chocolate', 12.50, 14, 'Lacta', 1, NULL),
(7, 'Leite', 18.00, 8, 'Italac', 1, NULL),
(8, 'Achocolatado', 62.00, 10, 'Toddy', 1, NULL),
(9, 'Manteiga', 18.00, 12, 'Aviação', 7, NULL),
(10, 'Chocolate', 13.00, 90, 'Lacta', 7, NULL),
(11, 'Margarina', 10.00, 34, 'Qualy', 7, NULL),
(12, 'Sorvete', 16.00, 80, 'Kbom', 7, NULL),
(13, 'Leite condensado', 50.00, 2, 'Moça', 7, NULL),
(14, 'Presunto', 60.00, 94, 'Seara', 4, NULL),
(15, 'Mortadela', 90.00, 2, 'Seara', 4, NULL),
(16, 'Salame', 42.50, 84, 'Seara', 4, NULL),
(17, 'Salsicha', 1.00, 40, 'Seara', 4, NULL),
(18, 'Papel higienico', 12.00, 74, 'Dama', 2, NULL),
(19, 'Absorvente', 9.00, 40, 'sempre livre', 2, NULL),
(20, 'Fralda', 23.00, 30, 'Pumpers', 2, NULL),
(21, 'Sabonete', 3.00, 9, 'Dove', 2, NULL),
(22, 'Desodorante', 45.00, 20, 'Rexona', 2, NULL),
(23, 'Sabonete', 3.00, 9, 'Dove', 2, NULL),
(24, 'Cloro', 13.00, 34, 'Ype', 3, NULL),
(25, 'Pinho sol', 1.00, 3, 'Ype', 3, NULL),
(26, 'Amaciante', 20.00, 20, 'Minuano', 3, NULL),
(27, 'Atum', 1.00, 3, 'Coqueiro', 5, NULL),
(28, 'Sardinha', 13.00, 14, 'Costa alta', 5, NULL),
(29, 'Milho verde', 2.00, 5, 'Quero', 5, NULL),
(30, 'Ervilha', 6.00, 23, 'Quero', 5, NULL),
(31, 'Molho de tomate', 4.00, 46, 'Elefante', 5, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
