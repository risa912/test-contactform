-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: laravel_db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'商品のお届けについて','2025-09-14 10:06:18','2025-09-14 10:06:18'),(2,'商品の交換について','2025-09-14 10:06:18','2025-09-14 10:06:18'),(3,'商品トラブル','2025-09-14 10:06:18','2025-09-14 10:06:18'),(4,'ショップへのお問い合わせ','2025-09-14 10:06:18','2025-09-14 10:06:18'),(5,'その他','2025-09-14 10:06:18','2025-09-14 10:06:18');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_category_id_foreign` (`category_id`),
  CONSTRAINT `contacts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,25,'加奈','鈴木',2,'chiyo80@example.net','0496229541','4538865  奈良県田中市西区青田町坂本8-8-7',NULL,'Voluptas saepe numquam possimus ducimus repellat. Sapiente vitae non dolores aut dolores. Repudiandae nam illo eum maiores adipisci.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(2,55,'裕太','鈴木',2,'bkobayashi@example.com','0898002572','8852707  山梨県青山市南区西之園町近藤3-9-8',NULL,'Assumenda dolore facilis dolorem. Molestias dolores minus nihil dolores deserunt. Sed recusandae quos cupiditate sed sit nihil autem. Eos aut harum tempora in labore vitae. Libero debitis aliquid dicta et omnis.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(3,72,'幹','坂本',2,'harada.akira@example.com','0761212201','9477759  滋賀県加藤市東区坂本町山口3-8-9 コーポ鈴木101号','ハイツ宮沢106号','Explicabo omnis deserunt tenetur enim et et. Ducimus suscipit architecto voluptates excepturi est autem. Quis qui dignissimos provident.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(4,57,'亮介','小林',2,'msasada@example.com','0365375915','6375276  北海道笹田市南区井上町山岸5-4-10 コーポ浜田103号','ハイツ渡辺108号','Eius aut libero maiores nesciunt unde. Odio quod architecto recusandae rerum quod nostrum. Et suscipit earum blanditiis nulla sunt omnis.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(5,31,'真綾','宇野',2,'tsuda.minoru@example.net','0925907184','2871982  京都府田中市中央区中村町青山5-6-2 コーポ西之園104号',NULL,'Dolore adipisci alias amet non. Laboriosam eum fuga quae magni sint aliquid.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(6,57,'聡太郎','石田',3,'yuki.nishinosono@example.net','0619423625','1611227  福島県渚市北区伊藤町浜田7-4-2 コーポ佐々木107号',NULL,'Vitae cum dolorem id velit in dicta. Veritatis odio modi non perferendis voluptatem. Reiciendis aut autem beatae sunt occaecati pariatur. Dicta dolorum non iure esse.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(7,30,'真綾','宇野',1,'miki.sakamoto@example.com','0296987519','9306225  島根県井上市西区田中町斉藤10-6-8 ハイツ斉藤103号',NULL,'Laudantium dolores voluptatum dignissimos facere culpa corrupti aut. Tenetur distinctio provident vel nostrum. Omnis nesciunt vero iste odio minus error et.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(8,56,'加奈','浜田',3,'kana.ekoda@example.org','0274983890','2117980  岐阜県山口市東区山田町西之園1-2-2 コーポ喜嶋104号','ハイツ中村108号','Voluptates repellat et quia ut illo eius illo. Minima et rerum consectetur aut alias deleniti.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(9,64,'真綾','中島',1,'jun32@example.net','0391609709','4598388  兵庫県江古田市南区西之園町松本6-1-9 ハイツ山岸109号','コーポ吉本104号','Optio qui et itaque. Voluptates aut excepturi quo voluptatem rerum id et.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(10,18,'学','渡辺',2,'miyazawa.kazuya@example.net','0080371306','8585107  埼玉県杉山市東区中村町石田9-10-6 ハイツ田中107号','ハイツ井上105号','Praesentium labore error corporis reiciendis adipisci. Facere et dolorum ullam temporibus blanditiis quia tempore. Totam quibusdam sunt magni ea dolorem ipsum vel. Enim reiciendis sed repudiandae laudantium voluptatibus dignissimos et.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(11,33,'春香','石田',3,'yuki.matsumoto@example.org','0448503929','8429053  福岡県桐山市北区木村町加納5-5-1 ハイツ田中109号',NULL,'Quaerat voluptas et velit amet. Neque et debitis dolores ab laudantium assumenda. Sit nulla ut maiores molestiae. Minima non sint ullam deleniti amet optio vel voluptas.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(12,43,'太一','野村',3,'hanako.murayama@example.net','0507355275','3848254  山形県山田市西区坂本町山田1-3-1 コーポ江古田110号','ハイツ廣川104号','Sit ab est enim vel eos. Omnis nam soluta at et et. Quas reprehenderit labore harum amet. Explicabo saepe magnam vel qui ipsam accusantium amet.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(13,30,'淳','中津川',1,'mikako41@example.org','0817441474','7004811  東京都桐山市南区斉藤町野村9-7-9',NULL,'Rerum reprehenderit voluptatem omnis id maiores aperiam iusto vel. Tenetur dolorem necessitatibus praesentium eos. Aut dignissimos esse quo. Architecto ratione impedit repudiandae.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(14,1,'香織','三宅',2,'nanami.aoyama@example.org','0593380613','9528192  愛媛県村山市中央区三宅町野村7-2-2','ハイツ笹田108号','Veritatis deleniti et minus temporibus. Possimus nisi iusto ut molestias ratione eius. Officia ex maxime quia dolorem dolor modi accusantium aut.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(15,37,'亮介','加藤',1,'qyoshida@example.org','0814827539','6928742  鹿児島県小泉市東区渚町加納3-6-10 ハイツ廣川109号',NULL,'Quos sunt recusandae eos et rerum. Consequuntur deleniti reiciendis omnis perspiciatis molestias reprehenderit aut doloribus. Neque iusto voluptatibus dolorem sequi deserunt optio sunt.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(16,44,'陽一','原田',2,'saito.atsushi@example.com','0057702683','9509578  千葉県宮沢市中央区山口町若松4-5-3','コーポ杉山110号','Unde perspiciatis ut ipsa voluptatibus. Reprehenderit alias quia enim deleniti totam voluptates. Dignissimos praesentium modi voluptatem qui repellendus dolores.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(17,44,'明美','廣川',2,'sasada.satomi@example.com','0142257495','8969998  滋賀県宇野市北区佐々木町吉本7-4-1',NULL,'Pariatur consequatur neque ipsum ut. Rerum sunt asperiores consequatur voluptates. At provident qui aperiam rem quos qui. Laudantium deserunt omnis sed neque similique quas quia.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(18,12,'充','伊藤',1,'momoko.takahashi@example.org','0587880397','6207446  栃木県佐々木市中央区三宅町加納9-4-4',NULL,'Quia eligendi rerum ut. Excepturi nesciunt quisquam cupiditate adipisci. Quos id et maiores qui beatae voluptate repudiandae. Vel aut sed unde assumenda.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(19,28,'香織','松本',3,'sato.shuhei@example.net','0915266257','2939897  愛知県斉藤市南区渡辺町高橋8-5-6',NULL,'Quae qui magnam eius sed. Ut molestiae atque aliquid animi omnis. Error saepe et neque aut nemo.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(20,67,'治','中村',1,'anomura@example.org','0345287768','6766920  沖縄県小泉市西区宇野町中村7-3-10 コーポ鈴木108号','ハイツ青山103号','Deserunt ut ducimus accusantium non consequuntur. Beatae accusantium rem corporis aliquid excepturi omnis. Odio rerum error voluptatem deleniti provident vel. Ab qui tempora laudantium et aspernatur.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(21,27,'真綾','井高',3,'hiroshi.sato@example.net','0373814799','5273041  沖縄県桐山市西区木村町井上2-1-1 ハイツ西之園108号',NULL,'Ex fugit maxime nobis ab neque placeat. Aut veritatis nihil rerum sequi. Cum porro excepturi quia consectetur.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(22,21,'翔太','廣川',1,'uno.hiroshi@example.com','0136039710','9249961  富山県杉山市北区小林町加藤1-10-2 ハイツ井高110号',NULL,'Odio officiis aut distinctio consequuntur veniam. Repellat modi optio qui eum sunt reprehenderit et. Pariatur sit praesentium sint unde maxime reprehenderit.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(23,34,'拓真','吉田',3,'ryohei09@example.org','0749904364','3774719  福井県若松市南区桐山町佐藤10-8-6',NULL,'Rem blanditiis praesentium similique sapiente aperiam fuga. Esse adipisci enim modi. Totam corrupti totam rerum amet. Dolorem incidunt illum ipsam facere eaque.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(24,51,'太郎','杉山',2,'kanou.yuta@example.org','0061188679','4493663  福島県宇野市西区小泉町杉山7-8-6','ハイツ加納105号','Mollitia non consequatur sit laudantium modi accusamus mollitia. Aut sit consequatur totam et sed ad quam. Iure asperiores porro id.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(25,9,'舞','吉本',2,'jkijima@example.org','0597237762','9172665  高知県吉田市北区山田町佐藤2-2-9 コーポ伊藤108号',NULL,'Perferendis fugit ut ut excepturi. Qui nulla laboriosam harum rem eaque odit. Minima placeat perferendis est et dolorem sint. Omnis maxime quibusdam vero autem quos.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(26,16,'幹','青田',2,'nakatsugawa.ryosuke@example.com','0575053400','7935493  徳島県石田市東区中島町村山2-8-9 コーポ山口104号',NULL,'Excepturi doloremque non dolorum consequatur officiis laudantium necessitatibus. Dolorem ratione nisi non in. Est quo et ab ut unde in.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(27,28,'淳','山本',2,'asuka28@example.com','0968798781','3777323  神奈川県吉田市南区小泉町山岸3-9-10 ハイツ中村104号','コーポ山本109号','Nobis quos eum quasi ut illum rerum sint. Maiores et doloribus eos et aliquam tenetur. Ut ut officia rerum quod quasi. Est ut modi cum aliquam quo ex magnam velit.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(28,46,'亮介','高橋',1,'wyoshimoto@example.org','0541376336','8647195  徳島県大垣市中央区青山町廣川1-10-3',NULL,'Nostrum totam omnis tempora velit alias et aut. Sit accusamus nesciunt doloribus aliquid accusantium recusandae. Maiores repudiandae autem animi fugit. Aperiam quisquam voluptatem placeat voluptatum nemo consequatur impedit.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(29,68,'美加子','山本',1,'kana13@example.com','0117084771','1723544  青森県渡辺市南区宮沢町津田7-6-10 コーポ村山101号','コーポ津田108号','At odit sequi laboriosam quas nisi veritatis. In consequuntur voluptas dolor aliquam quod sed voluptas.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(30,32,'裕樹','江古田',1,'suzuki.hanako@example.org','0292727922','3036795  宮城県喜嶋市東区田辺町斉藤9-6-10 コーポ石田105号','ハイツ石田110号','Qui laborum enim esse sequi delectus qui excepturi. Molestiae id quasi aperiam ab odio illo amet asperiores. Quos hic eum et blanditiis voluptatem totam.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(31,39,'京助','大垣',3,'nkanou@example.org','0951715676','9648850  石川県坂本市北区佐々木町大垣6-5-4 ハイツ山田104号',NULL,'Ea vel eum rerum officia. Voluptates libero tempore blanditiis laborum. Vel voluptas hic quas vel officiis sint minus.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(32,28,'和也','加藤',3,'ryosuke75@example.com','0332129153','4958847  福井県藤本市北区近藤町斉藤4-1-3 ハイツ伊藤107号',NULL,'Sunt tempora nemo neque id reprehenderit dolores et. Veniam quos id nostrum eum voluptatem tempore quaerat. Velit quibusdam exercitationem ex ipsam qui esse corporis. Eligendi sit sunt numquam aut iusto quo et et.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(33,37,'洋介','工藤',1,'yoshida.satomi@example.net','0080696128','4939089  栃木県小林市南区渡辺町江古田7-8-10 コーポ渚101号',NULL,'Laudantium dolores mollitia fugit iste animi. Ea esse provident dolorem deleniti. Consectetur enim eius nesciunt culpa cupiditate velit nam.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(34,18,'聡太郎','田中',3,'soutaro.aoyama@example.org','0315330844','5759296  富山県宇野市西区小林町石田9-4-9 ハイツ渡辺107号',NULL,'Velit quam qui itaque sunt. Sit officia perspiciatis animi perferendis. Necessitatibus repellendus eos quia aut nesciunt praesentium aspernatur.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(35,66,'明美','中島',1,'yumiko18@example.net','0226359344','2802857  秋田県宇野市西区加藤町田辺8-8-1',NULL,'Consequatur dolor cupiditate doloremque iure quo. Qui aut maxime iure aut. Nostrum sequi fugit error sunt et et.','2025-09-14 09:46:11','2025-09-14 09:46:11'),(36,2,'太郎','',1,'atto@king','','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 12:44:45','2025-09-14 12:44:45'),(37,2,'太郎','',1,'atto@king','','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 12:44:49','2025-09-14 12:44:49'),(38,2,'太郎','山田',1,'atto@king','070-9987-5566','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 13:03:15','2025-09-14 13:03:15'),(39,2,'太郎','山田',1,'atto@king','070-9987-5566','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 13:03:18','2025-09-14 13:03:18'),(40,2,'太郎','山田',1,'atto@king','070-9987-5566','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 13:04:59','2025-09-14 13:04:59'),(41,2,'太郎','山田',1,'atto@king','070-9987-5566','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 13:05:02','2025-09-14 13:05:02'),(42,2,'太郎','山田',1,'atto@king','070-9987-5566','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 13:06:01','2025-09-14 13:06:01'),(43,2,'太郎','山田',1,'atto@king','070-9987-5566','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 13:06:04','2025-09-14 13:06:04'),(44,2,'太郎','山田',1,'atto@king','070-9987-5566','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 13:06:07','2025-09-14 13:06:07'),(45,2,'太郎','山田',1,'atto@king','070-9987-5566','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 13:06:30','2025-09-14 13:06:30'),(46,2,'太郎','山田',1,'atto@king','070-9987-5566','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 13:06:33','2025-09-14 13:06:33'),(47,2,'太郎','山田',1,'atto@king','070-9987-5566','土器町東4丁目642-2','香川県高松市','おおおおお','2025-09-14 13:06:37','2025-09-14 13:06:37'),(48,1,'花子','山田',2,'lora@yahoo.co.jp','090-7766-9933','上京区3-11','京都府京都市','ああああああ','2025-09-14 13:07:48','2025-09-14 13:07:48'),(49,1,'花子','山田',2,'lora@yahoo.co.jp','090-7766-9933','上京区3-11','京都府京都市','ああああああ','2025-09-14 13:09:05','2025-09-14 13:09:05'),(50,4,'貝','山田',3,'kop@e-mail.jp','080-4466-8875','上京区3-11','京都府京都市','ありがとうございました。','2025-09-14 13:30:54','2025-09-14 13:30:54'),(51,4,'貝','山田',3,'kop@e-mail.jp','080-4466-8875','上京区3-11','京都府京都市','ありがとうございました。','2025-09-14 13:30:57','2025-09-14 13:30:57'),(52,4,'貝','山田',3,'kop@e-mail.jp','080-4466-8875','上京区3-11','京都府京都市','ありがとうございました。','2025-09-14 13:32:13','2025-09-14 13:32:13'),(53,4,'裕子','大野',2,'tkmg26@hoot.jp','090-7276-6431','8827-54','栃木県宇都宮市','どう','2025-09-14 23:15:50','2025-09-14 23:15:50'),(54,3,'貝','山田',1,'kop@e-mail.jp','090-9987-6431','神奈川県横浜市2-19',NULL,'ここから','2025-09-15 01:53:12','2025-09-15 01:53:12'),(55,2,'太郎','矢野',1,'atto@king','090-4408-6431','神奈川県横浜市2-19',NULL,'おおおおお','2025-09-15 02:06:51','2025-09-15 02:06:51'),(56,2,'次郎','矢野',1,'uke48@fou.jp','070-3452-9756','石川県金沢市96-36',NULL,'おおおおお','2025-09-15 02:10:47','2025-09-15 02:10:47'),(57,4,'貝','石田',1,'ilo@geet.jp','080-4667-2975','東京都豊島区3778-10',NULL,'んんんん','2025-09-15 02:12:58','2025-09-15 02:12:58'),(58,4,'貝','石田',1,'ilo@geet.jp','080-4667-2975','東京都豊島区3778-10',NULL,'んんんん','2025-09-15 02:36:50','2025-09-15 02:36:50'),(59,3,'恵美','川田',2,'yui@g-mail.jp','070-3975-8865','福岡県福岡市49-14',NULL,'おおおおおお','2025-09-15 02:52:41','2025-09-15 02:52:41'),(60,3,'恵美','川田',2,'yui@g-mail.jp','070-3975-8865','福岡県福岡市49-14',NULL,'おおおおおお','2025-09-15 02:54:34','2025-09-15 02:54:34'),(61,3,'恵美','川田',2,'yui@g-mail.jp','070-3975-8865','福岡県福岡市49-14',NULL,'おおおおおお','2025-09-15 02:55:07','2025-09-15 02:55:07'),(62,3,'恵美','川田',2,'yui@g-mail.jp','070-3975-8865','福岡県福岡市49-14',NULL,'おおおおおお','2025-09-15 02:57:57','2025-09-15 02:57:57'),(63,3,'恵美','大野',2,'kop@e-mail.jp','080-4408-6431','石川県金沢市96-36',NULL,'いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい','2025-09-15 08:46:46','2025-09-15 08:46:46');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2019_12_14_000001_create_personal_access_tokens_table',1),(4,'2025_09_14_175751_create_categories_table',1),(5,'2025_09_14_175853_create_contacts_table',1),(6,'2025_09_14_181732_create_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

-- Dump completed on 2025-09-15 10:04:13
