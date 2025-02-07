-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Jan-2025 às 14:32
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jifma`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `titulo` varchar(100) NOT NULL,
  `texto` text NOT NULL,
  `data_postagem` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `postagem`
--

INSERT INTO `postagem` (`id`, `usuario_id`, `imagem`, `titulo`, `texto`, `data_postagem`) VALUES
(1, 0, 'uploads/images.jpeg', 'silas faz gol', 'fez um gol', '2024-10-10 10:51:36'),
(2, 0, 'uploads/images.jpeg', 'silas faz gol', 'fez um gol', '2024-10-10 10:52:26'),
(3, 0, 'uploads/neymar.jpg', 'silas faz gol', 'eita poha', '2024-10-10 10:58:53'),
(4, 0, '', 'quebraram a perna de caio', 'caio quebrou a perna', '2024-10-10 11:07:57'),
(5, 0, 'uploads/Mercedes-Desktop.jpg', 'frfefrefrfre', 'refrefrefrefr', '2024-12-11 08:47:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(4, 'siasas1', '5t22254gteg@gmail.com', '$2y$10$W7RQ9jwC7Kues4TSy073kuFeK49kXEqX/CxEJI/fE85PLZ8PJH1jy'),
(5, 'mate', 'mate@gmail.com', '$2y$10$sxalqO3beQy0ZyUWU80ObuMgFJqt/h5kDJAcpQGRxPddc8ZKYU1r2'),
(6, 'mae', 'mae@gmail.com', '$2y$10$LHAqpcwwrK5hKiGXwSRKYul8Riqh56gnUwFP8BqFl3YEWevEzcXN.'),
(7, 'silas junior', 'silasjunior@gmail.com', '$2y$10$Dz9JApB8szO5FvaTu/s.euri2o3d4VFWVbdXIgqAaKVDnNoWrU6Ua'),
(8, 'silas junior', 'silasjunior', '$2y$10$Nh6EFBuTeA3folmLly2yXeX9KHOgvOmx3ihE9Rhd7ooNA4DpTN3.O'),
(9, 'bruno', '', '$2y$10$9loz4pOlKgTnzlWTwjy06u2FAGHeoo.ArD1duMbx6C0eHttgY3QQW'),
(10, 'bruno', 'e.bruno@acad.ifma.edu.br', '$2y$10$fPyEQv1r2y1zMgnVQkL4.OzKZBCUAlBV4XTBjPjiJ5UUUUduxxv4i'),
(11, 'victor', 'victtor.gouveia@gmail.com', '$2y$10$5KJ4D4la.bqpMXqf/bebA.ozXj9fTVWTXzVhbzxSI0tlIncPIFowS'),
(13, 'matheus', 'mathus@gmsil.com', '$2y$10$qNKRJf3rHd7018FhovblYuzzvm4Q8wGZ27TOGC7dYYTZlC3cq4./y'),
(14, 'matheus', 'matheus@gmsil.com', '$2y$10$6cBGbhlmJ21TapNJ7RHiX..7x/zl4k0tZKakGJq6rNqdzA5lifrnG'),
(16, 'CAUANY', 'CAUANY.KYMBERLLY@ACAD.IFMA.EDU.BR', '$2y$10$b7XjYF43WQV.wOdzrawNj.U72jnMKIiI0cI8Xd1HzCf/KyhlXCOs6'),
(17, 'silas', 'silas23@gmail.com', '$2y$10$FflhoimR04gSQ2iDFbeJFulGcTMXJVzJ4EjcMpYgVDBNEYjnBXmKq'),
(20, 'Carol', 'leaokv@ggg', '$2y$10$Pt/Yeld/nUQ81099N/fIneO5jCk.1R4.EpFoVhxqZUkfBYQzpOJVa');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `postagem`
--
ALTER TABLE `postagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
