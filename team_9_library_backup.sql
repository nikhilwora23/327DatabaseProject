CREATE DATABASE  IF NOT EXISTS `social_media` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `social_media`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: social_media
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Temporary view structure for view `avg_tweet_length_nonverified_view3`
--

DROP TABLE IF EXISTS `avg_tweet_length_nonverified_view3`;
/*!50001 DROP VIEW IF EXISTS `avg_tweet_length_nonverified_view3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_tweet_length_nonverified_view3` AS SELECT 
 1 AS `user_handle`,
 1 AS `Average Tweet Length`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_tweet_length_verified_view2`
--

DROP TABLE IF EXISTS `avg_tweet_length_verified_view2`;
/*!50001 DROP VIEW IF EXISTS `avg_tweet_length_verified_view2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_tweet_length_verified_view2` AS SELECT 
 1 AS `user_handle`,
 1 AS `Average Tweet Length`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `most_popular_num_hastags_view1`
--

DROP TABLE IF EXISTS `most_popular_num_hastags_view1`;
/*!50001 DROP VIEW IF EXISTS `most_popular_num_hastags_view1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_popular_num_hastags_view1` AS SELECT 
 1 AS `num_of_hashtags`,
 1 AS `frequency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pct_of_visual_tweets_view4`
--

DROP TABLE IF EXISTS `pct_of_visual_tweets_view4`;
/*!50001 DROP VIEW IF EXISTS `pct_of_visual_tweets_view4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pct_of_visual_tweets_view4` AS SELECT 
 1 AS `Percentage of Visual Tweets`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `shortest_tweetlength_awards_view6`
--

DROP TABLE IF EXISTS `shortest_tweetlength_awards_view6`;
/*!50001 DROP VIEW IF EXISTS `shortest_tweetlength_awards_view6`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `shortest_tweetlength_awards_view6` AS SELECT 
 1 AS `Shortest Tweet Length with an Award`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sum_likes_eachuser_view5`
--

DROP TABLE IF EXISTS `sum_likes_eachuser_view5`;
/*!50001 DROP VIEW IF EXISTS `sum_likes_eachuser_view5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sum_likes_eachuser_view5` AS SELECT 
 1 AS `user_handle`,
 1 AS `sum_of_likes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_tweets_of_allusers_view7`
--

DROP TABLE IF EXISTS `top_tweets_of_allusers_view7`;
/*!50001 DROP VIEW IF EXISTS `top_tweets_of_allusers_view7`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_tweets_of_allusers_view7` AS SELECT 
 1 AS `user_id`,
 1 AS `user_handle`,
 1 AS `total_followers`,
 1 AS `total_following`,
 1 AS `verified`,
 1 AS `User Top Tweet Text`,
 1 AS `Top Tweet Date`,
 1 AS `Total Likes of Top Tweet`,
 1 AS `Total retweets of top tweet`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tweet_award_link`
--

DROP TABLE IF EXISTS `tweet_award_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweet_award_link` (
  `tweet_id` int(11) NOT NULL,
  `award_id` int(11) NOT NULL,
  UNIQUE KEY `tweet_id_UNIQUE` (`tweet_id`),
  UNIQUE KEY `award_id_UNIQUE` (`award_id`),
  CONSTRAINT `award_idLink2` FOREIGN KEY (`award_id`) REFERENCES `tweet_awards` (`award_id`),
  CONSTRAINT `tweet_idLink2` FOREIGN KEY (`tweet_id`) REFERENCES `tweet_info` (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet_award_link`
--

LOCK TABLES `tweet_award_link` WRITE;
/*!40000 ALTER TABLE `tweet_award_link` DISABLE KEYS */;
INSERT INTO `tweet_award_link` VALUES (5,1),(10,2),(15,3),(20,4),(25,5),(30,6);
/*!40000 ALTER TABLE `tweet_award_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweet_awards`
--

DROP TABLE IF EXISTS `tweet_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweet_awards` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_name` varchar(200) DEFAULT NULL,
  `award_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet_awards`
--

LOCK TABLES `tweet_awards` WRITE;
/*!40000 ALTER TABLE `tweet_awards` DISABLE KEYS */;
INSERT INTO `tweet_awards` VALUES (1,'Most Likes ','Most likes in 2019 by any user.'),(2,'Most Retweets ','Most retweets in 2019 by any user.'),(3,'Most Likes/Retweets Combined','Most Likes/Retweets combined by any user.'),(4,'Non-Verified Most Likes','Most likes in 2019 by any user not an influencer.'),(5,'Non-Verified most Retweets ','Most retweets in 2019 by any user not an influencer'),(6,'Non-Verified most Likes/Retweets Combined','Most Likes/Retweets combined by any user not an influencer.');
/*!40000 ALTER TABLE `tweet_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweet_content`
--

DROP TABLE IF EXISTS `tweet_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweet_content` (
  `tweet_id` int(11) NOT NULL AUTO_INCREMENT,
  `tweet_text` varchar(500) DEFAULT NULL,
  `tweet_length` int(11) DEFAULT NULL,
  `num_of_hashtags` int(11) DEFAULT NULL,
  KEY `tweet_id_idx` (`tweet_id`),
  CONSTRAINT `tweet_id` FOREIGN KEY (`tweet_id`) REFERENCES `tweet_info` (`tweet_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet_content`
--

LOCK TABLES `tweet_content` WRITE;
/*!40000 ALTER TABLE `tweet_content` DISABLE KEYS */;
INSERT INTO `tweet_content` VALUES (1,'Go Skins! #Finally ',19,1),(2,'Wow my spotify wrapped in a year is amazing #music #gunna #rap',62,3),(3,'Andrew Wiggins Putback Dunk #Terps',34,1),(4,'Why is venmo down right now? #Ineedmymoneynow',45,1),(5,'Why are boys so mean?',21,0),(6,'i am thankful for having a paner. #thankful #positive',53,2),(7,'Baby on Baby #Suge',18,1),(8,'retweet if you agree!',21,0),(9,'I love Rowan Atkinson',21,0),(10,'as we all know, essential oils are not made of chemicals.',57,0),(11,'Nadal #Tennis #Goat',19,2),(12,'beautiful sign by vendor 80 for $45.00!! #upsideofflorida #shopalyssas #love',76,3),(13,'He is the frontrunner for the award right now',45,0),(14,'INST327 proposal has not been regraded yet #placeholder #omg',60,2),(15,'He said he was going to bring back a championship to DC #Loser',62,1),(16,'i am thankful for sunshine. #thankful #positive',47,2),(17,'This show is crazy #BabyYoda',28,1),(18,'yup, being a knicks fan is hard, so its easier to just be an nba fan when the playoffs roll around ',99,0),(19,'WOW #Insane #Crazy #Greatness',29,3),(20,'my mom shares the same birthday as @JustinTimberlake see you this weekend!',74,0),(21,'i am amazing. #i_am #positive #affirmation',42,2),(22,'you\'ve really hu my feelings :( #hurt #sad',42,2),(23,'now on monday nights at 8pm on #up channel!!!! i finally get to see what all the fuss is about!!!',97,0),(24,'yes! received my acceptance letter for my masters so will be back at Hofstra again in october! #goodtimes #history',114,2),(25,'daughter riding her bike around driveway, son playing his guitar for us while we enjoy by the campfire... #summeime #memories',125,2),(26,'there are some truly sick ppl out there.',40,0),(27,'going to la tomorrow!!!',23,0),(28,'i am thankful for good friends. #thankful #positive',51,2),(29,'aww yeah it\'s all good bing bong bing bong',42,0),(30,'it seems like the only place with action here is montreal :(',60,0);
/*!40000 ALTER TABLE `tweet_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweet_info`
--

DROP TABLE IF EXISTS `tweet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweet_info` (
  `tweet_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_date` date DEFAULT NULL,
  `total_likes` int(11) DEFAULT NULL,
  `total_retweets` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`tweet_id`),
  UNIQUE KEY `tweet_id_UNIQUE` (`tweet_id`),
  KEY `user_idTweet_idx` (`user_id`),
  CONSTRAINT `user_idTweet` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet_info`
--

LOCK TABLES `tweet_info` WRITE;
/*!40000 ALTER TABLE `tweet_info` DISABLE KEYS */;
INSERT INTO `tweet_info` VALUES (1,'2019-11-03',10,3,1),(2,'2019-11-04',8,2,1),(3,'2019-11-05',30,19,2),(4,'2019-11-06',14,10,2),(5,'2019-11-07',3000,120,3),(6,'2019-11-08',214,55,3),(7,'2019-11-09',21,97,4),(8,'2019-11-10',82,1284,4),(9,'2019-11-11',48,32,5),(10,'2019-11-12',94,9000,5),(11,'2019-11-13',1888,1284,6),(12,'2019-11-14',9,8,6),(13,'2019-11-15',7,91,7),(14,'2019-11-16',23,82,7),(15,'2019-11-17',2500,2102,8),(16,'2019-11-18',1291,2182,8),(17,'2019-11-19',97,72,9),(18,'2019-11-20',7,1842,9),(19,'2019-11-21',96,94,10),(20,'2019-11-22',2000,87,10),(21,'2019-11-23',44,7,11),(22,'2019-11-24',21,99,11),(23,'2019-11-25',2488,17,12),(24,'2019-11-26',59,20,12),(25,'2019-11-27',8,7500,13),(26,'2019-11-28',84,184,13),(27,'2019-11-29',72,2241,14),(28,'2019-11-30',60,109,14),(29,'2019-12-01',128,8142,15),(30,'2019-12-02',7231,4829,15);
/*!40000 ALTER TABLE `tweet_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweet_visual_link`
--

DROP TABLE IF EXISTS `tweet_visual_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweet_visual_link` (
  `tweet_id` int(11) NOT NULL,
  `visual_id` int(11) NOT NULL,
  UNIQUE KEY `tweet_id_UNIQUE` (`tweet_id`),
  UNIQUE KEY `visual_id_UNIQUE` (`visual_id`),
  CONSTRAINT `tweet_idLink` FOREIGN KEY (`tweet_id`) REFERENCES `tweet_info` (`tweet_id`),
  CONSTRAINT `visual_idLink` FOREIGN KEY (`visual_id`) REFERENCES `visuals` (`visual_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet_visual_link`
--

LOCK TABLES `tweet_visual_link` WRITE;
/*!40000 ALTER TABLE `tweet_visual_link` DISABLE KEYS */;
INSERT INTO `tweet_visual_link` VALUES (1,1),(3,2),(5,3),(7,4),(9,5),(11,6),(13,7),(15,8),(17,9),(19,10);
/*!40000 ALTER TABLE `tweet_visual_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_handle` varchar(45) DEFAULT NULL,
  `total_followers` int(11) DEFAULT NULL,
  `total_following` int(11) DEFAULT NULL,
  `verified` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'Andy Loftus',422,355,'No'),(2,'Nikhil Wora',558,1020,'Yes'),(3,'Shruti Kumar',402,329,'Yes'),(4,'Evan DiMartinis',799,899,'No'),(5,'Robert York',824,900,'Yes'),(6,'Amanda Yee',542,2032,'No'),(7,'Pamela Duffy',234,4290,'No'),(8,'Howard Cooke',1240,3922,'Yes'),(9,'Drew Stewart',1092,999,'No'),(10,'Ryan Ball',2042,2309,'No'),(11,'Sasha Dock',4209,8900,'Yes'),(12,'Chris Tomlin',2100,1894,'No'),(13,'Stewart Scott',1200,4727,'No'),(14,'Anabelle Potts',742,3289,'Yes'),(15,'Haley Hall',832,329,'No');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `visual_text_view8`
--

DROP TABLE IF EXISTS `visual_text_view8`;
/*!50001 DROP VIEW IF EXISTS `visual_text_view8`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `visual_text_view8` AS SELECT 
 1 AS `visual_id`,
 1 AS `visual_name`,
 1 AS `visual_size_kb`,
 1 AS `tweet_text`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `visuals`
--

DROP TABLE IF EXISTS `visuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visuals` (
  `visual_id` int(11) NOT NULL AUTO_INCREMENT,
  `visual_name` varchar(45) DEFAULT NULL,
  `visual_size_kb` int(11) DEFAULT NULL,
  PRIMARY KEY (`visual_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visuals`
--

LOCK TABLES `visuals` WRITE;
/*!40000 ALTER TABLE `visuals` DISABLE KEYS */;
INSERT INTO `visuals` VALUES (1,'Dwayne Haskins TD Pass',96),(2,'Maryland Basketball Promo Video',3000),(3,'Angry Friend Text Screenshot',29),(4,'DaBaby Music Video',2300),(5,'Mr Bean GIF',99),(6,'Roger Federer Highlights',1000),(7,'Lamar Jackson MVP',30),(8,'Bryce Harper Crying',69),(9,'Mandalorian Preview',1400),(10,'One Handed Catch OBJ',2300);
/*!40000 ALTER TABLE `visuals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `avg_tweet_length_nonverified_view3`
--

/*!50001 DROP VIEW IF EXISTS `avg_tweet_length_nonverified_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_tweet_length_nonverified_view3` AS select `user_info`.`user_handle` AS `user_handle`,format(avg(`tweet_content`.`tweet_length`),0) AS `Average Tweet Length` from ((`tweet_content` join `tweet_info` on((`tweet_content`.`tweet_id` = `tweet_info`.`tweet_id`))) join `user_info` on((`tweet_info`.`user_id` = `user_info`.`user_id`))) where (`user_info`.`verified` = 'No') group by `tweet_info`.`user_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_tweet_length_verified_view2`
--

/*!50001 DROP VIEW IF EXISTS `avg_tweet_length_verified_view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_tweet_length_verified_view2` AS select `user_info`.`user_handle` AS `user_handle`,format(avg(`tweet_content`.`tweet_length`),0) AS `Average Tweet Length` from ((`tweet_content` join `tweet_info` on((`tweet_content`.`tweet_id` = `tweet_info`.`tweet_id`))) join `user_info` on((`tweet_info`.`user_id` = `user_info`.`user_id`))) where (`user_info`.`verified` = 'Yes') group by `tweet_info`.`user_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_popular_num_hastags_view1`
--

/*!50001 DROP VIEW IF EXISTS `most_popular_num_hastags_view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_popular_num_hastags_view1` AS select `c`.`num_of_hashtags` AS `num_of_hashtags`,count(`c`.`num_of_hashtags`) AS `frequency` from (`tweet_content` `c` join `tweet_info` `i` on((`c`.`tweet_id` = `i`.`tweet_id`))) where (`i`.`total_likes` > 1000) group by `c`.`num_of_hashtags` order by `c`.`num_of_hashtags` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pct_of_visual_tweets_view4`
--

/*!50001 DROP VIEW IF EXISTS `pct_of_visual_tweets_view4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pct_of_visual_tweets_view4` AS select format(concat((((select count(`visuals`.`visual_id`) from ((`visuals` join `tweet_visual_link` on((`visuals`.`visual_id` = `tweet_visual_link`.`visual_id`))) join `tweet_info` on((`tweet_visual_link`.`tweet_id` = `tweet_info`.`tweet_id`)))) / count(`tweet_info`.`tweet_id`)) * 100),'%'),2) AS `Percentage of Visual Tweets` from `tweet_info` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `shortest_tweetlength_awards_view6`
--

/*!50001 DROP VIEW IF EXISTS `shortest_tweetlength_awards_view6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `shortest_tweetlength_awards_view6` AS select min(`tweet_content`.`tweet_length`) AS `Shortest Tweet Length with an Award` from `tweet_content` where `tweet_content`.`tweet_id` in (select `tweet_award_link`.`tweet_id` from `tweet_award_link`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sum_likes_eachuser_view5`
--

/*!50001 DROP VIEW IF EXISTS `sum_likes_eachuser_view5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sum_likes_eachuser_view5` AS select `user_info`.`user_handle` AS `user_handle`,sum(`tweet_info`.`total_likes`) AS `sum_of_likes` from (`tweet_info` join `user_info` on((`tweet_info`.`user_id` = `user_info`.`user_id`))) group by `tweet_info`.`user_id` order by `sum_of_likes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_tweets_of_allusers_view7`
--

/*!50001 DROP VIEW IF EXISTS `top_tweets_of_allusers_view7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_tweets_of_allusers_view7` AS select `ui`.`user_id` AS `user_id`,`ui`.`user_handle` AS `user_handle`,`ui`.`total_followers` AS `total_followers`,`ui`.`total_following` AS `total_following`,`ui`.`verified` AS `verified`,`tc`.`tweet_text` AS `User Top Tweet Text`,`ti`.`post_date` AS `Top Tweet Date`,max(`ti`.`total_likes`) AS `Total Likes of Top Tweet`,`ti`.`total_retweets` AS `Total retweets of top tweet` from ((`user_info` `ui` join `tweet_info` `ti` on((`ui`.`user_id` = `ti`.`user_id`))) join `tweet_content` `tc` on((`ti`.`tweet_id` = `tc`.`tweet_id`))) group by `ui`.`user_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `visual_text_view8`
--

/*!50001 DROP VIEW IF EXISTS `visual_text_view8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `visual_text_view8` AS select `v`.`visual_id` AS `visual_id`,`v`.`visual_name` AS `visual_name`,`v`.`visual_size_kb` AS `visual_size_kb`,`tc`.`tweet_text` AS `tweet_text` from ((`visuals` `v` join `tweet_visual_link` `tvl` on((`v`.`visual_id` = `tvl`.`visual_id`))) join `tweet_content` `tc` on((`tvl`.`tweet_id` = `tc`.`tweet_id`))) group by `v`.`visual_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 17:37:06
