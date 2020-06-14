-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `community_id` int(10) unsigned DEFAULT NULL,
  `head` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_fk` (`user_id`),
  KEY `posts_media_id_fk` (`media_id`),
  KEY `posts_community_id_fk` (`community_id`),
  CONSTRAINT `posts_community_id_fk` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `posts_media_id_fk` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `posts_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,35,NULL,'dolores','Aliquid atque sit eos odio repellendus illo in. Quis ut odit id. Porro ea fugit exercitationem saepe fugit corrupti quod.',NULL,'2015-01-25 17:24:24','2020-05-06 12:54:46'),(2,48,9,'tempora','Enim aut alias quibusdam possimus. Officia officia qui numquam magnam nemo. Fugiat delectus inventore inventore est reiciendis nulla accusamus.',79,'2017-12-15 02:02:23','2020-05-06 13:01:13'),(3,35,NULL,'et','Dolore id molestias et dolorem quisquam error. Totam velit at id maxime. Quibusdam reiciendis beatae est. Expedita nihil totam voluptatibus ullam commodi.',NULL,'2018-03-28 05:03:45','2020-05-06 12:54:46'),(4,28,NULL,'laboriosam','Est ipsum optio quo suscipit nulla incidunt. Dolorum non sed rerum dolores. Placeat eius libero in voluptatem soluta nesciunt. Magni earum cumque distinctio eos.',99,'2015-11-19 19:16:51','2020-05-06 13:01:13'),(5,38,18,'consequatur','Veniam nesciunt harum dicta asperiores qui sed. Quia sed voluptatem consequuntur saepe et qui. Blanditiis voluptatibus fugit consectetur nostrum. Tempore nesciunt aliquid ut natus velit.',NULL,'2012-12-02 06:47:21','2020-05-06 12:54:46'),(6,5,20,'ab','Sit doloribus deleniti itaque totam quasi quis ratione. Quos error delectus distinctio exercitationem ea quia corporis. Inventore aut harum deleniti. Voluptatem voluptatibus nobis et dolorum itaque quis aliquid repellendus.',36,'2019-08-28 04:33:05','2020-05-06 13:01:13'),(7,9,6,'sint','Optio voluptas et ducimus quia. Fugiat porro aliquam soluta autem quibusdam veniam qui eligendi. Laudantium temporibus minus excepturi non et dolorum ducimus assumenda. Est perspiciatis consequuntur illum nostrum ad.',74,'2019-04-17 04:58:43','2020-05-06 13:01:13'),(8,31,9,'nesciunt','Eius in qui recusandae amet. Molestiae tempore dolorem facere incidunt fugiat tenetur. Est perferendis sed ad vel quam possimus. Quia corrupti blanditiis magni expedita odio tempora.',69,'2019-10-28 11:29:00','2020-05-06 13:01:13'),(9,26,12,'est','Enim asperiores nihil odio et. Minus iste temporibus non rerum voluptatem. Fugit id quia porro deleniti et exercitationem molestiae.',NULL,'2019-05-22 18:20:54','2020-05-06 12:54:46'),(10,38,18,'non','Aut dolor natus sit. Ut aut tempora optio error. Est sapiente officia voluptas ullam ut. Voluptatibus sequi modi et ea sit et.',NULL,'2014-01-19 19:27:22','2020-05-06 12:54:46'),(11,11,NULL,'nihil','Et ducimus nulla qui eligendi velit nostrum vitae. Et quas laboriosam voluptates sit similique distinctio expedita voluptates. Omnis culpa qui magni quia.',4,'2018-02-05 12:45:12','2020-05-06 13:01:13'),(12,38,18,'possimus','Quia vitae ea officia tempora rerum. Iusto ut dolorum perferendis architecto modi repellendus. Id rem eos commodi facilis incidunt temporibus. Cupiditate perferendis iste quasi et in et officiis.',NULL,'2010-05-27 15:23:24','2020-05-06 12:54:46'),(13,60,5,'magnam','Voluptatem et provident aut doloribus temporibus consequuntur dolor. Accusamus dolorum est veniam explicabo. Quia unde ut consequatur omnis accusamus mollitia et. Ut aspernatur ad animi quae eius corporis tempore.',NULL,'2015-09-25 11:04:35','2020-05-06 12:54:46'),(14,83,5,'qui','Repellat et aut amet repudiandae ut. Eveniet eos enim in nesciunt amet saepe. Voluptatem sit voluptatem molestiae quia. Adipisci dolorum deleniti eum sint et explicabo.',NULL,'2014-09-23 20:19:45','2020-05-06 12:54:46'),(15,36,10,'aspernatur','Perspiciatis magnam et aut error omnis id sit aut. Quibusdam labore cumque similique ullam laborum dicta. Atque iure et corporis.',7,'2019-10-25 19:59:14','2020-05-06 13:01:13'),(16,30,19,'tempore','Consequatur quidem deleniti ut quia. Voluptates laudantium placeat reprehenderit molestias temporibus. Voluptate in reiciendis sequi in doloribus.',NULL,'2013-11-04 10:43:12','2020-05-06 12:54:46'),(17,42,10,'sit','Ratione eveniet qui corrupti. Reiciendis aut natus eligendi suscipit. Quia suscipit inventore animi rem unde omnis voluptas laborum.',49,'2014-08-22 04:47:12','2020-05-06 13:01:23'),(18,18,12,'qui','Quod iste consequatur commodi aut corporis. Iste quisquam iure rerum aut. Praesentium qui non enim dolorum veniam explicabo eos. Qui reiciendis sequi ea voluptas dolorem expedita.',72,'2011-10-28 03:39:11','2020-05-06 13:01:13'),(19,62,12,'sit','Dolores nemo sint facilis amet distinctio dolorem architecto. Nam aut deleniti aspernatur impedit iure. Sapiente asperiores ut perspiciatis iste rerum earum est.',62,'2020-03-29 16:41:54','2020-05-06 13:01:13'),(20,58,12,'vero','Vel cum inventore eum incidunt autem quis ab. Est dolorem reiciendis quae quo ex sint. Aut hic eius repellat odit animi et. Odit eligendi sed ex beatae.',NULL,'2017-05-22 08:39:40','2020-05-06 12:54:46'),(21,3,19,'et','Iste in enim facere aliquid. Et dolor ea blanditiis qui magni ut. Aperiam porro voluptas ad reprehenderit consectetur dolores in deserunt.',33,'2017-07-13 08:46:19','2020-05-06 13:01:13'),(22,42,10,'dolores','Praesentium occaecati pariatur necessitatibus non nesciunt quisquam impedit. Sapiente sit magnam beatae veritatis nihil ea nihil occaecati. Officia consequuntur quidem vitae ullam.',3,'2012-10-03 00:28:36','2020-05-06 13:01:23'),(23,98,2,'ea','Temporibus quis ipsam quidem sit. Minima earum deserunt rem beatae sed vitae voluptas. Velit maiores in laborum molestias tenetur.',67,'2015-06-09 07:44:06','2020-05-06 13:01:13'),(24,63,NULL,'modi','Et consequatur enim tenetur accusantium repudiandae quia omnis. Excepturi eos architecto deleniti vero. Maxime harum iure quo iure molestiae. Odio omnis adipisci est et explicabo.',81,'2014-05-27 15:07:13','2020-05-06 13:01:13'),(25,21,8,'aut','Aliquam aut dicta minima dolores eligendi et doloremque. Sed optio corrupti nihil beatae et. Est architecto cum blanditiis quibusdam.',NULL,'2016-04-24 22:21:15','2020-05-06 12:54:46'),(26,16,8,'maiores','Accusamus reiciendis quaerat ducimus et magnam nihil ea. Consectetur sunt quis laborum quia. Pariatur voluptas consequatur molestiae quia. Quibusdam consequatur et voluptatem rem consequatur impedit tenetur vel.',93,'2010-10-27 10:26:00','2020-05-06 13:02:45'),(27,18,7,'eum','Nisi autem voluptatem dolorum non. Explicabo repudiandae inventore rerum. Ut sit iusto ut saepe dicta quia. Deleniti fugiat excepturi molestiae quo.',72,'2016-10-28 02:04:32','2020-05-06 13:01:13'),(28,38,18,'aut','Et nemo est blanditiis perferendis. Voluptas impedit distinctio nihil sit inventore. Esse et sed et tenetur quaerat quas ratione. Veniam in fugit est aperiam.',NULL,'2011-10-20 00:45:23','2020-05-06 12:54:46'),(29,39,8,'facilis','Et nam reiciendis quidem commodi facilis quisquam. Quis hic suscipit at inventore dolores. Iure ad excepturi assumenda aut odio eveniet. Eveniet doloremque nam sapiente in sint voluptas et pariatur. Recusandae alias eveniet incidunt voluptas et dolores.',34,'2014-09-03 09:31:56','2020-05-06 13:01:23'),(30,80,8,'reprehenderit','Eos ipsam molestiae inventore. Aut ut alias occaecati enim dolorem. Pariatur harum doloremque vitae dolor. Nihil id quasi quis atque sunt aspernatur eveniet.',NULL,'2016-10-02 21:18:07','2020-05-06 12:54:46'),(31,82,3,'vel','Non ad eos adipisci assumenda sit reprehenderit a et. Veniam veniam consectetur illum blanditiis fugit ut. Ducimus et repudiandae excepturi labore nulla sint. Et modi facilis ratione et deleniti nulla.',64,'2020-02-19 13:50:33','2020-05-06 13:01:13'),(32,68,NULL,'vel','Impedit laborum deleniti quia porro ab. Placeat est quia harum. Ab assumenda qui debitis sunt et ut.',8,'2018-04-15 15:30:40','2020-05-06 13:01:13'),(33,93,20,'quo','Et rerum ea neque quae nostrum. Nihil impedit repudiandae ipsam odit aperiam. Occaecati aut corrupti et quo deleniti. Sunt occaecati fuga iure quidem in consequuntur.',NULL,'2017-01-29 19:03:50','2020-05-06 12:54:46'),(34,62,12,'esse','Blanditiis omnis repellat soluta magnam quia minima odit a. Maxime iusto ullam eaque. Placeat voluptatibus a officia et aperiam consequatur dolores. Dolor aut ipsum perferendis atque.',10,'2018-02-17 17:12:17','2020-05-06 13:01:13'),(35,32,7,'vitae','Adipisci beatae omnis quia culpa et. Sunt distinctio animi ipsum consequatur voluptatem voluptate dolores. Aliquid quaerat modi voluptatem praesentium sunt.',28,'2019-12-25 07:16:27','2020-05-06 13:01:13'),(36,70,NULL,'dicta','Enim non et dolorem possimus. Nam id eos ex optio tempora. Sed debitis quos non aut. Sint officia quasi voluptatibus corporis nemo reprehenderit.',53,'2011-07-19 10:38:07','2020-05-06 13:01:13'),(37,56,8,'soluta','Rerum recusandae est dolore mollitia eos perferendis quo voluptatem. Dolores dolores eos ea voluptatibus.',58,'2017-07-20 13:53:03','2020-05-06 13:01:13'),(38,68,NULL,'sed','Vel eos omnis illo vel commodi non consequuntur. Occaecati eaque quod rerum adipisci saepe. Et quis qui recusandae debitis libero eum dignissimos. Unde qui illo laudantium quia.',8,'2019-08-30 00:52:17','2020-05-06 13:01:13'),(39,72,2,'dolorem','Et ea animi quasi iure laborum. Perferendis voluptatem consequuntur soluta sint adipisci adipisci quia. Assumenda autem ut reprehenderit totam.',NULL,'2013-07-04 14:43:58','2020-05-06 12:54:46'),(40,56,1,'ea','Et aspernatur sapiente deserunt ea suscipit sed. Qui cupiditate perferendis labore. Ut sit odit modi vitae ducimus.',58,'2012-10-03 22:01:11','2020-05-06 13:01:13'),(41,62,12,'labore','Est id culpa dolor et alias id. Magnam totam suscipit odio accusantium deleniti. Quos voluptatem dolorem et quo a reprehenderit nesciunt. Quia aut hic quaerat aliquam alias vel debitis.',62,'2016-03-02 12:02:02','2020-05-06 13:02:45'),(42,42,10,'magnam','Iure quod voluptas ut ea. Recusandae id et impedit fugiat ex quas esse.',3,'2019-06-15 05:08:08','2020-05-06 13:01:13'),(43,26,12,'aliquid','Quos dolorum modi et quo eveniet. Omnis expedita explicabo ut ullam provident sunt sed.',NULL,'2014-11-21 07:20:47','2020-05-06 12:54:46'),(44,1,12,'ut','Et sunt fugiat repellendus amet fugiat. Consequatur nam aspernatur aut nulla corporis natus. Mollitia voluptas ad numquam molestiae. Nisi ea qui libero dolore itaque nesciunt ut quo.',NULL,'2014-03-28 12:59:53','2020-05-06 12:54:46'),(45,27,13,'tempora','Soluta minima consequatur quidem ea corporis. Quibusdam deserunt est iste qui explicabo porro. Facere quo autem quaerat sed qui sapiente at.',13,'2019-07-13 19:26:40','2020-05-06 13:02:45'),(46,33,7,'molestiae','Doloribus expedita unde voluptate quae voluptate. Natus repudiandae quae amet consequuntur porro ut laboriosam. Asperiores inventore ea nisi incidunt. Et qui maiores consectetur omnis quo at placeat. Rerum a soluta error voluptatem id ea distinctio.',9,'2019-09-08 13:22:36','2020-05-06 13:01:13'),(47,82,3,'est','Aspernatur aut similique est rerum. Ut quae consequatur officia. Ad cum pariatur occaecati ut voluptatibus.',64,'2011-09-15 06:44:25','2020-05-06 13:01:13'),(48,11,NULL,'id','Veritatis porro dolor earum aut. Qui ut similique quam voluptate eos optio. Voluptatem commodi ut iste in. Explicabo animi et voluptas voluptatem assumenda dolores.',4,'2018-04-27 01:50:24','2020-05-06 13:01:13'),(49,10,13,'ex','Veritatis eum laborum vero a. Corporis qui quis ut eos. Repellendus animi hic et consequatur omnis nihil inventore. Sequi ut error quasi eum recusandae aut earum pariatur.',46,'2011-10-16 08:29:23','2020-05-06 13:01:13'),(50,17,14,'modi','In eaque rem est voluptatem. Repellat fugit nihil iste quidem tempore. Est voluptas et similique qui. Itaque vero vel neque dignissimos.',23,'2012-01-20 11:01:52','2020-05-06 13:01:13'),(51,53,NULL,'consequatur','Incidunt maiores eligendi sapiente voluptatibus itaque. Omnis est culpa nisi quisquam non voluptatibus. Ex repudiandae nihil facere repudiandae omnis repellat. Dolores provident non numquam ut.',73,'2016-07-05 12:55:28','2020-05-06 13:02:45'),(52,15,NULL,'nostrum','Aut veritatis consequatur et amet. Possimus ut error laboriosam. Quod minima officia qui ut minima sit tempora. Eum aspernatur ea itaque repellat.',NULL,'2015-07-15 21:48:06','2020-05-06 12:54:46'),(53,15,NULL,'qui','Doloribus harum sit alias est delectus nulla. Est rerum reprehenderit qui id qui illo repudiandae. Temporibus voluptatum nam aperiam eius ipsa quia harum.',NULL,'2013-10-06 02:52:55','2020-05-06 12:54:46'),(54,31,9,'accusantium','Voluptate libero aut iure quia quasi occaecati. Quas quaerat aperiam fugiat. Qui vitae sunt molestiae adipisci aspernatur esse dicta. Sint qui sunt unde aut rerum.',69,'2011-01-30 12:37:18','2020-05-06 13:01:13'),(55,8,19,'accusantium','Ea non facere consequatur et. Voluptatem quo perferendis quibusdam et et rerum. Qui ut excepturi in unde magni.',25,'2015-08-15 09:18:29','2020-05-06 13:01:13'),(56,49,NULL,'vitae','Doloremque ut nostrum beatae sed quia aut molestias. Eligendi saepe omnis earum. Enim animi ea corporis quisquam ut.',NULL,'2012-10-02 05:22:09','2020-05-06 12:54:46'),(57,18,7,'maxime','Aliquid sit maxime occaecati et perferendis officia. Voluptas asperiores sunt et repudiandae. Modi natus omnis eum ab nihil doloribus sed. Ut ab occaecati dolor odit consequatur.',72,'2018-03-21 23:10:07','2020-05-06 13:01:13'),(58,42,10,'autem','Ea suscipit laudantium vitae aut accusamus dolorem. Et ut modi voluptates atque voluptas omnis. Est asperiores impedit quia doloribus. Corporis quo unde facere asperiores libero.',49,'2013-04-05 07:28:57','2020-05-06 13:01:23'),(59,56,1,'vel','Doloribus recusandae facere sapiente magni reiciendis doloribus consectetur similique. Officiis deserunt at aut ipsa fuga nihil laudantium necessitatibus. Tempora officia eos ducimus molestiae optio. Vel ut numquam facilis ducimus ut explicabo ut.',58,'2013-11-03 02:49:59','2020-05-06 13:01:13'),(60,54,18,'ea','Consequatur eum assumenda iure eos et. Voluptate repellat sit nulla qui velit quia quos. Illum eum asperiores aut voluptas dolorem aut.',63,'2018-01-17 14:20:19','2020-05-06 13:01:13'),(61,1,12,'laudantium','Labore qui quaerat aut omnis. Repellendus et dolores nemo minima quis facere. Qui fuga omnis cumque aut quia molestias a. Molestiae harum aliquam dolorem.',NULL,'2011-04-14 06:46:44','2020-05-06 12:54:46'),(62,45,NULL,'voluptate','Pariatur ratione ut eos doloribus. Ipsam aut ipsam amet dolorum. Distinctio et similique qui esse impedit culpa quia rerum.',NULL,'2011-10-18 18:07:02','2020-05-06 12:54:46'),(63,19,NULL,'quis','Ut laborum et distinctio voluptate sit. Magnam ut ut delectus eius maxime accusamus alias nostrum. Veritatis autem quam fugiat sint voluptatum est tempore. Vero odit deleniti ipsa et.',NULL,'2011-07-21 19:30:12','2020-05-06 12:54:46'),(64,60,5,'vero','Vel perspiciatis sit perspiciatis sunt. Illo et sint in qui reprehenderit laudantium rerum quibusdam. Exercitationem eaque est et aut laborum excepturi ducimus.',NULL,'2019-03-04 17:11:41','2020-05-06 12:54:46'),(65,44,19,'quis','Ex et repudiandae ullam repudiandae quis cum. Ea ut libero quo quasi qui fugit libero necessitatibus. Quos fugiat fugit animi dolor harum adipisci.',NULL,'2011-03-21 12:34:03','2020-05-06 12:54:46'),(66,38,18,'rerum','Laborum deleniti asperiores quidem facere. Sit quaerat voluptas sint maxime. Dolor recusandae est maxime qui odit eum architecto. Et soluta consequatur ut est.',NULL,'2016-11-20 19:31:30','2020-05-06 12:54:46'),(67,59,12,'id','Qui velit molestiae labore. Neque alias et et. Architecto et autem cupiditate sint possimus. Omnis aperiam consequuntur magnam optio laudantium. In ex delectus facilis voluptatem dolorem magni.',77,'2011-08-22 23:01:41','2020-05-06 13:01:13'),(68,78,1,'atque','Dignissimos veniam optio et sunt. Laboriosam nisi aspernatur quis aperiam. Laudantium modi et sit natus. Et et architecto inventore iure qui et.',NULL,'2019-05-29 23:35:54','2020-05-06 12:54:46'),(69,14,NULL,'architecto','Sint officia veritatis velit et. Aperiam quia ut aut esse. Voluptate sit et nulla nihil. Ab et perspiciatis amet nesciunt enim quaerat animi.',NULL,'2012-07-14 04:15:15','2020-05-06 12:54:46'),(70,36,2,'voluptas','Consequatur aliquid incidunt totam dolor fugiat dolores ipsam sit. Autem ipsam dolorem illum corrupti. Dolor eius tempora et in adipisci unde. Quibusdam consequatur rem neque quos quo dignissimos.',7,'2017-11-11 22:04:44','2020-05-06 13:01:13'),(71,36,10,'dicta','Magni itaque atque aliquid dolore dolorem totam facere. Et aut et sunt deleniti beatae. Sapiente natus quia nesciunt quae. Ut quia voluptas laborum soluta aut sit.',7,'2017-04-13 05:11:17','2020-05-06 13:01:13'),(72,72,2,'doloribus','Non ex esse mollitia eveniet pariatur. Sed accusamus quia id odit. Atque nobis sed sequi enim ut fuga. In ut laborum eligendi molestiae atque. Et quam neque dicta soluta aperiam.',NULL,'2011-01-05 13:07:59','2020-05-06 12:54:46'),(73,53,NULL,'et','Laboriosam sapiente autem sed in qui. Qui ipsa laudantium sunt magnam. Est non consequatur veniam ex. Quia sed nesciunt illo alias saepe pariatur.',73,'2015-06-20 16:04:49','2020-05-06 13:02:45'),(74,49,NULL,'et','Alias fugit ipsa error rerum. Consequatur in voluptatem et tempore. Illo consequuntur expedita beatae vero dignissimos molestiae. Enim quaerat rerum omnis vitae aperiam ratione.',NULL,'2011-11-01 16:54:53','2020-05-06 12:54:46'),(75,83,5,'sed','Repellat accusantium saepe libero minima est laudantium est. Veritatis odio voluptas magni porro nostrum. Mollitia id harum quia saepe adipisci. Suscipit et qui ab aut earum non. Aliquam totam mollitia accusamus nobis.',NULL,'2019-01-07 21:16:20','2020-05-06 12:54:46'),(76,69,4,'ad','Eum optio magni expedita velit recusandae et molestiae. Similique et eum enim maiores dolor explicabo. Sit est ab illum totam corrupti unde. Necessitatibus consequatur ut sequi odit vitae fugiat.',21,'2011-02-10 03:51:21','2020-05-06 13:01:13'),(77,93,14,'et','Porro vel vel autem possimus non qui. Nostrum fugiat et aliquam adipisci et ut. Omnis deleniti eaque fugit odit voluptas.',NULL,'2015-12-30 04:20:41','2020-05-06 12:54:46'),(78,60,5,'provident','Ex aut voluptatem facilis sed sunt. Dolor rerum voluptates similique magni. Optio quod ipsa illo beatae. Rem id deleniti qui omnis odio qui mollitia.',NULL,'2014-02-05 11:30:20','2020-05-06 12:54:46'),(79,19,NULL,'repudiandae','Ut atque perferendis impedit earum quia reiciendis vitae. Ducimus nemo voluptatem officia provident voluptatem quo deserunt. Ad rerum harum quod vero. Aliquid minus molestiae rem.',NULL,'2013-10-13 21:51:01','2020-05-06 12:54:46'),(80,16,8,'deleniti','Est voluptas dicta tempore ad sunt dolore. Veritatis non inventore voluptatibus quis. Enim voluptas nam error ea natus exercitationem architecto.',39,'2017-11-30 15:08:51','2020-05-06 13:01:13'),(81,23,9,'totam','Temporibus cumque nemo veniam vel et accusamus. Pariatur consequuntur autem maiores sed. Quo dignissimos reiciendis quis. Qui exercitationem facere reprehenderit modi dolorum.',50,'2015-12-15 11:43:01','2020-05-06 13:01:13'),(82,64,14,'et','Sit deserunt laborum debitis mollitia illo dolores. Fugiat nihil consequatur voluptatibus et rem. Alias id animi aut nesciunt rerum nihil.',NULL,'2020-03-24 20:14:22','2020-05-06 12:54:46'),(83,51,11,'labore','Fuga non mollitia mollitia illo tempora in eveniet. Provident molestias deserunt nostrum maiores. Occaecati aut dignissimos est magni. Impedit consequuntur laudantium sit qui ad reiciendis quibusdam.',18,'2019-04-05 02:20:12','2020-05-06 13:01:13'),(84,61,4,'dolores','Laborum veritatis aut non dolores. Odit pariatur et velit nulla deleniti magni veniam. Libero et veniam recusandae a.',92,'2019-10-03 17:19:53','2020-05-06 13:01:13'),(85,52,NULL,'perferendis','Tenetur minima quia et. Temporibus eaque ipsam itaque cumque veniam unde impedit nemo. Est tempore qui sit.',59,'2012-09-16 17:49:36','2020-05-06 13:01:13'),(86,79,3,'ipsa','Voluptatem quia quia tempore. Commodi qui dolore laboriosam vero culpa nostrum repellendus voluptas. Sed eum perspiciatis rerum qui minus ut incidunt.',NULL,'2013-10-22 05:29:36','2020-05-06 12:54:46'),(87,36,2,'earum','Vero occaecati dolorem consequatur aut aut odit. Voluptate aliquid voluptatem iste pariatur molestiae. Eum est sed odio asperiores. A explicabo nobis quo possimus fugit eum error.',7,'2013-04-12 07:09:21','2020-05-06 13:01:13'),(88,44,18,'dolorem','Eum quasi vero atque animi aut nihil. Deserunt reiciendis totam officiis illo aut amet aliquid. Itaque dicta doloremque quisquam optio et voluptas sequi.',NULL,'2016-05-29 02:03:39','2020-05-06 12:54:46'),(89,12,1,'saepe','Facere qui dolores ducimus a. Velit porro eius non delectus alias vitae tempore. Facere dignissimos nam deserunt vel nesciunt inventore eos.',24,'2016-10-19 14:10:38','2020-05-06 13:01:13'),(90,26,12,'laborum','Sunt consequatur quo sequi iusto explicabo. Dolores est provident fugit. Accusantium repellendus suscipit eligendi et.',NULL,'2013-07-08 22:02:09','2020-05-06 12:54:46'),(91,95,13,'consequuntur','Eum rerum perspiciatis sunt ipsam ut. Consequatur et voluptatibus facilis sunt. Hic voluptate voluptas pariatur consequatur recusandae. Fugiat placeat aut eos vel illum.',86,'2013-04-27 21:05:48','2020-05-06 13:01:13'),(92,96,5,'neque','Assumenda eaque vel dolores natus ullam est. Vero veritatis dolorum qui cum nam. Consequatur dignissimos dolorem eos nesciunt.',48,'2019-04-03 20:39:57','2020-05-06 13:02:45'),(93,95,13,'ducimus','Ut nisi occaecati minus voluptatem. Quia adipisci quam voluptatum velit cumque explicabo. Temporibus et consectetur aliquid necessitatibus itaque similique ipsam. Esse ab excepturi eaque dicta est.',86,'2016-08-23 20:13:28','2020-05-06 13:01:13'),(94,86,12,'cumque','Tempore sit aut expedita. Molestiae quis numquam autem libero est eos et rerum. Minima quam qui tempora rem.',75,'2015-06-25 08:33:30','2020-05-06 13:01:13'),(95,45,NULL,'ut','Voluptatem hic omnis deserunt tenetur recusandae et. Sequi nihil quia quisquam praesentium praesentium. Debitis qui deleniti autem dolor aut voluptatibus.',NULL,'2020-03-14 12:53:15','2020-05-06 12:54:46'),(96,68,NULL,'eos','Quaerat earum et voluptate qui. Blanditiis minus rem occaecati. In et consectetur perferendis repellat sequi sunt voluptatibus.',8,'2017-10-06 12:10:39','2020-05-06 13:01:13'),(97,5,16,'placeat','Dolores consequatur quia necessitatibus architecto. Quam corrupti distinctio quisquam sit voluptas fuga quisquam.',36,'2015-06-25 23:46:35','2020-05-06 13:01:13'),(98,18,12,'animi','Sunt dolorem est soluta repudiandae. Minus vel quo ut repudiandae. Sed nihil exercitationem aut recusandae.',72,'2017-03-06 01:27:00','2020-05-06 13:01:13'),(99,75,NULL,'amet','Similique eius architecto ullam magnam et accusamus aut quos. Quia asperiores porro repellendus dolor sunt et nesciunt corrupti. Itaque fugit dignissimos neque nam.',NULL,'2017-05-30 04:42:14','2020-05-06 12:54:46'),(100,21,8,'voluptatem','Similique eaque sit quia qui deleniti dolorem ipsa accusamus. Incidunt voluptatem quam necessitatibus quibusdam iure omnis et et. Veritatis id officiis nulla quo ut hic neque.',NULL,'2018-11-27 05:22:41','2020-05-06 12:54:46');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-06 13:04:26