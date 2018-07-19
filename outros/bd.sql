-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27-Set-2015 às 03:25
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(520) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'InformÃ¡tica', '2015-09-26 21:18:47', '2015-09-26 21:31:57'),
(4, 'EletrodomÃ©sticos', '2015-09-26 22:11:13', NULL),
(5, 'MÃ³veis', '2015-09-26 22:11:35', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivel_acessos`
--

CREATE TABLE IF NOT EXISTS `nivel_acessos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_nivel` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `nivel_acessos`
--

INSERT INTO `nivel_acessos` (`id`, `nome_nivel`, `created`, `modified`) VALUES
(1, 'Administrador', '2015-09-19 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(520) NOT NULL,
  `descricao_curta` text NOT NULL,
  `descricao_longa` text NOT NULL,
  `preco` varchar(20) NOT NULL,
  `tag` varchar(520) NOT NULL,
  `description` varchar(520) NOT NULL,
  `imagem` varchar(220) NOT NULL,
  `situacao_id` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao_curta`, `descricao_longa`, `preco`, `tag`, `description`, `imagem`, `situacao_id`, `modified`, `created`, `categoria_id`) VALUES
(1, 'teclado', 'Teclado ABNT', 'Teclado ABNT', '80,00', 'teclado, teclado abnt', 'teclado', 'teclado.jpg', 1, NULL, '2015-09-26 21:18:03', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacaos`
--

CREATE TABLE IF NOT EXISTS `situacaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `situacaos`
--

INSERT INTO `situacaos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Ativado', '0000-00-00 00:00:00', NULL),
(2, 'Desativado', '0000-00-00 00:00:00', NULL),
(3, 'Falta em Estoque', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivel_acesso_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `login`, `senha`, `nivel_acesso_id`, `created`, `modified`) VALUES
(1, 'Cesar Szpak', 'admin@celke.com.br', 'admin', '123', 1, '2015-09-19 00:00:00', NULL),
(2, 'Kelly1', 'kelly@celke.com.br', 'kelly', '123', 2, NULL, '2015-09-26 13:20:53'),
(3, 'Gabriely', 'cesarszpak@gmail.com', 'gabriely', '123', 2, '2015-09-20 21:48:49', '2015-09-26 13:21:42'),
(4, 'Cesar ', 'cesarszpak@gmail.com', 'cesar', '123', 1, '2015-09-20 21:50:33', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
