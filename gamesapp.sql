-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: gamesapp
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(39) DEFAULT NULL,
  `gender` varchar(17) DEFAULT NULL,
  `platform` varchar(25) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `price` varchar(7) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Grand Theft Auto V','Acción, Aventura','PS3, PS4, Xbox 360, PC','2013-09-17','$30 USD','Grand Theft Auto V es un videojuego de acción-aventura desarrollado por Rockstar North. La historia sigue a tres criminales y sus esfuerzos por cometer robos bajo presión de una agencia gubernamental corrupta. El mundo abierto permite a los jugadores explorar el condado ficticio de San Andreas.','gta-v','gta-v'),(2,'Grand Theft Auto: San Andreas','Acción, Aventura','PS2, PS3, Xbox, PC','2004-10-26','$20 USD','Grand Theft Auto: San Andreas es un juego de acción-aventura desarrollado por Rockstar North. Ambientado en el estado ficticio de San Andreas, basado en California y Nevada, la historia sigue a Carl \'CJ\' Johnson, quien regresa a su hogar después de la muerte de su madre y se ve envuelto en una serie de conflictos con bandas, drogas y corrupción policial.','gta-san-andreas','gta-san-andreas'),(3,'Fortnite','Battle Royale','PS4, Xbox One, Switch, PC','2017-07-25','Gratis','Fortnite es un videojuego de Battle Royale desarrollado por Epic Games. Los jugadores compiten en un mapa en constante reducción para ser el último en pie. El juego presenta una construcción dinámica, permitiendo a los jugadores construir estructuras para protegerse o ganar ventaja sobre sus oponentes.','fortnite','fortnite'),(4,'Valorant','Shooter táctico','PC','2020-06-02','Gratis','Valorant es un juego de disparos táctico en primera persona desarrollado por Riot Games. Los jugadores asumen el control de \'agentes\' con habilidades únicas y se enfrentan en equipos para plantar o desactivar una bomba, al mejor estilo de juegos como Counter-Strike. La estrategia y la precisión son claves para la victoria.','valorant','valorant'),(5,'Minecraft','Sandbox, Aventura','PS4, Xbox One, Switch. PC','2011-11-18','$27 USD','Minecraft es un videojuego de construcción y aventura desarrollado por Mojang Studios. Los jugadores pueden explorar un mundo tridimensional generado proceduralmente, descubrir y extraer materias primas, fabricar herramientas y objetos, y construir estructuras o terraplanes. El modo creativo permite a los jugadores crear sin restricciones, mientras que el modo supervivencia presenta desafíos adicionales.','minecraft','minecraft'),(6,'The Legend of Zelda: Breath of the Wild','Acción, Aventura','Switch, Wii U','2017-03-03','$60 USD','The Legend of Zelda: Breath of the Wild es un juego de acción y aventura desarrollado por Nintendo. Los jugadores toman el control de Link, quien despierta de un sueño de cien años para derrotar a Calamity Ganon y salvar el reino de Hyrule. El juego presenta un mundo abierto vasto y detallado, con una jugabilidad basada en la exploración, resolución de acertijos y combate.','zelda','the-legend-of-zelda-breath-of-the-wild');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `message` text,
  `last_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (17,'Alexandra Merrill','wimixebat@mailinator.com','¡GameHaven es increíble! La documentación es súper detallada y me encanta cómo cubren todos los aspectos de los videojuegos. Las reseñas son honestas y las comparaciones de precios me han ayudado a ahorrar mucho dinero en mis compras de juegos. Definitivamente es mi sitio de referencia para todo lo relacionado con videojuegos.','Espinoza'),(18,'Urielle Myers','tahotu@mailinator.com','¡Me encanta GameHaven! La comunidad es muy activa y siempre encuentro reseñas auténticas que me ayudan a decidir qué juegos comprar. La interfaz del sitio es intuitiva y fácil de navegar. Además, las descripciones detalladas y análisis profundos me permiten conocer a fondo los juegos antes de comprarlos.','Harrison'),(19,'Chadwick Benjamin','pyzytez@mailinator.com','GameHaven es el mejor sitio para los gamers. Me gusta cómo combinan información detallada con una presentación visual atractiva. Los análisis y reseñas de los juegos son muy precisos y siempre estoy al tanto de las mejores ofertas gracias a las comparaciones de precios. ¡Altamente recomendado!','Horn'),(20,'Gabriela','jucefez@mailinator.com','Descubrí GameHaven hace unos meses y se ha convertido en mi sitio favorito para todo lo relacionado con videojuegos. La calidad de la información es impresionante y la comunidad es muy amigable. Las reseñas son completas y los detalles de cada juego están bien documentados. ¡No puedo pedir más!','Hardy');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-25 20:50:10
