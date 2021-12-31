-- MariaDB dump 10.19  Distrib 10.5.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: livewire_practica
-- ------------------------------------------------------
-- Server version	10.5.13-MariaDB-1:10.5.13+maria~bullseye

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (16,'2014_10_12_000000_create_users_table',1),(17,'2014_10_12_100000_create_password_resets_table',1),(18,'2019_08_19_000000_create_failed_jobs_table',1),(19,'2019_12_14_000001_create_personal_access_tokens_table',1),(20,'2021_12_27_204450_create_posts_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Quam doloremque officiis numquam sequi.','Qui natus et totam labore sunt in adipisci. Maxime aperiam quasi sint ducimus consequuntur.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(2,'Ad libero distinctio est.','Officia adipisci similique amet beatae. Magnam laudantium sint aut tempore nihil architecto sit. Totam rem ut fuga aut consectetur iusto.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(3,'Alias repellat ut consectetur occaecati.','Dolores ipsa atque aliquam ut. Quaerat odio architecto non nihil sed sed rerum.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(4,'Nam nihil sed reiciendis numquam.','Adipisci ut repudiandae autem. Voluptatem eum quia vel illum. Veniam culpa nihil ut et. Sunt quis veniam blanditiis cum eligendi. Sequi ut numquam aut omnis fugit aut.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(5,'Neque consequatur porro a neque.','Ducimus quod sunt sequi. Debitis ex consequuntur iusto vero. Doloremque nam est quia dolorum. Vel unde et sit ut modi aut.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(6,'Et voluptas perferendis voluptates est eveniet est.','Unde blanditiis ex dolorum repudiandae sequi. Facere repellat illum earum aut. Ipsa nihil voluptatibus nihil soluta.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(7,'Ut blanditiis voluptatem consequatur dolor voluptate esse.','Et ratione ab culpa nisi eos rerum nemo deserunt. Sit ullam sit vel voluptatem molestiae. Sunt dolore nihil sequi et.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(8,'Harum dolores voluptatem ab consequatur.','Aut placeat harum doloribus non ut qui ea. Nihil sequi reprehenderit debitis architecto facilis quia. Vel ipsa dolor quam similique suscipit. Officiis soluta nisi ipsum officiis id.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(10,'Similique tempora aspernatur ad facere molestiae.','Et quia voluptates error fuga quia aperiam assumenda in. Eius et autem velit ea aliquam accusantium nihil. Modi dolores temporibus vel similique similique.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(11,'Illo illum dolorem ullam odio enim.','Tempore veniam nobis enim et asperiores hic et magni. Asperiores tempora sapiente est facilis sapiente totam quo. Non consectetur aliquam dolore occaecati omnis dolorem.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(12,'Sed enim quo officiis modi.','Explicabo voluptas vitae consequatur sequi. Laudantium non sed quia quos velit eum sapiente qui. Rem unde commodi ea necessitatibus.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(13,'Repellendus accusamus rerum quia voluptatem consequatur vero iure.','Magnam qui aut voluptas. Non facilis voluptate laudantium id voluptatum. Animi enim cupiditate ut aspernatur ut sequi voluptas.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(14,'Et est cumque aliquid.','Placeat voluptatem qui aut non distinctio doloribus. Eos qui qui velit possimus provident est odio. Sed accusamus accusamus quo doloribus.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(15,'Sit omnis dolorem voluptas commodi natus blanditiis excepturi deserunt.','Beatae qui ea asperiores a. Voluptatem nesciunt id unde cupiditate explicabo. Aut velit repellendus dolorem tenetur eos. Sit corporis cumque dolor qui.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(16,'Aut pariatur aliquid atque voluptatem voluptatibus debitis.','Placeat cum corporis eligendi quis et cupiditate. Nihil cum assumenda illum beatae. Vel possimus blanditiis cumque perferendis similique ab ipsum earum.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(17,'Autem inventore iste enim cupiditate temporibus quo.','Pariatur et fugit dolores quia necessitatibus fugit rerum. In ut eos nesciunt.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(18,'Laudantium delectus consequuntur vel illo ducimus qui.','Expedita dicta modi eum sit alias in. Quidem porro consequuntur eius delectus molestias cum quidem. Sed exercitationem sint omnis rerum. Eos sit ut distinctio ipsam. Ut qui non sequi accusantium.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(19,'Excepturi debitis qui officiis architecto consequatur consequuntur.','Aut sunt voluptates deserunt fugiat. Enim eum dolor excepturi. Quod deserunt eius mollitia hic. A aspernatur doloremque voluptatum at placeat.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(20,'Sapiente ut dolorem et corporis deserunt velit atque.','Eum facere repellendus ipsum molestiae. Ut id suscipit est consequatur autem rem qui. Et illum similique dignissimos ad hic quos officiis assumenda. Dolores officia dolores itaque sint illum amet.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(21,'Harum autem laborum quidem qui cum amet.','Voluptatibus non quisquam excepturi temporibus nemo distinctio. Sequi veniam minima veritatis iusto cupiditate. Est soluta doloribus delectus magnam ut.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(22,'Aut iusto explicabo tenetur corrupti nesciunt non enim.','Veniam voluptas optio numquam atque et eius. Fuga autem animi distinctio eligendi inventore. Quod ipsam et ipsa hic ex ipsum.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(23,'Voluptas facilis cupiditate tempora.','Aliquid itaque velit asperiores commodi. Laudantium ipsum molestiae veniam voluptas. Doloremque minima eius ea quia excepturi quia.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(24,'Sunt dolorem quis harum eveniet.','Laborum ipsum numquam numquam nihil tempore. Numquam minima sed et quas aperiam ullam. Voluptas unde iste illo libero voluptatum id laboriosam. Pariatur quas assumenda qui consequuntur.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(25,'Autem est deserunt vitae culpa architecto.','Optio possimus voluptas ea ut ea quos. Blanditiis dolores esse assumenda earum non. Id harum nihil praesentium quia perferendis.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(26,'Consequatur sint dicta quia ea qui natus quis.','Aut nihil dicta nihil quia qui eius alias. Sit officiis occaecati officiis voluptatem est ex. Sit alias cupiditate dolorem vel velit expedita. Autem minima dicta aperiam vero fuga nulla et.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(27,'Enim blanditiis inventore pariatur officiis laboriosam magnam.','Cum atque eum iure nulla odio illum. Beatae voluptates veritatis sit sit minima. Corporis voluptates similique possimus qui. Qui iure voluptas expedita provident a.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(28,'Excepturi voluptatem enim sit reiciendis quasi qui.','Rerum consequatur rerum ducimus asperiores eos. Corrupti consequatur quidem dolores velit suscipit magni quae. Quo vel architecto est in sequi. Vel quisquam sed eum vero.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(29,'Nam et quis possimus et aliquid ut odit.','Quibusdam fugit ea est et odit. Totam animi ad atque molestias. Quisquam quis consequuntur iste.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(30,'Et et voluptatem eum vitae maiores vitae quo cupiditate.','Temporibus possimus possimus facilis et. Molestias deserunt sunt sint voluptas iure qui. Odio nemo quis in sit. Illo odio et est aspernatur.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(31,'Necessitatibus eos molestiae eos autem laborum odit voluptas.','Occaecati vel aut repudiandae quod. Sit itaque quisquam doloremque molestias consectetur dicta. Est cum vero est sed tempore maxime ab. Aut incidunt similique distinctio voluptas quae et sint.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(32,'Praesentium consequuntur consequatur ex eligendi est dolore.','Dolorum nemo tempore consequuntur ratione alias quisquam. Iusto laborum et aut vero aut sit.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(33,'Facere omnis iusto vel.','Facere rerum sit eum ea repellat nulla. Consequatur ullam aut placeat necessitatibus blanditiis cupiditate.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(34,'Quibusdam quod et culpa rerum id vero.','Veritatis ut quia eveniet nihil ea ut dignissimos fuga. Dolorum dolorem dolore quisquam ducimus tenetur.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(35,'Iste est est voluptatem quod.','Reiciendis tempore quia nobis illo necessitatibus quos. Eveniet ea rerum amet eveniet dignissimos. Dolor fugiat necessitatibus molestias excepturi qui.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(36,'Impedit rerum rem ullam omnis excepturi.','Maiores quis ipsam commodi eius molestiae ea nostrum. Eveniet in et eius quos id molestiae quod quam.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(37,'Molestiae qui libero doloremque sint voluptatem.','Vitae ab qui ex voluptatum. Quia qui eum ipsa sit molestias sit sunt. Ratione dolore non iste et porro dolores. Saepe aut reprehenderit placeat et.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(38,'Reprehenderit in exercitationem aperiam eum dolores.','Quia earum dolores placeat amet ipsa voluptas. Voluptatum id voluptas ad ipsam et unde vel aperiam. Quaerat eaque dolor vero maiores.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(39,'Quisquam commodi consequatur non doloremque praesentium corporis.','Neque incidunt asperiores excepturi ab suscipit qui doloremque. Minus est quod quia iusto impedit voluptatem. Accusantium omnis voluptatibus totam est labore qui harum porro.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(40,'Soluta minus ea aliquam libero sint.','Vitae fuga beatae aut dolore est et. Dolores odit expedita dolores asperiores ad. Odio a repellat voluptas. Eos consequuntur aut et eos iusto doloribus reiciendis.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(41,'Omnis sunt neque distinctio fugit fuga.','Quas excepturi necessitatibus voluptas ipsa vero aut. Perferendis sapiente aut sit in repellat eos aperiam. Non aut delectus iusto.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(42,'Ut ipsum rem quisquam aliquam.','Est porro sed numquam consequatur sint consequatur. Quis ea libero ut libero et. Mollitia recusandae excepturi qui minima quia. Placeat occaecati voluptates pariatur voluptatem sunt modi possimus.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(43,'Voluptatum veniam magni voluptates molestiae consequatur et.','Est quasi et nemo aliquam. Est placeat perspiciatis porro sapiente. Dolores sint numquam vel assumenda dolorem. Dolorem perferendis omnis et eum aut nesciunt quasi.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(44,'Consequatur rerum vitae tempora doloremque ut.','Sapiente aliquam veniam enim asperiores blanditiis sunt eum. Est ut occaecati sunt doloremque. Explicabo eius perferendis quo est. Dolorem cum fugiat vero rerum. Odio velit quod deserunt ex quo.','2021-12-28 01:13:55','2021-12-28 01:13:55'),(46,'Qui qui sed velit non magnam.','Similique reiciendis in consequatur et. Minima ut velit nisi quibusdam quos voluptatem. Excepturi voluptatem voluptatem dolore ut est voluptatum facilis facere.','2021-12-28 01:13:56','2021-12-28 01:13:56'),(47,'Dolor vitae odio vel eum sint.','Nam explicabo suscipit dolorem. Ut fugiat magni aperiam. Quo facilis praesentium dolorem.','2021-12-28 01:13:56','2021-12-28 01:13:56'),(48,'Sequi voluptatem suscipit neque.','Quasi eius harum illum quod et aut delectus. Doloremque cum laborum a quia et qui. Culpa dolores voluptatem fugit eaque repudiandae.','2021-12-28 01:13:56','2021-12-28 01:13:56'),(49,'tercer post','mucho texto','2021-12-28 01:13:56','2021-12-31 03:20:56'),(51,'Nuevo Post','El Post de prueba','2021-12-31 02:34:06','2021-12-31 02:34:06'),(55,'ABC','contenido','2021-12-31 03:21:37','2021-12-31 03:21:37'),(57,'Post de Prueba','Contenido mas contenido','2021-12-31 03:31:04','2021-12-31 03:31:25');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 21:13:49
