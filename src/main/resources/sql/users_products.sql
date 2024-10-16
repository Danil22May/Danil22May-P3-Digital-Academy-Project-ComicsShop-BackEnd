-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: users
-- ------------------------------------------------------
-- Server version	8.0.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` enum('DC','MANGA','MARVEL') DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url1` varchar(255) DEFAULT NULL,
  `image_url2` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `stars` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'MARVEL','A comics about Captain America','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fcaptain.jpg?alt=media&token=583f4a06-0526-4cb6-8b3f-163ea26989cc','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fcaptain.jpg?alt=media&token=d0e183da-eb29-46fd-964a-ba8131fc0e07','Captain America',120,3.5),(2,'DC','A comics about batman','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fbatmab.jpg?alt=media&token=f3b2880b-886b-418b-a7a7-364fd5844f84','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fbatmab.jpg?alt=media&token=6bb195a2-887e-46c4-953a-182647cd0f32','Batman',75,0),(3,'DC','A comics about Flash','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fflash.jpg?alt=media&token=f5f3ae88-f039-4672-b503-0a87145770b8','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fflash.jpg?alt=media&token=e4bb3007-12dd-4cb1-994a-4db0f64a8eb7','Flash',145,5),(4,'MARVEL','A comics about Black Panther','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fpanther.jpg?alt=media&token=24c3584d-88d2-4716-9ea8-979df46ee27a','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fpanther.jpg?alt=media&token=7e202ff5-9721-499a-aa99-5ab2d98a0083','Black Panther',80,3.5),(5,'MANGA','A comics about Cowboy Bepop','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fcowboy-bebop.jpg?alt=media&token=582a3f92-d74c-4dad-800c-6a7aaecaed49','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fcowboy-bebop.jpg?alt=media&token=b763073a-d2e3-4769-801e-913498f0dbfc','Cowboy Bepop',100,3.8),(6,'MARVEL','A comics about Spider-Man','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fspider-man.jpg?alt=media&token=db8225df-e6ac-4e73-8351-1afdc2c47665','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fspider-man.jpg?alt=media&token=ecdeddb9-063f-46ce-ba65-00ae854a88a5','Spider-Man',150,5),(7,'MANGA','A comics about Spider-Man','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fspy.webp?alt=media&token=a62b6077-a72c-400b-b1c7-bb5e2d395e1b','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fspy.webp?alt=media&token=f9f2e918-68c4-4217-9096-f1a603ff097d','Spy X Spy',127,4.2),(8,'MARVEL','A comics about Iron Man','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fironman.jpg?alt=media&token=98575066-7ad5-4e8c-8e4e-395606aa50ee','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fironman.jpg?alt=media&token=56258135-742f-4eec-ae7a-fc4da62c8034','Iron Man',120,4.6),(9,'MANGA','A comics about One Piece','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fone_piece.webp?alt=media&token=5be5be02-4aae-4016-b70c-83d11ba108d7','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fone_piece.webp?alt=media&token=d24e6d25-f7c6-4661-a13b-9720b5e03be6','One Piece',98,4.5),(10,'MANGA','A comics about Berserk','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fberserk.webp?alt=media&token=58e016e9-4f06-4d09-a454-1a053dd9e4f3','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fberserk.webp?alt=media&token=3c866cf2-1055-4015-bc22-20c296351d41','Berserk',99,4.9),(11,'MANGA','A Comics about One punch Man','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fone_punch.webp?alt=media&token=1015b8eb-5148-47f3-b996-41478b8d0167','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fone_punch.webp?alt=media&token=85f82461-0744-4544-b595-27fea258029f','One Punch Man',122,4.8),(12,'DC','A comics about teen titans','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fteen_titans_1_1.webp?alt=media&token=06cf0c7a-97c7-4b67-8646-830be6de36c3','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fteen_titans_1_1.webp?alt=media&token=2127ebf9-9216-4c4c-a0d9-e7e11f64e246','Teen Titans',48,4.5),(13,'MANGA','A comics about Jojo','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fjojolion-14.webp?alt=media&token=51577d53-d4af-48b6-a4f7-c4b675d7ddb7','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fjojolion-14.webp?alt=media&token=83b35e22-d6d2-4b72-8941-5f42e49d08af','JoJo Bizzare Adventure',78,4.7),(14,'DC','A comics about Penguin','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fpinguino-dolor-prejucio-dc-pocket.webp?alt=media&token=5c1e60bd-c0f4-4b99-995b-048a1d522476','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fpinguino-dolor-prejucio-dc-pocket.webp?alt=media&token=d9648340-7613-4066-b3ba-d2ddd03e19d0','Penguin',98,2.9),(15,'DC','A comics about Joker','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fjoker.jpg?alt=media&token=8f81277e-2d16-45ff-bde5-c6038be42871','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fjoker.jpg?alt=media&token=31632d41-d9d2-4334-9e75-099848f5d19e','Joker',120,4.5),(16,'MANGA','A comics about stars of chaos','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fstars-of-chaos-4.webp?alt=media&token=3af40947-072c-44b3-ad4f-04896bc40b5b','https://firebasestorage.googleapis.com/v0/b/comics-f8ea2.appspot.com/o/images%2Fstars-of-chaos-4.webp?alt=media&token=7fb7a233-0e1a-44a1-9a71-c682fa41b33a','Stars of Chaos',118,4.8);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16  2:53:07
