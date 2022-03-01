-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-02-2022 a las 02:48:23
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kdaweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(300) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'Entrevista a K/DA', 'sarasa', 'Nuestras 4 miembros fueron a prestar una entretenida,divertida y seria entrevista para una c\r\nadena de televisión oriunda de China. No nos olvidemos que su fanbase mas grande se encuentra en este país previamente mencionado, si bien cada miembro fue en su momento a Shanghai (ciudad donde se realizó la entrevista) es la primera vez que todas van juntas como una actividad de promoción grupal. (El video completo aún no fue publicado)', NULL),
(2, ' Drum go drum fue Liberado! aaaa', 'mv', 'El nuevo video caracterizando la canción de nuestra bailarina y coreógrafa principal Kai`sa, ha sido revelado por fin en la cuenta de Youtube. El mismo es protagonizado por una de las mejores alumnas de nuestra coreógrafa en su estudio de baile brindándole la oportunidad de brillar y mostrar su talento ante la cámara y así darle vida a su canción representativa en este álbum. Por favor no olviden darle mucho cariño\r\nhttps://www.youtube.com/watch?v=E_PbH5y70Tc\r\n                        ', ''),
(14, 'Artista invitada, Seraphine! ', 'Una nueva estrella en ascenso acompaña a K/DA en su comeback! ', 'Tal como ya se nos adelanto las chichas de K/DA colaborarían en este comebacck con una nueva artista que viene pisando fuerte en las redes sociales. Esta entusiasta cantautora se llama Seraphine, comenzando con pequeños covers en Instagram decidió probar suerte en YouTube yéndole de forma excelente, con su suave y cálida voz te atrapara y provocara que sientas la música desde el fondo de tu corazón.', 'ko509xw2syxfotaezik7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'erika', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'sasa', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
