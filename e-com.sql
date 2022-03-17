-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2022 at 08:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-com`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'error', 'error', '2022-03-05 19:16:03', '2022-03-05 19:16:03'),
(2, 'cum', 'cum', '2022-03-05 19:16:03', '2022-03-05 19:16:03'),
(3, 'eos', 'eos', '2022-03-05 19:16:03', '2022-03-05 19:16:03'),
(4, 'cupiditate', 'cupiditate', '2022-03-05 19:16:03', '2022-03-05 19:16:03'),
(5, 'eius', 'eius', '2022-03-05 19:16:03', '2022-03-05 19:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'test@gmail.com', '5428741+55', 'Heloo...', '2022-03-15 17:43:57', '2022-03-15 17:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`) VALUES
(1, 'OFPSS', 'percent', '5.00', '5000.00', '2022-03-12 19:04:16', '2022-03-12 19:07:20'),
(3, 'OFF100', 'fixed', '100.00', '1000.00', '2022-03-12 20:17:14', '2022-03-12 20:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4', 6, '2022-03-10 21:11:20', '2022-03-10 20:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Kids watch', 'The ost precisious thing in the w', '120', '/shop', '1646943568.jpg', 1, '2022-03-10 19:19:28', '2022-03-10 19:21:25'),
(3, 'The perfect couch', 'Bulma material with soft design and natural thickness', '650', '/shop', '1646943622.jpg', 1, '2022-03-10 19:20:22', '2022-03-10 19:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_04_201645_create_sessions_table', 1),
(7, '2022_03_05_194523_create_categories_table', 2),
(8, '2022_03_05_194543_create_products_table', 2),
(9, '2022_03_08_205640_create_home_sliders_table', 3),
(10, '2022_03_10_210511_create_home_categories_table', 4),
(11, '2022_03_12_190234_create_coupons_table', 5),
(12, '2022_03_13_183949_create_orders_table', 6),
(13, '2022_03_13_184021_create_order_items_table', 6),
(14, '2022_03_13_184042_create_shippings_table', 6),
(15, '2022_03_13_184111_create_transactions_table', 6),
(16, '2022_03_14_195829_add_delivered_canceled_data_to_orders_table', 7),
(17, '2022_03_15_181616_create_contacts_table', 8),
(18, '2022_03_16_201357_create_profiles_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(1, 2, '199.00', '0.00', '41.79', '240.79', 'asdasd', 'asdasd', '54812', 'user@gmail.com', 'asdasd', 'asdasddas', 'asdasdasdasd', 'dasdasda', 'asdasdas', '21540', 'delivered', 1, '2022-03-13 20:45:59', '2022-03-14 19:11:18', '2022-03-14', NULL),
(2, 2, '199.00', '0.00', '41.79', '240.79', 'asdasd', 'asdasd', '54812', 'user@gmail.com', 'asdasd', 'asdasddas', 'asdasdasdasd', 'dasdasda', 'asdasdas', '21540', 'canceled', 1, '2022-03-13 20:46:32', '2022-03-14 19:11:30', NULL, '2022-03-14'),
(3, 2, '199.00', '0.00', '41.79', '240.79', 'asdasd', 'asdasd', '54812', 'user@gmail.com', 'asdasd', 'asdasddas', 'asdasdasdasd', 'dasdasda', 'asdasdas', '21540', 'canceled', 1, '2022-03-13 20:52:15', '2022-03-14 19:11:32', NULL, '2022-03-14'),
(4, 2, '237.00', '0.00', '49.77', '286.77', 'asdasd', 'asdasd', '54124512', 'user@gmail.com', 'asdasd', 'asdasddas', 'asdasdasdasd', 'dasdasda', 'asdasdas', '61000', 'delivered', 0, '2022-03-13 20:56:18', '2022-03-14 19:11:33', '2022-03-14', NULL),
(5, 2, '237.00', '0.00', '49.77', '286.77', 'asdasd', 'asdasd', '54124512', 'user@gmail.com', 'asdasd', 'asdasddas', 'asdasdasdasd', 'dasdasda', 'asdasdas', '61000', 'canceled', 0, '2022-03-13 20:56:48', '2022-03-14 19:11:34', NULL, '2022-03-14'),
(6, 3, '465.00', '0.00', '97.65', '562.65', 'sadasdas', 'dasdasda', '2541520', 'altenenio12@gmail.com', 'asdasd', 'asdasdas', 'sdasdadsd', 'asdasddas', 'adsasdasd', '610000', 'ordered', 0, '2022-03-15 20:41:41', '2022-03-15 20:41:41', NULL, NULL),
(7, 2, '731.00', '0.00', '153.51', '884.51', 'asda', 'dadsad', '0254120', 'user@gmail.com', 'sadsd', 'asdasdas', 'asdasdasd', 'asdasdasd', 'asdasd', '5100000', 'ordered', 0, '2022-03-16 18:23:00', '2022-03-16 18:23:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '199.00', 1, '2022-03-13 20:45:59', '2022-03-13 20:45:59'),
(2, 2, 2, '199.00', 1, '2022-03-13 20:46:32', '2022-03-13 20:46:32'),
(3, 2, 3, '199.00', 1, '2022-03-13 20:52:15', '2022-03-13 20:52:15'),
(4, 1, 4, '237.00', 1, '2022-03-13 20:56:18', '2022-03-13 20:56:18'),
(5, 1, 5, '237.00', 1, '2022-03-13 20:56:48', '2022-03-13 20:56:48'),
(6, 2, 6, '199.00', 1, '2022-03-15 20:41:41', '2022-03-15 20:41:41'),
(7, 3, 6, '266.00', 1, '2022-03-15 20:41:41', '2022-03-15 20:41:41'),
(8, 1, 6, '237.00', 1, '2022-03-15 20:41:41', '2022-03-15 20:41:41'),
(9, 2, 7, '199.00', 1, '2022-03-16 18:23:00', '2022-03-16 18:23:00'),
(10, 3, 7, '266.00', 2, '2022-03-16 18:23:00', '2022-03-16 18:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'voluptas', 'voluptas', 'Modi eveniet aut in assumenda unde est veniam. Rerum unde quos quis magni nostrum. Soluta est aut natus pariatur dolores.', 'Deleniti ut atque deleniti sapiente corporis et commodi. At corrupti labore voluptatum fugiat et inventore. Est eos necessitatibus eius vitae. Rerum molestias consequatur ipsum accusamus deserunt doloremque consectetur adipisci. Perspiciatis magni aut fuga ipsam recusandae. Qui et earum doloribus error dolores voluptates corrupti. Eos in natus voluptatibus ad. Voluptatem mollitia ducimus aut.', '237.00', '100.00', 'DIGI356', 'instock', 0, 110, 'digital_12.jpg', NULL, 5, '2022-03-05 19:37:31', '2022-03-10 21:14:38'),
(2, 'et', 'et', 'Eveniet omnis maxime voluptas et dolorem et. Aut adipisci quas qui nesciunt ut voluptatem. Adipisci non ut quia iste sunt. Autem dolore et deleniti est natus est.', 'Voluptatem ex ducimus quia. Ea at occaecati qui porro eum commodi. Dolores itaque velit excepturi et ut. In omnis ut provident aspernatur deleniti asperiores. Provident beatae iure quaerat nihil sint iste. Consequatur vel quia rerum molestias vel adipisci veritatis. Quae itaque aut rerum nam cumque ducimus. Laboriosam quia voluptatem nisi. Id officiis magni rerum porro sapiente facere autem.', '199.00', NULL, 'DIGI154', 'instock', 0, 141, 'digital_11.jpg', NULL, 1, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(3, 'accusantium', 'accusantium', 'Libero vitae non aliquam eveniet sit alias. Rerum voluptas et ex rerum ex non. Inventore odio sed qui qui et quo.', 'Velit rerum aut veniam voluptatem. Dolorem quo similique odio rem. Repellendus qui eos cupiditate et eaque. Dicta vitae cum voluptatem repellat. Quod ea sapiente illum eos. Dolore commodi laborum aut. Voluptate enim voluptatibus totam rerum dignissimos nostrum. Aspernatur aut quos laborum eius fuga a ipsam. Nulla aut ipsum cupiditate qui minima cupiditate et. Rem consequatur aspernatur at vero mollitia incidunt.', '266.00', NULL, 'DIGI230', 'instock', 0, 144, 'digital_1.jpg', NULL, 3, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(4, 'voluptatem', 'voluptatem', 'Ab corrupti quam dolorem tempora soluta quod non. Nisi natus nulla reiciendis corporis. Eveniet facilis quas dolorem voluptas ea quia cum. Quasi necessitatibus omnis quos odio eveniet ut qui.', 'Aliquam est quod qui ducimus quo quo. Praesentium nobis a veniam provident illum fugiat deserunt. Ducimus qui beatae ut animi quae voluptatem sapiente. Accusamus voluptate tenetur qui dolores. Perferendis fuga sed occaecati occaecati corrupti nam. Expedita sed ut veritatis non. Et quasi cum animi. Dolorem nihil voluptate mollitia magnam animi autem. Iusto iusto quibusdam rerum ut provident sit. Natus sequi ut inventore sed aut.', '123.00', NULL, 'DIGI454', 'instock', 0, 140, 'digital_22.jpg', NULL, 1, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(5, 'dolor', 'dolor', 'Aut enim quaerat repellendus veniam accusantium ipsam. Aut ad hic quae asperiores. Iusto aperiam incidunt est aut maxime totam.', 'Voluptas qui ut modi laudantium corrupti aut eligendi dolor. Et voluptas possimus cupiditate eum ab. Veritatis deleniti accusantium qui fugit dolorem sequi. Quae nam quis sunt vel nihil omnis. Autem dolor velit ut ut. Ut debitis alias praesentium dicta labore. Consequatur tenetur eum mollitia debitis. Quas aperiam vel voluptatem facilis consequuntur porro. Est et atque eveniet et est et sit. Soluta animi nobis quibusdam impedit. Nostrum voluptatem facere et.', '459.00', NULL, 'DIGI206', 'instock', 0, 129, 'digital_21.jpg', NULL, 4, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(6, 'voluptate', 'voluptate', 'Aliquam sed omnis provident earum. Quasi vel accusantium amet ea suscipit velit dicta. Perferendis quisquam veritatis quasi nihil cum placeat.', 'Officia dignissimos quasi et distinctio qui neque voluptas. Et dignissimos blanditiis consequuntur id qui. Quos sit sed animi. Corporis aliquid corrupti nulla adipisci in. Totam corrupti nostrum eligendi consectetur et omnis omnis. Quae rerum qui est et ut ab dignissimos sunt.', '139.00', NULL, 'DIGI196', 'instock', 0, 167, 'digital_18.jpg', NULL, 5, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(7, 'alias', 'alias', 'Ut dolor sunt aperiam quas optio. Magnam dolores omnis rerum rem. Tenetur rerum sed aliquam vero maxime at vel aut.', 'Est quos et sed voluptatem molestias. Tempora placeat et nihil dolore. Quia illo voluptates et veniam quos accusamus. Dolorum consequatur in esse voluptatem sapiente dolor. Minus consequuntur eveniet ducimus commodi maiores sunt. Quam occaecati quo alias sint ullam voluptatem quia possimus. Est illo et officiis dolorem. Reiciendis vero tenetur consectetur quas voluptate animi. Occaecati suscipit placeat qui consequuntur sunt.', '399.00', NULL, 'DIGI112', 'instock', 0, 147, 'digital_17.jpg', NULL, 3, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(8, 'esse', 'esse', 'Autem commodi fugit in dolor. Quae sapiente earum provident autem ipsum magnam velit. Quibusdam et sed voluptatibus nobis sit aut ducimus.', 'Quo officiis eius earum tempore odit. Impedit amet odio id earum non cumque. Sed qui quis dolores cupiditate. Similique quia qui inventore. Asperiores rerum non numquam ipsum veniam dolore. Consequuntur rerum voluptatem optio eos maxime doloribus laboriosam nihil. Iusto eos sint velit dolor nemo unde. Modi nihil maxime recusandae. Necessitatibus in amet eligendi consequuntur et. Est quia impedit et est molestiae eius aliquid.', '322.00', NULL, 'DIGI447', 'instock', 0, 141, 'digital_2.jpg', NULL, 4, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(9, 'adipisci', 'adipisci', 'Aut dolore ex quisquam corporis aut saepe. Voluptas nostrum id qui cupiditate veritatis dolores. Est voluptas aut veniam quidem nulla quidem.', 'Ut aut possimus quis est praesentium provident. Est laborum veniam sunt tempora aliquid tenetur. Vitae facere fugiat iusto eaque voluptas voluptates. Accusamus aut unde alias nihil non officiis. Voluptatem doloremque id nihil pariatur numquam qui. Odio et ut expedita atque dolores. Omnis iusto fugiat placeat ullam non porro. Non sit et quis necessitatibus sit. Vel perspiciatis sunt beatae esse magnam porro dolorem.', '154.00', NULL, 'DIGI271', 'instock', 0, 161, 'digital_7.jpg', NULL, 5, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(10, 'iste', 'iste', 'Qui et quo aut dolor distinctio expedita. Ea doloremque et in rerum sint. Doloremque ipsum nostrum aliquam voluptatibus et consequatur iure.', 'Et enim odio dolores quibusdam ipsam id nisi. Consequuntur eveniet eos sunt quasi eaque quaerat. Fugiat non quod voluptate quos exercitationem aut. Deserunt alias aut sit sunt commodi non. Tenetur accusamus et labore ut eum corporis. Praesentium et sit et maxime modi aut. Ut nemo aspernatur voluptatibus vel omnis. Harum magnam nesciunt eligendi iste omnis.', '456.00', NULL, 'DIGI451', 'instock', 0, 158, 'digital_14.jpg', NULL, 5, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(11, 'perferendis', 'perferendis', 'Magni deleniti quis reprehenderit enim neque. Placeat deleniti rerum corporis temporibus sed commodi dolorem veniam. Sed commodi asperiores sapiente.', 'Omnis et suscipit facilis veritatis omnis quaerat ab. Animi iure fugiat deleniti consequatur mollitia fugiat. Quas magnam possimus odio ut qui et et molestiae. Magnam qui labore cumque temporibus molestiae voluptates eos. Repellat autem ratione qui quis saepe ut. Dignissimos voluptas hic ad officiis minus natus quos aliquam. Laudantium et omnis officiis. Earum et officia quibusdam totam. Eaque temporibus cupiditate adipisci voluptas. Qui ab adipisci voluptatem modi.', '122.00', NULL, 'DIGI81', 'instock', 0, 160, 'digital_20.jpg', NULL, 5, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(12, 'ratione', 'ratione', 'Consequatur maxime vero quod officia provident at nihil officia. Sapiente eos veniam ut laudantium. Expedita cumque fugit dicta rerum.', 'Error nihil sit molestiae voluptas vitae qui. A repudiandae impedit ut esse autem velit voluptates reprehenderit. Quis autem nulla architecto libero ipsam eum explicabo. Quaerat quam officia possimus qui commodi asperiores eius. Tempora fugiat hic vero et. Quod sit autem aut hic blanditiis harum. Animi ut velit sit quia sapiente. Aut aut aperiam autem voluptatem. Et consectetur nobis facilis consectetur quam omnis. Sunt saepe qui esse enim dolorum odit.', '418.00', NULL, 'DIGI326', 'instock', 0, 162, 'digital_13.jpg', NULL, 4, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(13, 'quas', 'quas', 'Et dicta accusantium et est. Aut quibusdam et ullam labore facere totam facere laborum. Dolor esse et sit harum qui.', 'Quidem voluptas a temporibus sit odio quaerat expedita. Eum quisquam atque possimus ut. Expedita vero numquam quaerat architecto eius eos consequatur et. Sunt corporis eos doloremque nemo animi harum. Eaque voluptas veniam velit. Dolorem cum minus ut quasi soluta. Doloremque adipisci corporis non omnis fuga voluptatem.', '206.00', NULL, 'DIGI253', 'instock', 0, 156, 'digital_19.jpg', NULL, 2, '2022-03-05 19:37:31', '2022-03-05 19:37:31'),
(14, 'asperiores', 'asperiores', 'Sint quaerat ipsam libero ipsam voluptatem explicabo natus qui. Enim rem sunt veniam voluptatum. Atque minus ea inventore dolorem et.', 'Dolorem dignissimos cumque saepe. Perspiciatis quos expedita modi reiciendis. Facilis aut facere quidem accusantium nihil. Distinctio sint suscipit quo a consectetur aut. Aut temporibus libero omnis quia quos dolorem. Sed corrupti odit molestiae quasi deserunt aliquid sunt. Quis est aut alias ut tenetur eos aut. Aut qui distinctio et deserunt est repudiandae.', '183.00', NULL, 'DIGI203', 'instock', 0, 178, 'digital_16.jpg', NULL, 1, '2022-03-05 19:37:31', '2022-03-05 19:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, '1647469837.jpg', '451254++9', 'asd', 'dsa', 'asd', 'dsa', 'asd', '6100', '2022-03-16 20:24:58', '2022-03-17 17:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CSaCJNsPDGDIjesvyTquMtTSojQSexLn8NnddBho', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoicjgxdGh3YmNzVW9acUNqdDRmaGlJR1F6c1o2Ukx2enNUMHRyVkd1MyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkc2VoMkxxekxxcy5rekFEYWZKQTM4dUhOcTIuNjRhc2VSUEZwVFBPLlViSUswZ0t5elIueG0iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHNlaDJMcXpMcXMua3pBRGFmSkEzOHVITnEyLjY0YXNlUlBGcFRQTy5VYklLMGdLeXpSLnhtIjt9', 1647543660);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, 'asdasd', 'asdasd', '215412', 'user@gmail.com', 'asdasd', 'asdasd', 'asdasdasdasd', 'asdasdasd', 'asdasdad', '251200', '2022-03-13 20:46:32', '2022-03-13 20:46:32'),
(2, 3, 'asdasd', 'asdasd', '215412', 'user@gmail.com', 'asdasd', 'asdasd', 'asdasdasdasd', 'asdasdasd', 'asdasdad', '251200', '2022-03-13 20:52:15', '2022-03-13 20:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('code','cart','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 6, 'code', 'pending', '2022-03-15 20:41:41', '2022-03-15 20:41:41'),
(2, 2, 7, 'code', 'pending', '2022-03-16 18:23:00', '2022-03-16 18:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$seh2LqzLqs.kzADafJA38uHNq2.64aseRPFpTPO.UbIK0gKyzR.xm', NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-03-04 19:23:57', '2022-03-04 19:23:57'),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$ye2SQhs9ysrv9DpTo137dOUcBeHOySwvXIPXKHipBc/VoLcupUO/2', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-03-04 19:24:49', '2022-03-14 20:54:07'),
(3, 'altenen', 'altenenio12@gmail.com', NULL, '$2y$10$bhHZsqiYUnqn9AsampSqV.pxAj/Qb/w4UI/hIps7TWWcpHYK.v1H.', NULL, NULL, 'gVZd6RNdTbKmqJCVGQTQBBmuwmyNaTtdWLrZD7trXFwflsD8ckhDoxwISInD', NULL, NULL, 'USR', '2022-03-15 18:38:23', '2022-03-15 18:53:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
