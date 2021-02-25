-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2021 at 01:33 PM
-- Server version: 8.0.22
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pecinta_duniawi`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pemasukans`
--

CREATE TABLE `detail_pemasukans` (
  `id` int UNSIGNED NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` timestamp NOT NULL,
  `nominal` int NOT NULL,
  `id_user` int UNSIGNED DEFAULT NULL,
  `id_pemasukan` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_pemasukans`
--

INSERT INTO `detail_pemasukans` (`id`, `foto`, `keterangan`, `waktu`, `nominal`, `id_user`, `id_pemasukan`, `created_at`, `updated_at`) VALUES
(151, 'fugit.jpg', 'Deserunt ipsa voluptatem ut est non. Alias debitis autem pariatur maxime quam est magni. Aut aut non nostrum. Incidunt ipsam minus est neque.', '2019-08-28 05:18:59', 40950, 9, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(152, 'alias.jpg', 'Adipisci nisi et nihil et tenetur. Corrupti ducimus aut voluptatem explicabo ducimus quasi aut. Alias consequuntur et eum.', '2020-09-01 13:58:26', 43930, 6, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(153, 'eius.jpg', 'Accusamus nihil qui quisquam dolor non. Eos alias eveniet deleniti enim numquam. Consequatur voluptatibus ea et excepturi nihil aut natus.', '2020-12-25 00:51:10', 82086, 10, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(154, 'inventore.jpg', 'Nesciunt quos vitae ex sed in amet. Id eum saepe velit voluptate soluta laborum esse. Ipsa qui eius excepturi sed sit itaque explicabo.', '2019-09-09 07:07:28', 73294, 4, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(155, 'id.jpg', 'Nisi aspernatur neque quia. Sit accusantium optio sit culpa molestiae. Iste ratione et occaecati et deleniti minima quasi. Totam et minus qui occaecati et eligendi impedit ullam.', '2019-12-03 21:45:47', 22871, 8, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(156, 'odit.jpg', 'Iusto fugiat sit sed voluptas assumenda quaerat iste. Corrupti sunt amet minus labore. Nobis praesentium consequuntur omnis sit porro rerum. Est sit eligendi eaque aut.', '2020-09-15 23:33:08', 41212, 4, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(157, 'ut.jpg', 'Veritatis ut facilis culpa. Ab maxime natus eius ad. Omnis possimus corrupti natus non. Quia error aliquam facere quaerat eius dicta mollitia.', '2020-10-13 22:12:57', 53156, 4, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(158, 'neque.jpg', 'Dignissimos voluptatibus libero sed minus similique. Modi odio eaque iste cum enim est recusandae. Consequuntur cumque velit assumenda est consequatur sit doloribus.', '2020-10-15 22:20:44', 15658, 1, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(159, 'voluptatem.jpg', 'Est distinctio vitae cum. Quas cumque modi ducimus impedit. Dolores vitae et quibusdam recusandae nobis. Dolorem sint consequuntur sint reiciendis qui laborum.', '2019-09-11 22:38:08', 44884, 7, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(160, 'asperiores.jpg', 'Est architecto voluptas labore odio non vitae autem nihil. Blanditiis id dicta qui molestiae. Labore officiis eum corrupti voluptatem natus est. Eos quisquam ipsam qui sint.', '2019-06-18 14:07:12', 22096, 1, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(161, 'et.jpg', 'Ipsam rerum cum vero aperiam sapiente. Dolore molestias tenetur non ipsum aut aut. Ipsam aliquam modi nihil ea sit qui.', '2020-07-02 19:47:32', 94384, 3, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(162, 'et.jpg', 'Tempore quo architecto voluptatem ut unde voluptatem. Dicta incidunt debitis rerum ab in et. Qui aut omnis id aut incidunt. Molestiae dolorum autem atque ipsum neque. Dolor consequatur ipsam ', '2020-02-06 20:53:13', 85260, 6, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(163, 'ut.jpg', 'Voluptas aliquam cumque in nobis aperiam. Dolorem sunt magnam quis amet magnam. Voluptatem vero molestias numquam dicta repudiandae.', '2020-03-16 23:30:13', 78621, 9, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(164, 'commodi.jpg', 'Qui officiis quos in quaerat sunt. Quis error qui facilis aut repudiandae. Id fugit nihil doloribus rerum velit non. Repellat ut assumenda qui totam fugiat maxime cum officia.', '2019-09-28 01:14:40', 24176, 5, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(165, 'et.jpg', 'Ut ut voluptatem ut quasi. Consectetur perspiciatis ut quaerat eum. Excepturi animi omnis ipsam totam. Ratione explicabo aut quae ipsum consequatur.', '2019-05-29 14:37:48', 51661, 1, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(166, 'nihil.jpg', 'Quis aut qui rerum possimus cupiditate facilis qui. Sit eum ex voluptatem delectus. Quos perspiciatis distinctio ut necessitatibus quia.', '2020-09-10 13:24:38', 80612, 1, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(167, 'eum.jpg', 'Officiis magnam sed id autem doloribus. Doloremque quidem excepturi omnis voluptatem. Autem hic possimus cupiditate labore placeat quis rerum. Sequi ut tempore eum.', '2019-03-29 01:29:48', 54069, 2, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(168, 'repellat.jpg', 'Aut ut perspiciatis qui. Aut tempore perspiciatis et nam deleniti ut dolorem. Earum quae sunt ea dolor. Distinctio ex veritatis commodi non iste omnis eos eligendi.', '2021-01-20 11:33:08', 41237, 3, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(169, 'explicabo.jpg', 'Saepe aut est accusamus. Quis qui quo porro est dolorem eos. Consequatur explicabo omnis quisquam odio id est.', '2019-03-22 21:16:56', 80170, 9, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(170, 'dolor.jpg', 'Magnam sint sapiente cupiditate molestias quod repudiandae et. Dignissimos non nobis quasi ut minima perspiciatis. Labore consequatur quod porro consequatur soluta dolorem voluptatibus.', '2019-12-14 02:59:03', 89461, 3, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(171, 'veritatis.jpg', 'Quo ea est ut beatae. Totam accusantium asperiores facere sed inventore odio. Consequatur harum eum inventore et et recusandae.', '2020-07-22 15:55:05', 13305, 2, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(172, 'ullam.jpg', 'Facilis accusantium molestiae blanditiis consequatur consectetur ea expedita. Molestiae omnis impedit vero ipsa voluptatem tempora aliquid minima. Quas voluptatum sed quam.', '2021-01-11 08:08:32', 21951, 5, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(173, 'error.jpg', 'Ratione perspiciatis reprehenderit repudiandae corporis nihil eos. Repudiandae id libero ea. Laborum voluptatum quidem voluptatibus a ipsa.', '2019-06-19 06:56:20', 13088, 1, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(174, 'distinctio.jpg', 'Autem quasi aut animi minus omnis id. Quo accusamus voluptatem qui vitae. Beatae officiis dignissimos tempore nihil accusamus dignissimos accusamus harum.', '2020-11-15 06:54:25', 96468, 8, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(175, 'placeat.jpg', 'Est ipsa assumenda sequi soluta. Exercitationem deleniti rerum beatae. Quia et qui illo. Vero dolorum at a assumenda amet. Consequatur cumque at rerum laboriosam. Voluptatem dolorem vel ut qu', '2019-06-25 02:17:30', 41917, 7, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(176, 'repellendus.jpg', 'Libero accusantium tenetur commodi sapiente eum. Est et non reiciendis velit sed. Quaerat corporis excepturi quae. Incidunt veniam eaque est temporibus. Et quam sit corrupti debitis beatae.', '2020-12-12 05:01:15', 18623, 2, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(177, 'sit.jpg', 'Eaque exercitationem reprehenderit aut nihil voluptates saepe. Perferendis officiis voluptas animi architecto.', '2019-12-26 14:43:00', 92256, 4, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(178, 'autem.jpg', 'Ratione ut maxime quibusdam ut qui deserunt. Quae maxime enim cum quos. Cum aspernatur illum perspiciatis voluptatibus voluptate a laborum. Sunt sint et ut voluptatum non.', '2020-01-11 04:46:18', 61003, 5, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(179, 'blanditiis.jpg', 'Est velit aperiam necessitatibus aut maxime neque. Et excepturi dicta sed aut. Aliquam cupiditate asperiores velit. Asperiores velit aliquam magni inventore.', '2019-04-20 03:19:42', 14755, 3, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(180, 'dolor.jpg', 'Eum minus perferendis expedita dicta omnis non. Odit minima eos debitis numquam laboriosam quod. Labore et dolore molestias quia sit amet molestias nisi. Et quis reiciendis velit maiores.', '2019-07-30 22:47:26', 13109, 1, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(181, 'et.jpg', 'Qui ea dicta nobis repudiandae enim at. Quia vero est non fugiat minus unde vel. Voluptas temporibus fugit suscipit qui aut. Minus deleniti sed provident exercitationem officiis.', '2019-05-04 23:16:37', 11950, 2, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(182, 'fugit.jpg', 'Autem consequatur ullam ipsum illo. Dolorem quae dolor quasi laborum eum harum sunt. Illo voluptatem quidem quibusdam et. Est tempore voluptate ratione commodi.', '2019-09-19 21:18:59', 94504, 10, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(183, 'harum.jpg', 'Consequatur facere doloremque quas et sit neque consequatur. Hic ullam eveniet fugiat laboriosam. Sed odit totam consequatur necessitatibus nemo. Accusamus soluta dolorem maiores.', '2019-06-20 04:47:52', 35012, 2, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(184, 'eius.jpg', 'Quis nobis placeat qui voluptas. Nam vel nesciunt quae aut repellendus quam. Suscipit exercitationem corporis officia eum et. Earum praesentium possimus magni nesciunt.', '2019-11-09 18:14:47', 87625, 8, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(185, 'sit.jpg', 'Sed doloribus omnis officiis libero fugit beatae nostrum et. A aut amet atque non pariatur dolorem ullam.', '2020-08-29 15:44:38', 57566, 7, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(186, 'minima.jpg', 'Aliquam voluptatem eius autem doloremque reprehenderit. Non totam modi non nesciunt.', '2020-08-23 20:11:48', 73887, 9, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(187, 'optio.jpg', 'Pariatur temporibus mollitia nisi quis ea velit. Non incidunt exercitationem illo adipisci nihil quia repellat pariatur. Et mollitia omnis qui repellat in.', '2020-06-20 19:33:53', 45186, 5, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(188, 'vel.jpg', 'Laudantium at est rerum quam omnis vitae. Voluptatem exercitationem architecto fugit quia voluptas molestias. Molestias id autem quia voluptas ipsam. Et dolorum cumque dolorem aut vitae.', '2019-10-27 03:01:24', 12646, 4, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(189, 'provident.jpg', 'Molestias reiciendis odio quasi. Molestiae dolorem recusandae et earum. Quis quis eius optio alias.', '2019-10-14 06:57:43', 51542, 10, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(190, 'quasi.jpg', 'Aliquam delectus iure ducimus quod in. Et tempora ut et voluptatibus dolorem expedita. Quas quas adipisci at similique omnis. Assumenda et veniam aut.', '2020-09-28 19:19:46', 76760, 6, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(191, 'quibusdam.jpg', 'Quia officiis consequatur cumque culpa. Non sit nisi alias non sit odit. Qui voluptate assumenda sint dolores.', '2020-03-12 16:58:51', 15008, 4, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(192, 'similique.jpg', 'Aut id et aut quia fugit non. Harum odio hic voluptas pariatur. Qui quod tempora quod illo asperiores fugiat incidunt et. Quis debitis ut sapiente sed id pariatur. Culpa rerum omnis impedit a', '2020-08-25 10:42:27', 69802, 2, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(193, 'cupiditate.jpg', 'Eius quasi nihil consequatur totam. Quam quas culpa ipsum et. Corrupti veritatis voluptatibus numquam delectus laborum.', '2019-09-20 23:40:22', 29533, 2, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(194, 'minima.jpg', 'Sed laboriosam deleniti dignissimos. Nostrum recusandae est consequatur id natus quia quia. Distinctio et enim modi esse corrupti esse. Et autem veniam ea quo quisquam enim aut voluptas.', '2020-07-24 20:59:37', 60979, 7, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(195, 'aliquid.jpg', 'Perferendis quo adipisci sit libero qui ut quos. Provident quo fuga quidem blanditiis atque eos. Reiciendis dolorum iste incidunt dolorem maxime et.', '2021-01-06 03:07:45', 38854, 2, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(196, 'quam.jpg', 'Non mollitia error laudantium veritatis et qui corrupti earum. Quisquam est odit vero rerum voluptatem voluptatum tenetur.', '2020-07-07 21:50:54', 88876, 7, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(197, 'est.jpg', 'Sequi quas ut qui dolores rerum placeat perferendis. Et quasi sed itaque excepturi sapiente cumque at. Consequatur sed velit dolorem voluptatem. Voluptatem eos eum id.', '2019-07-29 08:56:08', 11675, 1, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(198, 'mollitia.jpg', 'Ab sint iusto enim nam molestiae enim cum. Repellat ut at non aut odit. Eligendi consequatur similique culpa quidem ullam.', '2019-06-18 22:19:57', 24333, 6, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(199, 'explicabo.jpg', 'Vitae accusamus numquam sint quia. Non qui consectetur ut accusantium velit. Distinctio natus saepe ut nesciunt odit dignissimos.', '2019-11-06 13:21:43', 97392, 10, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(200, 'facilis.jpg', 'Quod quidem hic harum error voluptatem eligendi. Natus soluta reiciendis facere et distinctio. Quaerat autem asperiores dolor aperiam. Est itaque nemo suscipit eaque vel unde eum.', '2019-07-22 02:34:27', 65077, 5, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(201, 'sint.jpg', 'Qui veritatis in repudiandae assumenda. Eum quidem aut magnam omnis. Aut ea aut non reiciendis aperiam. Nihil dolores ea quae voluptatem perferendis blanditiis.', '2020-05-15 22:40:26', 42942, 3, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(202, 'enim.jpg', 'Necessitatibus voluptatem delectus non magnam deserunt nihil dolor nisi. Quia veritatis molestias unde excepturi qui magnam. Mollitia et sit beatae aut esse aliquid et temporibus.', '2019-06-06 04:49:03', 94237, 4, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(203, 'est.jpg', 'Quam a corrupti perspiciatis et. Asperiores eos minima dolorum sed quod amet. Provident ducimus enim esse error rerum inventore assumenda. Natus voluptas repudiandae id praesentium cum nihil.', '2020-04-06 11:11:49', 18351, 1, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(204, 'in.jpg', 'Sit voluptas enim aspernatur impedit quos. Doloribus illo earum vitae perspiciatis quo vel ipsum.', '2020-06-02 05:45:43', 56141, 6, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(205, 'rerum.jpg', 'Tenetur et ut et animi dolorem molestiae. Nihil et asperiores possimus atque. Ut veritatis cupiditate et enim sed neque id. Voluptatibus veniam vel repudiandae accusamus laboriosam quam.', '2020-04-06 07:20:42', 22548, 7, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(206, 'in.jpg', 'Delectus ullam itaque qui quidem. Aut nemo ipsum tenetur laboriosam rem culpa qui. Et blanditiis ut ea consequatur qui. Cumque dolor vero hic distinctio sed.', '2020-08-29 06:30:20', 65226, 9, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(207, 'sequi.jpg', 'Architecto ab eos asperiores sit et. Ut occaecati velit rerum corporis animi dolorem laudantium. Neque aut ut iusto aut quia et blanditiis. Magnam blanditiis est aut sit.', '2020-05-04 16:09:30', 28874, 6, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(208, 'adipisci.jpg', 'Omnis dolor et repellendus quasi. Necessitatibus exercitationem velit distinctio est voluptate asperiores. Vel consequatur aut voluptatem.', '2019-03-02 23:20:13', 92156, 4, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(209, 'corporis.jpg', 'Quo sed fugiat autem quam. Et enim deleniti laborum similique veritatis id. Eligendi ad reprehenderit in modi explicabo.', '2020-08-11 23:29:10', 68329, 3, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(210, 'iure.jpg', 'Cumque rerum officiis occaecati in veritatis consequatur illo voluptatum. Non nisi sapiente tempore nulla ipsum non corrupti. Incidunt quia odit ab nostrum eligendi similique vitae.', '2019-07-09 21:31:15', 97952, 5, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(211, 'ut.jpg', 'Vel facilis velit et ea placeat dolorem cupiditate. Iste quo eaque dolorum a suscipit. Molestiae perspiciatis sequi sit voluptates.', '2019-07-15 01:28:32', 36487, 8, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(212, 'voluptatibus.jpg', 'Ipsa repudiandae eligendi doloribus nemo quia ab odit voluptatem. Voluptatibus nesciunt repellendus in aliquid nihil voluptatum et. Et totam voluptas aut quia et occaecati sed.', '2020-03-29 20:00:06', 99926, 8, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(213, 'aut.jpg', 'Dicta voluptatum soluta nam perspiciatis. Repudiandae distinctio illo molestias fugit et tempora. Repudiandae iste expedita velit aliquam quos blanditiis ratione. Quae a est quia rerum.', '2020-10-14 10:57:00', 90304, 8, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(214, 'quibusdam.jpg', 'Sit molestiae et delectus esse non voluptate rem. Accusantium tempora nostrum ipsam sunt eos.', '2019-09-17 18:38:27', 16502, 7, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(215, 'omnis.jpg', 'Architecto inventore ad aliquam similique qui. Nulla laudantium voluptates doloremque qui molestias cum illo. Rem doloremque sequi aut ut.', '2020-02-28 21:50:16', 26035, 9, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(216, 'maxime.jpg', 'Omnis aut quia aliquid possimus. Est enim labore quas porro quidem similique. Temporibus sapiente quia aut cupiditate dolor. Accusamus eius in provident qui.', '2019-09-03 15:21:55', 47415, 8, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(217, 'ut.jpg', 'Consequuntur ipsa est fugiat velit impedit iste sequi. Aliquam sed necessitatibus placeat esse non qui voluptas aut. Minima et officiis corrupti et vero eius voluptatem.', '2020-08-20 22:45:21', 15048, 6, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(218, 'labore.jpg', 'Est quis unde blanditiis. Facilis illum eos deleniti quia. Vel enim laborum cumque pariatur. Fugit aperiam commodi suscipit numquam recusandae blanditiis.', '2020-10-23 06:47:29', 94670, 8, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(219, 'non.jpg', 'Non sit perspiciatis deleniti et consectetur sit expedita fuga. Ratione unde accusantium fugiat eligendi quia.', '2019-09-21 18:02:39', 22856, 6, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(220, 'non.jpg', 'Et maiores quaerat ea dolor suscipit. Esse a libero quibusdam dolores. Molestiae magni qui molestias et accusamus quia. Iste voluptas iste delectus rerum molestias.', '2020-01-17 12:33:40', 13554, 3, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(221, 'et.jpg', 'Voluptatem eligendi earum dolore voluptatem autem. Dolorem ab ipsa eos.', '2019-11-10 17:52:20', 63979, 1, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(222, 'ut.jpg', 'Sequi et quia possimus tempore non consequatur aut. Numquam odit repellendus omnis doloremque doloremque. Voluptatem odit cum ut facere quia cumque suscipit.', '2019-07-18 18:58:10', 74412, 9, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(223, 'autem.jpg', 'Nemo quia eos saepe ducimus eos et sed. Recusandae nihil ratione ipsa omnis. Dolorem odio necessitatibus similique dolorem fugit voluptatem est velit. Quae est qui tempora amet consequatur.', '2021-01-06 03:13:33', 39588, 1, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(224, 'dolore.jpg', 'Sed accusantium error tempore voluptatem ab. Qui omnis libero nulla consequuntur praesentium sequi natus. Quas dolores in facilis.', '2019-09-02 13:16:58', 13864, 4, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(225, 'cupiditate.jpg', 'Aut et dignissimos ipsa qui tenetur nisi modi quo. Quis omnis perferendis incidunt illo fugiat velit. Sit et recusandae iusto. Quaerat maiores qui ad possimus.', '2020-08-17 16:38:53', 68349, 9, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(226, 'libero.jpg', 'Illo maiores quas natus animi non quasi. Perferendis voluptate delectus dicta porro minus. Eaque placeat dolores assumenda aut sunt.', '2020-10-11 18:12:14', 88946, 5, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(227, 'qui.jpg', 'Pariatur qui nihil nemo amet delectus eius. Dolorem quo est magni ut dolores. Sunt qui omnis reprehenderit nam in.', '2019-06-03 13:17:49', 39530, 1, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(228, 'repellat.jpg', 'Rerum quis minima dolorem deleniti dolores optio. Eos velit eaque laudantium optio nulla. At qui tempore ut facilis est. Velit doloribus magni sit molestiae est.', '2019-05-28 03:20:10', 52095, 7, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(229, 'qui.jpg', 'Nam quasi sed debitis nihil. Ratione quibusdam enim quos ex voluptas esse. Veritatis minus cum reiciendis perferendis necessitatibus quod.', '2019-12-10 15:24:01', 63521, 6, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(230, 'atque.jpg', 'Rem non doloribus ipsam rerum sunt officia inventore. Distinctio quos quaerat et earum perferendis et est. Suscipit praesentium nostrum rerum sit accusamus necessitatibus.', '2021-02-18 03:50:30', 55254, 3, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(231, 'incidunt.jpg', 'Consequatur quam odit sapiente reprehenderit qui totam. Sit qui enim quod repudiandae voluptatem soluta. Fugiat quam modi id dolorem. Voluptatem qui sunt provident dolor minima culpa.', '2020-09-07 18:29:27', 26841, 3, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(232, 'provident.jpg', 'Illum aut vero et fuga odit fugit est. Optio quasi et id et. Ab ut accusamus consectetur tenetur nam nihil ut. Totam ut rerum quam aliquam.', '2020-10-12 19:27:42', 64967, 3, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(233, 'quae.jpg', 'Fugit voluptate magni quae nobis nesciunt ipsam velit. Eum laudantium nemo facere quia ut. Eum autem et sequi vitae aut atque.', '2019-05-19 14:22:33', 43341, 2, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(234, 'est.jpg', 'Provident asperiores placeat eos reiciendis. Maxime velit voluptates nam voluptate est. Amet voluptas aut velit natus necessitatibus.', '2019-12-16 01:45:19', 50826, 6, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(235, 'fugit.jpg', 'Quia eum et dolor. Facere officiis sunt ad deleniti. Aperiam eum assumenda necessitatibus temporibus soluta amet voluptas. Et iste quia ab soluta quam.', '2019-07-11 20:02:47', 41379, 6, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(236, 'consequatur.jpg', 'Qui deserunt qui reiciendis beatae. Accusamus nobis magnam quaerat sit sequi et sit. Qui quos occaecati quos illo.', '2019-08-19 05:53:01', 75061, 10, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(237, 'occaecati.jpg', 'At consequatur et ex molestias. Ipsa repellendus repellat id sunt. Architecto earum ea illo minus et recusandae nesciunt. Veniam autem aspernatur et aut quod.', '2020-03-13 13:53:33', 74624, 8, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(238, 'recusandae.jpg', 'Explicabo vel atque et aspernatur est aut velit. Eum ut dolorem hic ea est. Quibusdam asperiores deleniti delectus qui. Et dolores repellat aut nam.', '2019-11-24 16:23:51', 42352, 5, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(239, 'iusto.jpg', 'Doloremque aut ab at sunt eligendi. Dolores est velit et voluptate porro. Esse quisquam quisquam odio repellat quia amet.', '2020-04-28 22:32:20', 98516, 5, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(240, 'libero.jpg', 'Eum vel sed qui quod reiciendis nulla libero. Dolore eveniet adipisci dolorem modi et. Voluptatem sed et a voluptatem aut quae.', '2020-05-29 03:27:06', 89058, 5, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(241, 'esse.jpg', 'Vel quis ea enim sunt error a et. Omnis quam saepe debitis et sit. Enim libero corporis ipsa beatae.', '2020-03-17 23:52:39', 57664, 3, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(242, 'magni.jpg', 'Odit sed repellendus sunt in. Fugit rerum porro excepturi molestiae. Architecto quia soluta et porro iusto asperiores culpa adipisci. Quae porro excepturi pariatur consectetur officiis simili', '2020-03-16 16:59:17', 19292, 9, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(243, 'hic.jpg', 'Beatae cupiditate consectetur omnis. Nulla voluptas et et odit. Voluptatem adipisci labore et consectetur asperiores nam.', '2020-03-08 00:36:44', 73579, 5, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(244, 'voluptatem.jpg', 'Eius consequatur quis magnam. Minima aut nobis et ratione et doloribus non. Sed sed unde magnam quo ipsum.', '2020-05-20 02:32:15', 94319, 10, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(245, 'ut.jpg', 'Sit odit est incidunt provident. Sed velit cumque autem sed sequi. Sit distinctio a odit ut. Vitae alias ab consequuntur sed repellat.', '2019-09-04 03:25:56', 42343, 7, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(246, 'et.jpg', 'Molestiae non in quidem architecto et. Id quae incidunt voluptatem et consequatur. Omnis officia distinctio expedita natus similique deserunt.', '2020-03-29 14:32:54', 41855, 7, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(247, 'sed.jpg', 'Ut ut vero blanditiis voluptatum eum vitae. Dolores inventore nam non quia et. Sint voluptatem non explicabo distinctio. Voluptas hic consequatur minus nesciunt et.', '2020-08-09 20:26:54', 78911, 9, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(248, 'culpa.jpg', 'Hic quia tenetur aperiam eveniet et voluptate quam impedit. Ea eligendi enim sunt et dolor. Natus dicta similique sed beatae aliquam et veniam.', '2019-12-20 23:04:45', 67080, 6, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(249, 'rerum.jpg', 'Magnam explicabo inventore tenetur vero. Dolor nemo et rerum impedit repellat. Minima architecto laboriosam a assumenda autem animi.', '2020-02-14 15:38:44', 52920, 4, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(250, 'unde.jpg', 'Mollitia ut eligendi voluptatem earum sed quidem. Omnis placeat placeat repellendus consequuntur dolores voluptatem. Rerum libero optio natus architecto.', '2020-10-28 01:16:10', 61270, 4, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(251, 'similique.jpg', 'Consequatur consequatur quibusdam dolores magnam reiciendis quo voluptate. Voluptas quo non dolore ea repudiandae. Natus cumque quia itaque et sit.', '2020-05-21 03:24:44', 96195, 8, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(252, 'tempore.jpg', 'Ea omnis perspiciatis ab dolor quasi et. Ratione iste minima eos libero ut voluptatibus itaque. Fugiat dolore asperiores quia ab cumque. Molestiae fuga eaque maxime quo qui unde tempore.', '2019-10-19 20:31:45', 67159, 2, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(253, 'laboriosam.jpg', 'Ea suscipit autem nesciunt ducimus. Dignissimos quae omnis porro nobis. Dicta modi est temporibus quos omnis et nobis.', '2020-05-17 12:00:31', 61871, 7, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(254, 'alias.jpg', 'Ut quia velit et voluptatibus. Pariatur sint eos et maiores facilis. Error eligendi aut quia eveniet. At repellat ipsum nihil qui accusamus sunt voluptatem.', '2019-05-15 06:04:56', 32534, 8, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(255, 'in.jpg', 'Esse in adipisci fuga occaecati et perferendis. Facilis repudiandae quia quia voluptas est iste sit sint. Atque odio quod molestias minima hic. Magnam possimus sint quae et eligendi blanditii', '2020-07-15 19:54:36', 62950, 4, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(256, 'consequatur.jpg', 'Voluptatum repellendus voluptas sit dignissimos doloribus ratione beatae. Facilis fugiat repellendus impedit magnam numquam. Asperiores amet accusantium voluptatem sapiente et et sint.', '2020-04-15 04:44:56', 57930, 7, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(257, 'optio.jpg', 'Quibusdam ad quos commodi architecto aperiam. Nesciunt maxime soluta dolor doloribus aliquam quo natus. Qui et quis fuga id ab perferendis perspiciatis nihil.', '2019-10-20 03:11:37', 91611, 4, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(258, 'non.jpg', 'In similique voluptatem ea deleniti. Sed autem dolorem unde est illum amet facere quos. Velit voluptate unde dicta pariatur et. Excepturi quibusdam incidunt molestias nemo nihil.', '2019-07-24 14:00:23', 83964, 1, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(259, 'qui.jpg', 'Dolorem tempore aut alias id quas eum libero. Iure officia sed et sunt repellendus. Iure quos velit explicabo veritatis aut odio. Quod quia accusamus rerum provident nostrum magnam.', '2021-02-19 21:59:58', 66491, 5, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(260, 'voluptatem.jpg', 'Qui iste voluptatem dolor rerum. Aut totam ut sed eos ut. Voluptates ut voluptatem quae ex eveniet. Ut saepe aspernatur qui est quo ut.', '2019-08-10 22:28:01', 41625, 10, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(261, 'neque.jpg', 'Quia pariatur et cupiditate porro recusandae eaque voluptas nemo. Et aut repudiandae similique et odit repellat eos. Alias reiciendis cum ut explicabo sed impedit tempora quos. Et quod quam d', '2019-05-04 11:13:01', 62570, 8, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(262, 'vitae.jpg', 'Sapiente est voluptatem laborum aut dolore accusamus quas. Officiis officia itaque rem est. Voluptatem molestias repellendus dolore in. Est saepe sed reiciendis consequatur.', '2019-12-25 22:38:24', 99537, 3, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(263, 'labore.jpg', 'Unde quos dolorum et asperiores voluptas. Odio error quae aut et. Et quia quis voluptatem ut recusandae possimus. Harum ut natus accusantium porro numquam saepe.', '2019-04-03 08:47:11', 56742, 10, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(264, 'cupiditate.jpg', 'Distinctio quo assumenda magnam qui et. Ad ad provident eveniet vel. Ut atque debitis ut minima. Deserunt et fuga fuga aliquam nisi. Quaerat deserunt amet dolor accusamus.', '2020-06-07 15:26:51', 20752, 6, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(265, 'ea.jpg', 'Delectus vel voluptas fuga quas et. Nihil aut inventore magni molestiae sint aut sunt ut. Rerum qui laudantium iure officia quis. Eveniet aut quas qui numquam occaecati hic rem.', '2020-07-02 08:55:15', 89903, 10, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(266, 'natus.jpg', 'Maiores animi et error natus natus magnam ea. Dolorem tempore et provident aliquid. Occaecati optio rerum et et omnis id. Tempore qui nihil inventore ea.', '2020-03-10 08:06:41', 47020, 7, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(267, 'ullam.jpg', 'Deleniti aut nihil impedit eius et quam. Porro placeat aut nemo tempore vel error. Reiciendis eveniet esse expedita ut consequatur voluptatem id.', '2019-08-05 07:13:37', 40688, 7, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(268, 'ut.jpg', 'Facilis ipsum accusantium amet maiores sint esse impedit. Id omnis pariatur distinctio assumenda modi in. Fugit quibusdam quisquam pariatur qui porro enim. Est ab neque sequi quia aut repudia', '2019-11-08 22:06:43', 12457, 2, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(269, 'ducimus.jpg', 'Quaerat amet dolorum voluptatem et non voluptate. Placeat ullam maxime natus nihil non nesciunt quas.', '2020-03-14 17:36:08', 31862, 3, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(270, 'alias.jpg', 'Blanditiis quas a recusandae iure reiciendis ex. Doloremque ut temporibus quia error et. Atque qui et molestiae quas.', '2020-04-30 17:09:43', 50693, 5, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(271, 'ab.jpg', 'Nihil explicabo suscipit possimus provident culpa fugiat sunt ad. Cumque soluta voluptatem error nesciunt.', '2019-12-23 19:06:16', 59256, 10, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(272, 'recusandae.jpg', 'Dolor quidem eum enim modi nisi est sequi. Ut consectetur ut sit voluptatem atque qui. Eum nemo veniam aut labore sed corporis quas.', '2019-08-24 01:10:31', 97091, 7, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(273, 'delectus.jpg', 'Molestiae rerum consequatur sit. Omnis consequatur quam veniam vitae sunt et. Repudiandae veritatis qui perferendis fuga non.', '2019-11-22 21:08:49', 53949, 2, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(274, 'ut.jpg', 'Quasi et fuga fuga dolorem. Accusantium at voluptas placeat itaque. Et cum quidem aliquid ab dolores et. Natus voluptatem ad et quam optio. Quasi exercitationem est recusandae. Ut placeat hic', '2019-03-28 14:04:27', 58157, 9, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(275, 'qui.jpg', 'Culpa fugiat omnis et. Velit consequuntur voluptas est et at rerum. Hic dolor similique mollitia commodi. Et consequatur et soluta dolorem dolorum qui.', '2019-12-20 21:29:08', 30907, 2, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pengeluarans`
--

CREATE TABLE `detail_pengeluarans` (
  `id` int UNSIGNED NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` timestamp NOT NULL,
  `nominal` int NOT NULL,
  `id_user` int UNSIGNED DEFAULT NULL,
  `id_pengeluaran` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_pengeluarans`
--

INSERT INTO `detail_pengeluarans` (`id`, `foto`, `keterangan`, `waktu`, `nominal`, `id_user`, `id_pengeluaran`, `created_at`, `updated_at`) VALUES
(51, 'nisi.jpg', 'Dolor minima eligendi qui rerum laboriosam. Et voluptatem quibusdam itaque est repellat ea dicta delectus. Sit magnam minima veritatis et nobis.', '2019-12-07 02:09:35', 12422, 8, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(52, 'corrupti.jpg', 'Architecto ut veniam est aut architecto et rerum. Quia sed error aut delectus quis. Necessitatibus in aperiam laudantium et libero. Dicta consequatur autem non sunt.', '2020-06-15 23:26:14', 93681, 6, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(53, 'fuga.jpg', 'Iure vitae tempore ducimus sint voluptas quia. Sed culpa omnis qui aperiam. Perspiciatis optio autem et.', '2019-11-01 04:52:27', 37049, 3, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(54, 'enim.jpg', 'Amet iure enim ex qui. Quia in accusantium laudantium. Blanditiis qui voluptatem distinctio aut eum quasi. Numquam qui aut ipsam fugiat sed eos aliquid.', '2019-03-03 00:19:55', 87596, 2, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(55, 'tempore.jpg', 'Vero ut nisi et provident repellat dolores. Ipsam facere vitae ipsum voluptate et doloribus laudantium inventore. Porro et totam qui consequatur voluptatem. Enim sunt ut maxime at explicabo u', '2020-04-07 16:42:43', 10597, 7, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(56, 'vel.jpg', 'Amet iste nisi sunt qui quasi deserunt ut. Enim dolor vitae commodi adipisci amet dolores. Facere amet pariatur modi odit accusamus ea officiis.', '2020-03-10 00:25:17', 58663, 1, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(57, 'molestias.jpg', 'Magnam et assumenda sunt ipsam hic. Quibusdam neque ipsum et voluptas atque soluta aut. Alias accusamus quas inventore natus sed molestiae aut. Enim quia dolorem sequi ea accusantium ipsum eo', '2019-12-06 20:56:15', 42321, 1, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(58, 'voluptates.jpg', 'Rerum deserunt odit dolore nihil nostrum et sed cupiditate. Enim ratione ipsam quae ut. Esse at doloremque dolor eos eos. Ex sit dolore nulla optio eligendi quam.', '2019-11-22 04:49:16', 82487, 2, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(59, 'eum.jpg', 'Optio et quas maxime omnis. Nemo similique eius repellendus sunt ut quod. A explicabo et adipisci nihil. Quia est aut ea facere rem blanditiis voluptatem.', '2019-03-12 01:50:12', 25827, 6, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(60, 'magnam.jpg', 'Incidunt possimus qui ea voluptatum consequatur. Occaecati sapiente qui optio est atque quos.', '2020-03-18 21:17:41', 27078, 8, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(61, 'laboriosam.jpg', 'Velit non esse adipisci dicta laborum odio. Odit est quisquam et cupiditate. Voluptates laudantium eos eaque soluta consequatur quis corporis. Eum in aut sunt ut accusamus illum.', '2019-03-24 11:36:17', 19251, 9, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(62, 'ex.jpg', 'Id amet eligendi error asperiores. Voluptates quo est odio blanditiis dolor consequatur. Molestiae culpa quibusdam dolorem. Sed deserunt dicta et ut voluptas quibusdam omnis.', '2019-08-09 02:30:33', 44227, 3, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(63, 'quia.jpg', 'Omnis consequatur tempora dolor ipsum nesciunt nemo repudiandae facilis. Autem itaque eligendi eum nisi. Qui velit ea quisquam doloremque vel.', '2020-06-16 06:49:25', 90149, 6, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(64, 'sit.jpg', 'Cupiditate quae ipsum qui dolore aspernatur. Debitis et ut tempore eos sunt. Quos fugiat dolorem reiciendis ducimus. Suscipit esse aperiam hic id repellendus velit voluptatibus provident.', '2021-01-01 18:13:08', 94710, 6, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(65, 'est.jpg', 'Odit quasi reprehenderit odio fugit aut suscipit. Minus voluptas reiciendis dolor sit labore. Totam ipsa vero sint qui minima voluptatum.', '2019-07-13 12:06:44', 97164, 7, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(66, 'qui.jpg', 'Aut tempora repellat consequatur quibusdam ex sequi quis. Fuga ullam beatae voluptatem quis consequatur fugiat sed. Velit soluta est et velit unde. Dolor placeat dolores cupiditate excepturi ', '2020-06-14 15:48:39', 40259, 3, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(67, 'eligendi.jpg', 'Nihil veniam est et placeat ut. Nostrum beatae in qui odit sapiente et. Soluta odit blanditiis nihil similique autem. Ut est tempore corporis sit quos dolorem mollitia.', '2019-07-31 06:45:09', 89331, 4, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(68, 'molestiae.jpg', 'Beatae ea ratione dolorum. Ea numquam et dolorem. Culpa quasi et omnis ab ut. Quae quod enim aut voluptate corrupti esse adipisci.', '2020-07-06 05:51:08', 61291, 2, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(69, 'repellat.jpg', 'Vel non rerum eveniet a. Consequuntur nulla qui iste. Dolorem rerum neque sit numquam numquam ipsum. Rem numquam rerum asperiores recusandae qui modi.', '2020-08-14 14:43:20', 44235, 9, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(70, 'accusamus.jpg', 'Maxime tenetur pariatur quia sint sit voluptas. Exercitationem et dolores expedita fuga. Dolorum omnis corrupti natus velit.', '2019-04-22 03:31:28', 70322, 1, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(71, 'officia.jpg', 'Ipsa quod fugit deserunt quis. Laudantium nulla delectus dicta est sunt. Et aspernatur repellendus et molestiae nobis deserunt nisi.', '2020-07-07 19:40:15', 46730, 7, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(72, 'consequatur.jpg', 'Consequatur aut aut omnis perferendis nihil ut. Et suscipit dolore consequatur vel assumenda.', '2019-04-10 18:31:30', 21101, 9, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(73, 'deserunt.jpg', 'Omnis quam cum laudantium iste facilis minus qui perspiciatis. Animi ut eaque laboriosam sed iste quibusdam quo beatae. Quaerat unde ut officiis sint.', '2020-08-13 17:14:16', 27873, 10, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(74, 'impedit.jpg', 'Omnis reprehenderit qui quae alias est molestiae. Fugit laudantium ut fugit corporis. Architecto nesciunt et pariatur saepe eveniet ea dicta. Possimus iusto aut earum sint natus consequuntur.', '2019-10-12 07:29:16', 17289, 9, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(75, 'distinctio.jpg', 'Et sit incidunt quibusdam sed soluta iure sunt totam. Omnis dolores nihil cupiditate ut a illum. Cupiditate maxime qui dolorem. Maxime deserunt provident quasi ipsum eaque illo dolor.', '2020-04-09 18:23:31', 57937, 4, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(76, 'esse.jpg', 'Est necessitatibus sint consequatur esse necessitatibus. Quia atque molestias dolores eius doloremque. Ut deleniti sit quidem aut id et et. Et nulla dolor consectetur ea labore doloribus ea.', '2020-12-20 07:30:42', 34572, 1, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(77, 'provident.jpg', 'Voluptatum est porro et ullam fuga amet. Illo quis hic sequi non. Dignissimos quis totam laborum impedit. Minima atque veritatis nostrum.', '2019-07-15 06:25:41', 31463, 6, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(78, 'deserunt.jpg', 'Explicabo et id autem laborum laborum et. Saepe id sequi quis maxime nemo. Illo dolorem dolor dolorum beatae. In eius reiciendis hic sed.', '2020-01-17 06:10:37', 85372, 7, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(79, 'necessitatibus.jpg', 'Porro ad dolor illum est nisi quia et. Hic est atque et et. Itaque nihil vitae qui nemo id.', '2020-10-06 21:47:16', 14607, 1, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(80, 'odio.jpg', 'Tempora magnam a quis quasi et. Velit quas consequuntur nam deleniti laboriosam. Est porro consequatur est omnis ratione.', '2019-11-27 20:05:32', 58801, 8, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(81, 'ex.jpg', 'Voluptatem sequi excepturi id doloribus culpa. Reprehenderit ut optio sed eos. Ullam et officia distinctio harum et. Voluptatem culpa deserunt labore.', '2019-04-21 19:33:50', 10197, 1, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(82, 'quasi.jpg', 'Ut qui qui facere eius et dolores autem. Odio perferendis vitae neque sequi provident est ad. Cupiditate ab cumque eveniet et.', '2020-06-28 07:10:31', 60495, 2, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(83, 'quam.jpg', 'Tenetur qui cumque possimus voluptatem. Aut possimus nesciunt et rem deserunt ipsum. Est aliquam et aut cum ipsam velit. Officiis eos rerum consequatur qui ut quia veniam animi.', '2019-08-06 04:15:39', 81031, 9, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(84, 'sit.jpg', 'Fuga dolorum voluptatum itaque exercitationem. Consequatur maxime praesentium et occaecati optio reiciendis. Et quisquam iste quibusdam est quisquam.', '2019-10-31 13:51:54', 98254, 5, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(85, 'aut.jpg', 'Qui nihil consectetur sint dolorum. Incidunt blanditiis quam voluptas esse voluptas. Veritatis optio labore rerum ab dignissimos. Unde non fugiat dolorum quis nostrum.', '2020-02-24 09:10:49', 31864, 9, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(86, 'sint.jpg', 'Minus et consequatur occaecati facere eius sequi. Exercitationem fugit qui hic est. Omnis consequatur unde ex et laboriosam. Eaque et veritatis adipisci et est.', '2019-03-08 15:17:54', 48396, 9, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(87, 'velit.jpg', 'Voluptas quo rem impedit aut quisquam. Amet qui tempore reprehenderit. Nemo suscipit rerum nihil et fugit suscipit occaecati.', '2019-10-01 16:19:22', 41999, 10, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(88, 'ut.jpg', 'Et sed et omnis unde ducimus vero. Quasi eveniet eius cumque quasi et voluptate pariatur ullam. Nemo excepturi aliquid vero odio.', '2019-12-26 17:12:01', 75540, 2, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(89, 'veniam.jpg', 'Est aut sed voluptate omnis dolorem optio. At et ipsa aut et corrupti vitae labore. Odio sapiente iusto vel dolore ut. Qui quia iure temporibus cupiditate sed.', '2019-06-22 21:52:48', 13162, 1, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(90, 'voluptatem.jpg', 'Et et atque doloremque. Architecto similique doloribus numquam eum aspernatur. Enim voluptatem repudiandae recusandae officia pariatur in et.', '2020-12-12 08:05:21', 69104, 7, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(91, 'doloribus.jpg', 'Esse molestias deleniti enim autem rerum. Voluptas consequatur voluptas consequatur voluptatem. Nemo ratione eaque consequatur provident.', '2019-03-07 17:44:53', 85097, 6, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(92, 'omnis.jpg', 'Id totam aperiam qui sequi. Ex et cum nemo optio et. Voluptates et exercitationem laudantium distinctio eius reiciendis aspernatur. Qui ratione laudantium ea vitae.', '2019-05-22 22:37:52', 13016, 9, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(93, 'non.jpg', 'Blanditiis quos illo eaque. Et quo reiciendis autem illo. Quas illum sit quod voluptatem corrupti et iusto. Molestias consequuntur voluptas praesentium culpa.', '2020-03-04 07:19:57', 15083, 8, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(94, 'dignissimos.jpg', 'Maiores laborum consequuntur debitis mollitia autem numquam officia corrupti. Aut nulla omnis a ut vel. Accusantium est ut laboriosam sapiente quis et et. Repellat quidem itaque sunt autem.', '2020-12-11 22:11:48', 22870, 8, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(95, 'assumenda.jpg', 'Expedita nam quis praesentium ea et inventore beatae. Beatae maiores voluptatem qui quam corrupti accusamus dolorem deserunt. Consequatur et rerum quis aut sit nisi sed.', '2019-04-09 13:45:48', 11718, 3, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(96, 'hic.jpg', 'Delectus illo neque aliquam voluptates deleniti. Tempora consequatur et debitis nesciunt. Enim eos molestiae dolorum facilis nostrum culpa similique.', '2021-01-10 04:00:21', 51396, 2, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(97, 'distinctio.jpg', 'Ut quis et voluptatem numquam sint dolor. Quas quibusdam et architecto. Explicabo ea esse omnis iusto. Ab eum non at ut quaerat sed voluptatum.', '2020-11-06 01:01:00', 53235, 9, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(98, 'ut.jpg', 'Eveniet sunt aut excepturi officia. Dolore quam quos qui. Et reiciendis repellat nobis aliquid sit aut.', '2019-06-13 07:04:55', 57689, 4, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(99, 'labore.jpg', 'Quia fuga molestias ab hic. Dolores nesciunt beatae fuga molestias voluptas sint ad. Fuga velit error inventore omnis dolorum eum delectus sit. Ex molestiae reprehenderit dolorum in.', '2020-02-12 21:06:48', 65980, 2, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(100, 'sit.jpg', 'Sed a quis necessitatibus occaecati expedita exercitationem totam. Et aliquam cum et rem ut dolorem. Totam facere harum exercitationem nihil.', '2019-05-21 13:34:30', 94860, 7, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(101, 'vel.jpg', 'Aut esse recusandae dolores ut. Sunt fugit consequatur exercitationem rerum pariatur. Amet voluptatem dolor dolorem sit eaque totam eius. Et dolorum iure officia doloremque.', '2020-10-16 22:26:18', 31678, 3, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(102, 'qui.jpg', 'Atque illo et eos et commodi eveniet. Est id voluptas totam porro dicta ut totam. Voluptatem qui repellendus voluptates. Perferendis iste ut fugit amet repellat dicta.', '2019-12-21 14:58:29', 44290, 5, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(103, 'aut.jpg', 'Id saepe eos asperiores ea vel aliquam. Suscipit illum et deleniti natus enim voluptatum beatae. Exercitationem commodi sint cum eum.', '2020-11-19 08:00:53', 63117, 1, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(104, 'fugiat.jpg', 'Aut molestiae commodi quo iste necessitatibus commodi ratione. Qui consequuntur modi aliquid maxime est id. Nobis sint iure odit nam numquam placeat.', '2020-02-15 19:27:40', 21600, 3, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(105, 'et.jpg', 'Assumenda aliquam omnis omnis provident repudiandae repudiandae veniam. Voluptatem sed qui est eos atque officia placeat. Itaque rerum eum fuga mollitia perferendis et in.', '2019-05-16 21:05:25', 52272, 6, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(106, 'earum.jpg', 'Quia aut qui incidunt dolor tempore. Quam magnam esse qui excepturi earum tempora. Dolores totam est et doloribus officia. Eligendi et et placeat et qui nihil.', '2020-06-24 03:35:06', 39047, 2, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(107, 'aspernatur.jpg', 'Voluptates nihil ab laudantium. Sint nesciunt itaque deserunt. Vitae sed quam inventore voluptatibus qui dolorem et libero.', '2020-04-09 08:38:28', 19918, 4, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(108, 'molestiae.jpg', 'Nesciunt accusamus qui magni quis. Quia omnis dolores sit itaque itaque. Dolor expedita sequi ducimus dolorum voluptas minus eius aut.', '2020-04-22 11:29:51', 96986, 6, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(109, 'enim.jpg', 'Est dolores ipsam ipsum et. Optio mollitia illo ratione voluptate magni. Soluta adipisci et voluptas cumque eveniet ut. Quibusdam quasi sunt adipisci ut sint doloribus. Aut et itaque aut aliq', '2019-12-19 01:29:37', 58675, 4, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(110, 'quo.jpg', 'Rem qui quidem molestiae repudiandae dolorem eos. Exercitationem dolores architecto sit ut voluptatem. Laborum non iusto exercitationem quas officiis.', '2020-10-04 02:28:50', 13383, 1, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(111, 'voluptatem.jpg', 'Sunt sunt dolores reiciendis. Vel qui porro laboriosam accusamus.', '2019-05-14 06:21:09', 81755, 3, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(112, 'nihil.jpg', 'Alias dignissimos dolor quasi enim. Sed est ducimus id et in pariatur dolorem laboriosam. Consequuntur debitis quos alias non. Minima pariatur accusamus quaerat dolor.', '2021-02-22 02:21:50', 17831, 10, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(113, 'cumque.jpg', 'Repudiandae doloribus doloribus est quisquam. Eius et sed qui voluptas. Id vel voluptatem officia aut accusantium omnis ut ducimus.', '2020-06-06 05:28:07', 97499, 1, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(114, 'dolor.jpg', 'Reprehenderit beatae quia et provident excepturi ea qui praesentium. Quas et illum voluptas eaque officiis natus. Autem id aut rem. Est exercitationem sed est.', '2019-08-20 06:34:52', 30792, 7, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(115, 'iure.jpg', 'Mollitia natus quibusdam doloribus soluta. Iure natus neque labore nostrum consequatur consequatur vero ab. Ipsa voluptates blanditiis recusandae consequatur enim incidunt accusantium.', '2020-09-26 19:19:19', 96836, 6, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(116, 'impedit.jpg', 'Voluptatem neque beatae iusto nobis. Iure voluptate cupiditate sunt. Iusto nemo hic quos qui. Facere non et aut qui qui.', '2019-03-24 00:56:37', 30801, 8, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(117, 'soluta.jpg', 'Velit qui numquam et non sint illum accusantium repellendus. Quas voluptate esse amet qui corrupti.', '2020-06-19 14:07:38', 59532, 7, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(118, 'consequatur.jpg', 'Enim beatae occaecati vitae dolorem. Est fuga nihil non. Suscipit vel cupiditate ullam iure. Asperiores incidunt accusamus laudantium quo dolorem optio aut et.', '2021-01-14 09:06:44', 88564, 1, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(119, 'est.jpg', 'Dolore architecto accusamus minus ab esse ad nostrum. Adipisci eveniet rerum nesciunt aut omnis est sed. Aut ullam vel labore aut reprehenderit consequatur odit.', '2021-01-19 07:30:27', 83941, 10, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(120, 'deserunt.jpg', 'Et voluptatem velit culpa repudiandae. Maxime aperiam officia sed laborum iste quae. Deserunt eveniet animi distinctio nam. Non quasi voluptatem ad.', '2019-07-08 19:17:03', 55354, 10, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(121, 'et.jpg', 'Mollitia temporibus quia adipisci sunt. Voluptatem dolor magnam totam vitae reprehenderit illo. Aut veritatis eos voluptatem ipsa quae ab voluptates sit. Esse enim impedit quae quia.', '2019-09-23 07:39:32', 66393, 2, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(122, 'quis.jpg', 'Error occaecati fugit accusamus consectetur et. Vel blanditiis enim enim eveniet et cumque esse. Occaecati omnis quia beatae nobis repellat. Eius aut ea qui incidunt.', '2019-08-27 07:03:47', 89010, 9, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(123, 'esse.jpg', 'Saepe illum et dolorem rerum. Et qui molestias molestias ea nobis assumenda. Veritatis qui voluptatem sit rerum maiores velit adipisci.', '2021-01-27 12:05:52', 66666, 2, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(124, 'excepturi.jpg', 'Aut officiis consequuntur ut velit aliquid ipsa. Rerum dolorem voluptatum quos est error molestiae id et. Voluptatem voluptate voluptatem expedita error reprehenderit cumque.', '2021-01-07 16:02:58', 29168, 6, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(125, 'et.jpg', 'Assumenda vitae voluptatem iusto eaque laboriosam minus. Eos dolorum dolores non harum eius sint laudantium. Aperiam aut quasi eos eum et qui earum. Aspernatur non aliquid eum ab quibusdam to', '2020-03-15 15:20:21', 15219, 2, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(126, 'distinctio.jpg', 'Quas quis facilis et. Voluptatem quis doloribus et sequi fugiat mollitia. Itaque magni repudiandae eaque. Ut porro dolor nesciunt dolores.', '2019-04-05 02:31:09', 63392, 1, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(127, 'iure.jpg', 'Ducimus blanditiis reprehenderit laudantium reiciendis quia. Laborum architecto aspernatur unde ipsa non asperiores necessitatibus. Voluptas nihil ex ut alias veniam unde.', '2020-01-28 07:35:47', 48595, 9, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(128, 'assumenda.jpg', 'Totam sit perferendis aliquam expedita. Commodi non dolorem dolorem maiores rem molestiae. Nostrum aut sint porro dicta deleniti beatae sed.', '2019-04-20 08:57:15', 65517, 3, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(129, 'facere.jpg', 'Sint beatae consequatur quidem tempore iste dolorem. A earum facilis eum atque et vel aut. At quasi aliquam et ut distinctio.', '2019-04-01 08:04:01', 27119, 6, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(130, 'ea.jpg', 'Totam suscipit numquam necessitatibus quasi quis explicabo sapiente. Odio eos nesciunt beatae expedita quam tempora.', '2019-12-19 17:57:19', 75093, 1, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(131, 'aut.jpg', 'Necessitatibus sed ipsum eum qui. Fuga deleniti a ab. Quas deserunt nemo et aperiam est. Atque nam praesentium quis.', '2020-02-07 20:55:21', 94833, 1, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(132, 'illum.jpg', 'Consequatur quia quo ut exercitationem sunt eos et aut. Quia est et nisi reprehenderit tenetur soluta maxime. Sint qui distinctio possimus exercitationem. Laudantium in aut occaecati ea dolor', '2020-04-19 19:36:16', 10997, 9, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(133, 'reiciendis.jpg', 'Libero quis sed a ut quisquam odit. Nesciunt recusandae cum eum porro. Dolorem sunt a et est repellat. Dolorum est tenetur magni vel voluptas enim et et.', '2019-07-31 16:13:23', 23867, 4, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(134, 'eveniet.jpg', 'Et temporibus nulla ab temporibus possimus nam. Explicabo officia iure id. Vel rerum deserunt eveniet dolorem nam.', '2020-02-28 17:01:17', 62447, 9, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(135, 'aperiam.jpg', 'Unde fugiat labore ea nihil. Nobis voluptatem voluptate voluptatem omnis suscipit molestias. Inventore molestiae vitae enim fugiat possimus ducimus velit.', '2020-10-16 00:13:37', 71803, 1, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(136, 'consequuntur.jpg', 'Fugit fugiat labore voluptatem autem. Aperiam suscipit quo vero rerum. Impedit ut debitis repellat consequuntur aliquam.', '2019-09-18 01:30:43', 50644, 1, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(137, 'et.jpg', 'Est quis voluptate optio voluptas voluptatibus aliquid. Tempore velit doloribus adipisci facilis consectetur.', '2019-09-18 06:25:56', 21767, 5, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(138, 'hic.jpg', 'Porro explicabo vel aliquid modi. Nihil aut harum commodi enim delectus dolor repudiandae. Tempora modi et placeat veritatis. Nisi qui quia facilis voluptatem iste eveniet eligendi beatae.', '2021-01-10 21:50:08', 61612, 9, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(139, 'temporibus.jpg', 'Neque deleniti ratione esse ipsum. Soluta inventore laboriosam est dolor et earum. Eos reprehenderit aperiam quisquam tempora voluptas sed.', '2020-02-14 00:47:11', 97966, 7, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(140, 'enim.jpg', 'Eos enim vitae corrupti blanditiis qui est facere. Ut quibusdam odit voluptas aut. Officia impedit atque velit voluptatibus rerum maxime quia.', '2020-11-24 17:28:39', 59489, 1, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(141, 'quia.jpg', 'Illum sit est nihil quo sequi qui. Itaque voluptas sed in est. Sint placeat sed fuga quam quia fugit. Sit laudantium sed fugit laborum accusamus.', '2019-07-30 17:23:42', 61374, 8, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(142, 'ipsa.jpg', 'Sequi corrupti quis error ea nesciunt cum. Necessitatibus nostrum omnis iusto fugit esse maiores cum. Odio dolorum et accusamus fuga consequatur fugiat cupiditate.', '2020-01-24 22:49:30', 77666, 2, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(143, 'ut.jpg', 'Est et nostrum in et quo voluptatem. Iusto quia fugit quis modi consequuntur tempore unde. Mollitia accusantium ullam a vel.', '2020-05-08 10:48:15', 90610, 1, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(144, 'qui.jpg', 'Eum nam vel ipsam neque aut. Error nihil sit odit deserunt quis alias. Facere est quia maiores qui fugit nostrum suscipit.', '2020-02-08 09:27:44', 64265, 6, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(145, 'corrupti.jpg', 'Repellendus voluptas nostrum ut quos itaque. Nam sapiente enim aut magni quia. Qui voluptatem magnam aliquid recusandae fugit. Omnis commodi quo sit odio iure.', '2020-10-27 09:30:38', 20415, 7, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(146, 'consequatur.jpg', 'Ex consequatur inventore nihil nisi voluptatem voluptatem. Laudantium est libero commodi itaque. Repellendus non delectus dolores officiis velit.', '2019-08-27 15:31:51', 85662, 5, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(147, 'corrupti.jpg', 'Quas eligendi omnis sapiente saepe et aut perspiciatis. Blanditiis molestiae fugiat dolor ut. Dolorem aperiam voluptas tenetur vel eum. Quo quis nemo impedit.', '2019-09-26 21:33:29', 50417, 2, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(148, 'sit.jpg', 'Reiciendis cumque ullam dolores reprehenderit repellendus. Cumque qui quia id quia qui. Voluptas cum esse officiis ea sit cum. Facilis velit debitis cum quam ab rerum.', '2019-12-19 21:17:45', 26072, 7, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(149, 'quasi.jpg', 'Voluptas voluptatibus et aliquid sapiente voluptatem aut omnis. Nihil consectetur possimus libero dolores. Occaecati vero voluptatem dicta aut.', '2019-10-11 08:05:46', 84801, 2, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(150, 'minima.jpg', 'Veniam possimus vel sint pariatur. Qui labore eius omnis nisi architecto. Nobis a sapiente nostrum quo nesciunt ut. Veniam aut ratione velit nemo.', '2020-05-17 21:24:22', 87652, 10, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(151, 'occaecati.jpg', 'Et eos molestias hic eos repudiandae ea. Alias dolorem voluptatem asperiores et. Accusamus animi dicta enim quisquam rem eum nulla. Excepturi neque sed laudantium labore atque.', '2019-12-10 17:04:45', 93273, 5, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(152, 'aspernatur.jpg', 'Impedit quidem eum quod nemo. Dolor consectetur eos tempore quidem nihil molestiae officiis.', '2020-10-30 10:22:40', 52879, 7, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(153, 'cumque.jpg', 'Et molestias est adipisci amet delectus cumque explicabo. Molestias in sint autem. Rem quod rerum aut officiis facere mollitia.', '2019-11-23 08:41:41', 24419, 5, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(154, 'odio.jpg', 'Molestiae autem aut alias distinctio laboriosam explicabo. Qui iusto voluptate officiis ut aut voluptatum. Voluptate quidem voluptatum eum veritatis amet qui sit.', '2019-12-21 17:08:25', 33863, 2, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(155, 'assumenda.jpg', 'Ducimus est doloribus similique laudantium magnam nam nisi. Voluptatem nisi a aut rem. Quasi qui dolore dolorem non minus pariatur. Omnis quia magnam eligendi facilis earum velit reiciendis.', '2019-03-11 01:27:36', 16551, 8, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(156, 'vitae.jpg', 'Aut culpa accusamus omnis non corrupti eum. Voluptatem aut ut quis quod aut minima. Et itaque et harum enim possimus.', '2019-05-04 02:03:34', 31823, 3, 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(157, 'ducimus.jpg', 'Quis sit dolor blanditiis modi quis velit minima dignissimos. Eos suscipit aut soluta et reprehenderit nihil. Sunt vel omnis quae. Distinctio non iste veritatis unde.', '2019-10-15 06:40:18', 50289, 6, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(158, 'fugiat.jpg', 'Quasi eos earum praesentium veritatis dolor. Enim est eligendi quidem doloribus eum. Blanditiis sit aliquid voluptas quidem fuga recusandae. Ut nihil quo consequatur mollitia alias fugit pari', '2019-10-30 12:54:05', 98030, 3, 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(159, 'quidem.jpg', 'Dolorem molestias incidunt omnis qui sit. Ut aut quibusdam sequi. Quis sint molestias optio voluptatem aut ut. Magni placeat dolor sunt ex ut quam aut.', '2019-10-18 16:10:43', 30251, 5, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(160, 'ad.jpg', 'Corrupti sapiente nulla velit minus laboriosam. Rerum hic ut sed est. Et sed natus minima molestiae vero. In repudiandae voluptatum quia dolor.', '2019-04-27 06:08:13', 97527, 9, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(161, 'sunt.jpg', 'Nemo sunt et tenetur non et consectetur. Officia et quisquam impedit sit. Et ratione eligendi qui quia molestiae.', '2019-11-23 22:47:03', 20758, 3, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(162, 'sed.jpg', 'Est est consequatur et dolor deleniti. Et officia quia dolorum est. Necessitatibus commodi iste provident iste facere quia. Quaerat non velit ut ad.', '2021-01-23 11:50:52', 37620, 7, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(163, 'dolores.jpg', 'Aspernatur architecto neque quis accusamus rem. Voluptatum reiciendis similique est ducimus dolorem laudantium nisi. Consectetur sapiente voluptate hic quia animi qui quia.', '2019-04-10 21:44:56', 41208, 7, 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(164, 'eaque.jpg', 'Labore est et velit ex cumque dignissimos vel. Illo necessitatibus dolor asperiores odit. Non animi dolorem voluptatibus saepe nihil quisquam.', '2020-11-22 22:35:38', 68538, 1, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(165, 'omnis.jpg', 'Animi ut fugit nesciunt unde magnam et sit. Aut dolorem velit aut numquam optio. Quasi qui beatae asperiores eos. Quam in nobis maxime deserunt qui minus.', '2020-09-24 04:59:27', 34349, 10, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(166, 'asperiores.jpg', 'Nobis consequatur doloribus dolor illum eligendi voluptates. Est molestiae eum ea veniam voluptates. Voluptas accusamus molestias quo enim aliquam enim reprehenderit quis.', '2019-08-12 21:55:58', 82365, 7, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(167, 'sapiente.jpg', 'Praesentium quia et voluptatum reiciendis minus velit voluptas. Ut tempora inventore dolor cupiditate. Repellendus voluptates dolores reprehenderit repudiandae illo quisquam.', '2019-03-20 22:21:21', 31470, 6, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(168, 'vitae.jpg', 'Sed in hic sequi ut sit sit laborum. Et voluptatibus earum quasi dolorem blanditiis nisi quis. Reiciendis occaecati magni illo doloremque repellendus. Rerum et dolore sed qui quisquam.', '2019-03-14 22:10:06', 36763, 1, 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(169, 'incidunt.jpg', 'Iusto vero blanditiis id repellat quia quia. Quis aut quia ipsum qui. Quo sed iusto reiciendis dolore voluptas. Voluptatem deserunt labore ut dolores eaque ullam aut quisquam.', '2019-12-13 21:19:14', 16310, 9, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(170, 'sapiente.jpg', 'Maiores non amet est voluptas culpa quia. Ducimus molestiae quo expedita enim quis autem. Optio suscipit et voluptatem consequatur.', '2019-10-04 12:56:28', 29850, 2, 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(171, 'repellat.jpg', 'Ut omnis dolorem reiciendis. Fugit molestiae totam distinctio labore est. Rerum et nostrum sit iste et quaerat atque qui. Dicta optio eum vel aliquid optio et ducimus quam.', '2019-07-02 22:02:04', 14919, 4, 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(172, 'molestiae.jpg', 'Voluptatem unde consequatur reiciendis quam. Rem autem quae id fugit at qui accusantium. Dolores cum rerum ipsa veniam voluptas est. Quia omnis ea hic maiores sit aperiam dolor.', '2020-04-14 04:25:55', 31506, 9, 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(173, 'enim.jpg', 'Quibusdam ratione magnam distinctio maxime. Eos quisquam est ratione dolores ut eos sapiente. Ex debitis maiores iure necessitatibus.', '2019-10-22 11:40:03', 39141, 1, 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(174, 'deserunt.jpg', 'Placeat harum unde saepe voluptates dolorem. Deserunt neque similique qui nemo quia nesciunt consequatur nobis. Quis natus et saepe sit. Voluptas sint explicabo fuga sequi ut cupiditate magni', '2020-03-03 03:07:00', 25750, 3, 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(175, 'a.jpg', 'Nulla voluptates voluptatem eos repellendus culpa et deleniti. Aut assumenda dolorum nesciunt. Quidem repellat id magnam a.', '2019-10-20 06:16:06', 40547, 3, 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penyisihan_incomes`
--

CREATE TABLE `detail_penyisihan_incomes` (
  `id` int UNSIGNED NOT NULL,
  `nominal` int NOT NULL,
  `waktu` timestamp NOT NULL,
  `id_tabungan_berencana` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_penyisihan_incomes`
--

INSERT INTO `detail_penyisihan_incomes` (`id`, `nominal`, `waktu`, `id_tabungan_berencana`, `created_at`, `updated_at`) VALUES
(51, 99629, '2020-11-15 00:18:02', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(52, 22227, '2019-09-03 20:56:07', 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(53, 80246, '2020-08-04 20:33:42', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(54, 24936, '2020-07-07 15:41:43', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(55, 15930, '2021-01-30 08:24:40', 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(56, 31739, '2021-01-17 23:33:58', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(57, 21897, '2021-02-21 04:30:44', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(58, 90719, '2020-05-26 20:25:20', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(59, 96134, '2020-08-27 10:54:17', 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(60, 46797, '2020-05-05 11:48:24', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(61, 48068, '2021-02-11 01:29:03', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(62, 82894, '2020-06-11 12:44:07', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(63, 18774, '2020-06-13 05:14:40', 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(64, 88900, '2020-11-30 14:33:52', 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(65, 38379, '2019-11-11 20:53:04', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(66, 77541, '2019-03-18 09:36:17', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(67, 48716, '2021-02-21 09:30:59', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(68, 41778, '2020-07-01 20:10:28', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(69, 25591, '2020-08-16 23:48:46', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(70, 89866, '2021-02-14 17:51:49', 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(71, 91054, '2020-06-06 02:57:47', 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(72, 73224, '2020-04-09 09:15:52', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(73, 79457, '2020-09-28 04:10:10', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(74, 37450, '2019-10-03 13:02:30', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(75, 12119, '2019-04-29 16:18:31', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(76, 21836, '2021-01-03 19:44:39', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(77, 84425, '2019-08-03 11:49:15', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(78, 95987, '2020-11-21 03:07:45', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(79, 81358, '2020-04-14 01:39:35', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(80, 12101, '2020-09-04 21:29:21', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(81, 68710, '2020-01-08 20:45:08', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(82, 76286, '2020-02-02 01:31:46', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(83, 20047, '2019-06-22 17:09:34', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(84, 54888, '2020-09-17 23:21:17', 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(85, 49695, '2019-09-17 17:18:24', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(86, 92922, '2020-07-02 16:53:02', 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(87, 31113, '2020-12-21 09:45:50', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(88, 64460, '2020-04-30 23:39:10', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(89, 88804, '2020-02-04 08:29:37', 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(90, 22443, '2020-05-20 14:25:35', 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(91, 69981, '2020-12-15 19:14:50', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(92, 26296, '2021-02-08 03:13:37', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(93, 27000, '2020-06-05 06:20:51', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(94, 31363, '2019-11-04 05:38:48', 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(95, 39556, '2019-05-20 00:27:33', 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(96, 79357, '2019-10-12 06:10:23', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(97, 19034, '2020-07-09 10:18:08', 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(98, 39554, '2019-06-01 07:16:00', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(99, 60634, '2019-10-12 08:47:29', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(100, 66966, '2020-12-17 17:01:58', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(101, 28556, '2021-02-01 19:54:29', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(102, 53811, '2019-11-10 01:56:47', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(103, 24338, '2020-09-19 17:45:00', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(104, 95742, '2021-02-11 08:22:04', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(105, 27674, '2020-04-20 10:52:36', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(106, 35314, '2019-06-17 05:35:14', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(107, 20786, '2019-10-21 23:37:44', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(108, 82404, '2019-11-16 01:19:14', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(109, 44697, '2021-01-30 09:26:21', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(110, 26196, '2019-07-11 15:07:31', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(111, 60105, '2019-08-12 03:51:01', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(112, 19829, '2020-01-06 06:43:27', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(113, 45285, '2020-08-03 16:07:13', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(114, 53913, '2019-05-02 19:10:52', 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(115, 21828, '2020-03-02 15:50:40', 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(116, 24014, '2020-10-28 19:55:28', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(117, 98892, '2019-11-29 07:24:58', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(118, 87366, '2020-07-01 12:05:11', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(119, 61800, '2020-05-24 11:09:10', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(120, 37973, '2019-08-21 19:50:45', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(121, 20497, '2020-02-24 13:14:55', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(122, 47272, '2019-10-27 20:19:19', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(123, 61566, '2020-10-05 19:47:38', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(124, 55400, '2020-07-07 04:56:55', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(125, 24873, '2019-04-30 03:06:02', 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(126, 15498, '2019-10-08 09:00:30', 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(127, 23505, '2019-09-14 12:22:45', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(128, 16204, '2020-03-30 01:47:02', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(129, 69397, '2020-03-21 17:22:48', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(130, 90337, '2020-01-21 08:54:54', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(131, 17917, '2021-02-15 17:30:50', 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(132, 18398, '2020-09-27 16:14:17', 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(133, 44083, '2020-03-20 21:25:55', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(134, 89345, '2019-10-18 11:02:01', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(135, 85439, '2019-05-30 14:12:09', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(136, 25818, '2020-08-26 14:34:03', 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(137, 33629, '2019-05-04 20:41:21', 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(138, 72760, '2020-01-05 06:12:47', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(139, 86160, '2020-05-16 01:30:45', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(140, 63809, '2019-11-11 02:45:46', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(141, 24779, '2020-07-20 01:24:03', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(142, 50526, '2020-06-01 22:07:47', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(143, 80399, '2020-06-08 20:05:56', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(144, 27239, '2019-09-14 08:01:53', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(145, 72116, '2020-08-20 18:19:15', 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(146, 55842, '2020-06-15 10:03:17', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(147, 96672, '2021-01-30 13:13:32', 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(148, 71082, '2020-12-14 06:00:29', 6, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(149, 17827, '2020-11-12 02:55:00', 7, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(150, 28133, '2021-02-15 05:42:29', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(151, 55208, '2019-06-13 13:33:45', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(152, 47362, '2020-05-28 14:57:38', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(153, 40656, '2019-09-16 00:20:51', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(154, 19450, '2020-09-10 00:26:08', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(155, 23443, '2019-06-01 16:12:01', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(156, 78404, '2020-04-16 18:24:01', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(157, 97947, '2020-03-03 16:38:16', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(158, 87460, '2021-02-22 10:38:52', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(159, 80981, '2019-05-05 22:54:44', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(160, 97483, '2019-03-17 23:03:00', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(161, 59062, '2020-12-31 02:24:51', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(162, 65617, '2020-03-28 22:06:02', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(163, 70898, '2020-04-27 19:12:26', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(164, 46601, '2020-11-13 01:49:20', 5, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(165, 34508, '2020-04-03 17:56:50', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(166, 25675, '2019-07-01 10:05:01', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(167, 35489, '2019-10-16 10:28:47', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(168, 80335, '2020-08-24 06:04:34', 2, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(169, 92080, '2019-10-17 23:37:45', 8, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(170, 42040, '2020-10-05 18:33:30', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(171, 92211, '2019-03-10 23:09:39', 9, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(172, 19263, '2019-05-22 22:30:56', 4, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(173, 44016, '2019-11-15 23:46:52', 10, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(174, 21925, '2019-03-18 15:39:55', 1, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(175, 64868, '2019-03-01 10:09:31', 3, '2021-02-25 06:28:06', '2021-02-25 06:28:06'),
(176, 2000000, '2021-02-25 06:31:28', 36, '2021-02-25 06:31:28', '2021-02-25 06:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('pemasukan','pengeluaran') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `jenis`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Reilly Skiles', 'pengeluaran', 'Dolores recusandae quidem eos ducimus est eaque eum. Eum fuga id est aliquam et rerum quia. Quia recusandae consectetur aut nesciunt minus.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(2, 'Krystal Considine', 'pengeluaran', 'Id quia pariatur repudiandae. Cumque sunt vel necessitatibus nihil provident. Omnis illo ipsum sit fugit eos.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(3, 'Lilyan Fisher', 'pemasukan', 'Asperiores esse voluptatem reiciendis natus dolores neque cupiditate. Perferendis est sunt et sed at. Debitis vero sed et architecto vitae quis.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(4, 'Deja Cronin', 'pengeluaran', 'Voluptates atque aut qui optio maxime. Quisquam enim et tenetur molestiae a. Accusantium expedita consequatur amet non omnis rerum id.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(5, 'Dr. Nicolas Buckridge', 'pemasukan', 'Harum est aut aut ullam qui accusamus omnis. Exercitationem porro fugit et molestiae omnis. Sed similique qui deleniti sed.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(6, 'Hollis Johnston I', 'pemasukan', 'Doloremque laborum dolor est totam nobis beatae sed. Aut similique ipsa quaerat. Et id mollitia sed aut eum sunt.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(7, 'Sienna Gutkowski', 'pengeluaran', 'Iste molestiae molestias quia est hic ut praesentium. Rem est tenetur odit et sit odio. Quae et aspernatur rerum a ut. Reiciendis natus quia quam omnis aspernatur et corrupti.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(8, 'Ryleigh Cummerata', 'pengeluaran', 'Voluptates dolores alias modi molestiae ut. Architecto soluta quo eos vel. Delectus cumque officiis ut omnis iste voluptatibus. Cupiditate saepe natus aperiam qui est nemo error.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(9, 'Arvel Windler', 'pengeluaran', 'Non ut voluptatem veniam rerum quisquam id temporibus. Fugit consequatur alias nam facere et nostrum et. A qui occaecati temporibus et aut.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(10, 'Isac Herman', 'pemasukan', 'Fugit modi non qui nemo dolor. Autem repellat voluptas eos molestias. Voluptatem ut consequatur error praesentium reiciendis qui. Iusto illum dolores architecto maxime.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(11, 'Murphy Gislason', 'pengeluaran', 'Aut consequatur corrupti impedit. Est ut omnis placeat nisi assumenda eum perspiciatis. Veniam iste animi vitae ipsam. Culpa quisquam fuga autem dolor recusandae nobis aliquam praesentium.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(12, 'Hermina Stracke', 'pengeluaran', 'Sit et beatae officiis iste et repellat. Nemo reprehenderit sint itaque iste corrupti qui vitae. Aut delectus odit eos veritatis beatae.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(13, 'Dr. Giovanna King Sr.', 'pemasukan', 'Enim possimus quisquam quibusdam ipsam amet fugiat. Nesciunt sit alias quia non. Est voluptates cum tempore nemo soluta eum accusantium vel.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(14, 'Dr. Katlyn Brown', 'pengeluaran', 'Quae doloribus rerum facere voluptatem sit. Ab laborum qui velit facere. Sequi necessitatibus similique consectetur beatae. Quisquam sit odit eligendi voluptas.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(15, 'Dr. Travon Tromp', 'pengeluaran', 'A mollitia unde est dolores et. Repudiandae pariatur exercitationem culpa qui voluptate rerum. Temporibus ut quis et. Quibusdam quo in eos maiores et quia consequatur.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(16, 'Cristina Luettgen Sr.', 'pengeluaran', 'Reiciendis a cupiditate corrupti aut dolor velit ad. Dicta nemo nostrum non fugit cum nisi. Atque est recusandae quo consequatur asperiores. Blanditiis exercitationem cumque voluptas.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(17, 'Ernie Breitenberg', 'pemasukan', 'Ab dolorem accusamus vel saepe. Id est fugiat est tenetur est itaque. Nam optio corrupti sunt nostrum rem ipsum.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(18, 'Jackson Legros', 'pemasukan', 'Itaque et et sed dolorem. Porro id atque omnis et. Tempore odit at tempora necessitatibus. Incidunt facilis ullam id. Molestiae labore perspiciatis incidunt voluptas qui natus.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(19, 'Meda Gleichner', 'pengeluaran', 'Iste sed iure laudantium non. In velit a libero ratione tempora corporis. Accusantium itaque non eum tenetur error non amet. Quia est minima nam alias exercitationem saepe ex.', '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(20, 'Alexandrea Heller DDS', 'pemasukan', 'Laboriosam consequatur id minima voluptatum. Rerum fugiat aut perspiciatis quos. Voluptas non vero provident quia.', '2021-02-25 05:23:53', '2021-02-25 05:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_11_03_070117_create_tabungan_berencanas_table', 1),
(3, '2019_11_03_070259_create_detail_penyisihan_incomes_table', 1),
(4, '2019_11_03_070823_create_kategoris_table', 1),
(5, '2019_11_03_071023_create_pemasukans_table', 1),
(6, '2019_11_03_071721_create_detail_pemasukans_table', 1),
(7, '2019_11_03_072201_create_pengeluarans_table', 1),
(8, '2019_11_03_072809_create_detail_pengeluarans_table', 1),
(9, '2019_11_09_111011_update_tabungan_berencanas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pemasukans`
--

CREATE TABLE `pemasukans` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_kategori` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemasukans`
--

INSERT INTO `pemasukans` (`id`, `nama`, `keterangan`, `id_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Ethan Padberg', 'Dolore laudantium debitis aut omnis dicta. Ea et aut fuga magni aut. Sit sit nam ut quia eaque eaque unde. Sequi sapiente ut enim quo reprehenderit expedita. Voluptatem placeat dolorum provid', 9, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(2, 'Mr. Danny Heidenreich', 'Asperiores eveniet excepturi reiciendis harum sit sit autem. Laborum velit aut alias repellat quam quo sint quasi. Quia quas reprehenderit atque accusamus voluptates dolores.', 4, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(3, 'Makenna McClure', 'Aut voluptatum aut repudiandae dolorem officiis mollitia ullam et. Sed aut voluptas numquam. Eius assumenda blanditiis dolorem ut. Alias aut molestiae in inventore occaecati ullam.', 9, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(4, 'Nichole Ledner', 'Reiciendis saepe totam officiis est illo quia sed qui. Odit magni cumque non laudantium corrupti. Quaerat dicta fuga rerum et.', 9, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(5, 'Elissa Reynolds II', 'Voluptatem culpa nihil sapiente reiciendis. Necessitatibus libero sint voluptate nobis aut. Rerum vel voluptates neque pariatur consequatur eum ratione. Neque non est consequatur.', 1, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(6, 'Johnny Berge', 'Minima voluptatem ut accusamus. Quod nobis recusandae neque quo nihil autem quod. Ullam sunt quidem iusto odit sit quibusdam. Consectetur et nesciunt cupiditate tenetur exercitationem rerum.', 6, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(7, 'Savanna Hills', 'Expedita laudantium dolor est et. Omnis officia ut architecto quidem debitis possimus non. Perspiciatis sint qui dolore quis. Commodi officiis et et numquam. Porro illum eaque vel minus qui s', 5, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(8, 'Kadin Boyer', 'Nihil earum ut pariatur odit temporibus. Odit facere debitis qui soluta est. Magnam temporibus dolorem provident temporibus.', 4, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(9, 'Josephine Funk', 'Eligendi sunt fugit aspernatur culpa maiores sunt est. Quasi vitae consectetur est dignissimos. Molestiae deleniti assumenda voluptas veritatis eveniet qui unde.', 8, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(10, 'Gunnar Friesen', 'Rerum modi ad quo nobis et officiis. Porro est perferendis illum expedita ea ut quo. Quia illum officiis sunt expedita sunt tempore.', 4, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(11, 'Elena Schmitt', 'Autem corporis et aut dolorum ad qui. Tempora ullam deserunt blanditiis ut quia sit nemo. Ipsum est libero nihil.', 1, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(12, 'Cathrine Yundt PhD', 'Voluptatem qui ad at alias mollitia. Odio laboriosam ab dolorum vel. Ut aspernatur totam debitis dolor quidem corporis.', 1, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(13, 'Dr. Simeon Goodwin', 'Harum deserunt ut consequatur possimus. Quia quia nam sit distinctio at molestiae vero. Deleniti eos consequatur velit sit repudiandae ipsam excepturi.', 1, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(14, 'Emilie Schroeder', 'Harum culpa dicta officia hic odit voluptatibus. In nihil doloribus illo. Amet optio reprehenderit sit aut expedita laborum reiciendis eos. Ut ipsa id vel.', 1, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(15, 'Estelle Dooley', 'Quia libero provident molestiae ratione nihil. Dolorem sint facilis et eos. Et dignissimos et delectus voluptas exercitationem.', 1, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(16, 'Prof. Lonzo Kirlin', 'Qui maxime vel unde in cum. Alias aut excepturi quia rem animi maxime et aut. Minus voluptas error nostrum culpa dicta.', 2, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(17, 'Dr. Mandy Smitham', 'Et quasi in provident sapiente exercitationem quia dolorem quas. Doloremque illum ut et excepturi illum itaque error. Eos enim adipisci aspernatur illo aliquam nisi.', 2, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(18, 'Ezekiel Dicki', 'Aperiam aut voluptates aut. Amet vel odio et facere ad quas cupiditate. Occaecati blanditiis quia dolores neque sequi quaerat. Molestiae dolore laudantium sint hic animi.', 8, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(19, 'Eriberto Veum', 'Totam repellendus provident magni fugiat. At magni laborum sit iste. Natus sit molestiae facilis quos corrupti velit ab est. Soluta rerum sit delectus.', 3, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(20, 'Eli Lockman', 'Aut beatae sit non a. Aspernatur consectetur neque minus laborum. Nostrum commodi corporis est asperiores.', 3, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(21, 'Maurice Douglas', 'Maiores est beatae nam culpa et quia consectetur sed. Doloribus ipsum aliquid harum et quis.', 6, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(22, 'Everardo Schowalter', 'Deserunt corporis mollitia et voluptatem non. Nobis deserunt fugiat est. Eligendi et veniam et. Consequatur atque iste minus quam qui aut omnis. Distinctio nostrum est est sit.', 5, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(23, 'Dr. Ralph Barton V', 'Tempora ipsam quibusdam quis quia consequatur. Totam qui omnis dicta. Deserunt cumque tenetur nobis accusantium accusantium est. Odio quod voluptate quia qui neque quo dolores.', 3, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(24, 'Prof. Charles Rath I', 'Commodi dignissimos temporibus modi blanditiis. Autem autem incidunt et et est qui nulla. Et velit eligendi distinctio consequatur deserunt voluptas. Quo veniam vero dicta sequi.', 5, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(25, 'Mohammed Willms', 'Molestiae molestiae occaecati numquam nisi iusto odit. Ex doloremque soluta ducimus. Facilis alias est id ducimus.', 1, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(26, 'Isaac Jenkins', 'Incidunt fugit praesentium ipsam beatae nulla illum libero. Veritatis autem rerum et alias.', 4, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(27, 'Lia West', 'Quam ut qui aut voluptatem vero in. Voluptate atque laudantium quia molestiae et. Fuga sed in quo ipsa qui quia. Atque non enim sequi architecto ut aut.', 4, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(28, 'Sabrina Bins', 'Dolor eligendi adipisci minus debitis animi voluptatibus odit. At non velit magnam quis. Aut cum voluptas ut eaque et similique illo. Iusto dolorum dolore optio maxime.', 8, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(29, 'Prof. Eliane Stracke', 'Quaerat quibusdam voluptate quae eius. Aut repudiandae et quidem voluptatem ipsum voluptate dolor molestias. Voluptatem sit aperiam aut minus nobis rerum.', 4, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(30, 'Kaley Barton', 'Et in quaerat molestiae. Rerum omnis deleniti qui et beatae quo maxime. Explicabo nobis reiciendis at fuga vel. Eum ratione iusto omnis sed enim. Unde repellendus sint ea nihil.', 3, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(31, 'Erna Kris IV', 'Eos aliquid aut ex ut odit sint nemo. Temporibus modi nihil dolore unde omnis quo. Quo qui ad velit aliquam et occaecati. Quam sint cupiditate facilis. Non ad labore doloribus magni.', 5, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(32, 'Anita Bashirian IV', 'Odit accusamus qui culpa blanditiis non consequuntur harum. Veniam voluptates assumenda et distinctio dolorem sunt est illum. Asperiores ut suscipit exercitationem enim. Modi et sed omnis in ', 9, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(33, 'Mrs. Darlene Jast MD', 'Nostrum et amet adipisci aut voluptate asperiores. Et explicabo accusamus consectetur quisquam excepturi animi qui. Repellendus non provident sunt explicabo quis placeat veritatis.', 5, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(34, 'Micah Bosco', 'Voluptatum ea repudiandae tempora ullam qui porro aliquam velit. Dignissimos a illo aliquam quia est. Odio et laborum sequi rerum. Et inventore maiores omnis ut.', 1, '2021-02-25 05:23:53', '2021-02-25 05:23:53'),
(35, 'Alayna Reynolds', 'Voluptas quidem in sequi ratione. Magnam sapiente non delectus consequatur nostrum aut. Accusantium rerum quia placeat quo qui fuga quos.', 2, '2021-02-25 05:23:53', '2021-02-25 05:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluarans`
--

CREATE TABLE `pengeluarans` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_kategori` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluarans`
--

INSERT INTO `pengeluarans` (`id`, `nama`, `keterangan`, `id_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Eliezer Greenfelder IV', 'Rerum consequuntur ratione voluptatem animi temporibus accusantium. Odit magni ut accusamus illum illum odit similique. Error voluptas nihil iure ducimus. Quia error omnis illum molestias tot', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(2, 'Terrell Murray Jr.', 'Deserunt vero et inventore. Aut porro qui illo eveniet nam voluptas nostrum. Qui quia aspernatur rerum voluptatum.', 5, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(3, 'Alejandra Quitzon', 'Expedita veniam rerum explicabo necessitatibus omnis corporis dolor. Nam architecto non quia ea excepturi. Ea natus impedit minima tempore voluptas ut et. Omnis officia et quidem aperiam iust', 9, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(4, 'Dr. Sebastian Gorczany DDS', 'Saepe aperiam cupiditate consequuntur voluptate eligendi. Voluptas eligendi rem repudiandae occaecati veritatis non ut. Voluptas aperiam eos voluptates earum.', 7, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(5, 'Floy Gleason', 'Cum ut deserunt repellat labore libero magni atque. Dolorem dolore laborum explicabo cupiditate sit. Quia blanditiis et et molestiae vel rerum et tempore.', 4, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(6, 'Miss Vivianne Wilderman Sr.', 'Magni qui ea hic sit voluptate minima sit et. Dignissimos aspernatur dolorem repellendus perspiciatis modi velit nisi architecto. Est voluptatum nostrum sed et.', 1, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(7, 'Mr. Lemuel Collier I', 'Tenetur repudiandae eos quae et accusantium dolorem animi. Est placeat ut nam porro unde.', 3, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(8, 'Jeff Sporer', 'Dolorem ut ea vero. Adipisci nam neque id sed. Quasi odio atque dolores impedit similique. Voluptatem facere mollitia assumenda aut et.', 4, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(9, 'Dr. Louvenia Auer DDS', 'Voluptatem tempora quia et eum libero est qui. Ut quis eos ipsa soluta iste aliquid. Necessitatibus sequi beatae eius possimus. Dolores rerum illum eius. Sapiente aliquam debitis debitis.', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(10, 'Prof. Peter Crist Jr.', 'Iure ullam ut iusto quas quia explicabo dolorem. Voluptatem consequatur cupiditate aliquam facere et. Ipsa dolorem sapiente suscipit aut.', 2, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(11, 'Ms. Lorine O\'Reilly', 'Aut minus quia nobis aliquam eaque corporis perspiciatis. Consequatur maiores consequatur ullam ratione. At et esse aut quod aut aut consequatur.', 1, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(12, 'Kianna Ratke', 'Quis dicta rerum aut ad sed repellat. Quia fugiat enim dignissimos voluptatem. Voluptas similique et omnis eveniet esse.', 10, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(13, 'Mr. Talon Huel', 'Nemo aut autem quibusdam deleniti enim nihil occaecati. Natus eius omnis et autem excepturi. Omnis autem tempore sequi maxime ipsum.', 10, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(14, 'Bette Breitenberg', 'Sint ipsum occaecati ea sed omnis hic alias. Non molestiae voluptatem quos. Delectus veritatis amet aut qui nihil voluptatem. Delectus labore quod dolor numquam cupiditate earum.', 4, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(15, 'Morton Will', 'Nisi non ratione ea sunt consequuntur soluta aut. Quasi aperiam laudantium excepturi et. Occaecati soluta quia qui qui et eos culpa. Quia dicta qui hic ducimus possimus temporibus et.', 10, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(16, 'Prof. Beau Heidenreich', 'Qui autem nostrum recusandae. Sit natus exercitationem sint adipisci quam odio. Facere asperiores veritatis cumque sed quas quia voluptatem et. Ea et tempore aut consequatur.', 1, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(17, 'Bethany Sawayn', 'Necessitatibus ut nemo blanditiis quas saepe aut iure. Ut repellat quidem non quasi cum sunt.', 3, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(18, 'Lorine Barrows', 'Sint velit architecto expedita. Aut autem consectetur neque et dolor. Repudiandae voluptatem eum et eveniet impedit maxime ut.', 5, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(19, 'Cletus Effertz', 'Incidunt molestias consequatur dolorum provident aperiam voluptatem. Optio aut quo quos. Aut occaecati atque est omnis similique quos id. Ut enim voluptatem tempore animi omnis nemo et.', 1, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(20, 'Prof. Kory Padberg', 'Tempora porro consequatur perspiciatis cum incidunt sapiente ut. Molestiae voluptas sed dolorum quo soluta accusantium. Voluptatem deserunt consequatur quidem debitis ducimus ad.', 10, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(21, 'Prof. Abbie Dicki', 'Non quos quam saepe et ad. Ut et occaecati impedit ipsum est. Ut cumque hic velit. Repudiandae est eaque quasi.', 6, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(22, 'Alexandrine Purdy', 'In aliquid consequuntur nulla. Velit animi nostrum sed voluptas veritatis magni possimus accusantium. Et at voluptatibus et molestiae voluptatem amet magni.', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(23, 'Miss Hilma Johns', 'Recusandae quisquam veritatis officia et laudantium illum. Nulla ullam animi consequuntur distinctio sunt. Molestias vero non optio ratione quo placeat consequatur.', 9, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(24, 'Sigurd Kreiger', 'Cupiditate earum sint labore. Fugit facere et ad quam. Non ea culpa ut. Inventore ut illum esse maiores libero voluptatibus.', 5, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(25, 'Emmett Muller', 'Rerum ratione et quia odit. Quasi rerum debitis explicabo eum voluptatem. Similique dolores nam est omnis aut fuga.', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(26, 'Mrs. Agnes Bogan I', 'Fugit id reprehenderit possimus dolorem quod. Quaerat nesciunt commodi cumque quia aut et. Quibusdam et et minima esse dolorum est dignissimos.', 3, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(27, 'Camille Rodriguez', 'Incidunt dolorem qui quaerat molestiae nulla nesciunt. Dicta sit et est voluptatem. Alias voluptates repudiandae sequi sed omnis. Amet tempora maxime deserunt repellat.', 1, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(28, 'Eda Casper', 'Dolorem iure illo fuga voluptatem eos. Voluptatibus sint aut quam molestiae. Quisquam sapiente non sapiente cumque omnis similique voluptas. Nihil et laborum quaerat nostrum.', 5, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(29, 'Cleora Altenwerth', 'Et non in quo fuga nobis. Hic corporis dolor beatae. Eos debitis optio unde atque repellendus. Labore nam aspernatur ex mollitia.', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(30, 'Vella Hyatt', 'Et sint sequi aut. Placeat eligendi occaecati omnis est mollitia autem. Quas ut excepturi in consequatur. Cum fugit pariatur cum quas qui. Quia excepturi explicabo quis modi dolorum.', 7, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(31, 'Ms. Erica Hill', 'Est quia doloribus harum distinctio ut. Officia architecto quod sint a numquam soluta aut. Minima sit quas atque quaerat.', 6, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(32, 'Kaci Volkman', 'Sint et nesciunt et autem commodi. Modi et ut accusamus eius explicabo inventore soluta. Expedita veritatis incidunt voluptatibus est est.', 4, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(33, 'Prof. Haven Grant', 'In et qui id adipisci provident. Amet mollitia cupiditate quia. Repudiandae necessitatibus et amet eaque. Minima ipsum nihil facere.', 2, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(34, 'Rod Bernier Sr.', 'At magnam iusto voluptatum dolor. Voluptas neque sit eos. Facere nihil dignissimos rerum qui. In facilis quod mollitia quod quam maiores possimus.', 9, '2021-02-25 05:24:43', '2021-02-25 05:24:43'),
(35, 'Allison Cummings', 'Expedita qui delectus in vel quo vero. Dolorem reprehenderit exercitationem illo omnis provident. Qui omnis recusandae voluptatem quia voluptatem sequi.', 2, '2021-02-25 05:24:43', '2021-02-25 05:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `tabungan_berencanas`
--

CREATE TABLE `tabungan_berencanas` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL,
  `waktu` timestamp NOT NULL,
  `id_user` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminder` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabungan_berencanas`
--

INSERT INTO `tabungan_berencanas` (`id`, `nama`, `keterangan`, `harga`, `waktu`, `id_user`, `created_at`, `updated_at`, `foto`, `reminder`) VALUES
(1, 'Lamar Jast', 'Reprehenderit alias ut tempore fuga dolore. Officiis nemo accusamus ut magni aut harum. Maiores sunt error eligendi fugiat.', 15666, '2004-08-05 23:11:35', 1, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'consequatur.jpg', NULL),
(2, 'Dr. Lloyd Langosh', 'Id fugiat velit placeat et. Eius ullam ad perferendis et amet quam et. Recusandae harum in nulla quibusdam. Consequatur esse ut fugiat cupiditate eum. Vitae itaque aliquam exercitationem rati', 13673, '2003-12-30 18:19:27', 1, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'cumque.jpg', NULL),
(3, 'Anais Heller', 'Culpa laborum eum quisquam veritatis quia doloremque quibusdam dolor. Facere possimus et in.', 51969, '2020-05-10 22:26:59', 4, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'quia.jpg', NULL),
(4, 'Mrs. Haven Wiza MD', 'Eaque ex qui quo vel. Ut voluptates debitis est mollitia aperiam autem. Et repellat non autem est non vel est.', 65440, '1993-07-26 14:53:10', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'et.jpg', NULL),
(5, 'Mortimer Toy', 'Et eligendi quis et. Debitis labore ut necessitatibus neque. Architecto dolorem voluptas quia autem quia. Ut aut ex deserunt quia perferendis id.', 81121, '1986-02-01 14:02:59', 5, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'velit.jpg', NULL),
(6, 'Abdul Jacobs V', 'Tenetur velit dolores molestiae repudiandae. Quo ducimus adipisci itaque modi consequatur omnis.', 69057, '1985-01-10 05:54:11', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'vitae.jpg', NULL),
(7, 'Emelie O\'Keefe PhD', 'Et molestias consectetur vero optio nulla libero. Fugiat aspernatur eaque nihil nobis. Dignissimos aperiam in mollitia in sequi et. Blanditiis facere magni quia.', 20623, '1971-04-17 16:36:20', 3, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'et.jpg', NULL),
(8, 'Ms. Petra Wunsch III', 'Nam provident facere molestiae ut eum. Non labore ullam enim assumenda est vitae enim possimus. Est voluptatem officia quisquam aperiam dolor sint. Ea sed quis qui.', 15242, '1975-03-01 00:06:22', 6, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'a.jpg', NULL),
(9, 'Prof. Forest Langosh', 'Eos magni impedit eligendi ducimus repudiandae provident. Occaecati sed nobis aperiam vitae consectetur ut. Sit sed dicta quae a sint laboriosam sunt.', 74357, '2011-09-08 12:22:59', 1, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'deserunt.jpg', NULL),
(10, 'Lucious Considine', 'Sit aut non vel earum. Ex est provident doloremque. Velit perspiciatis ut quo vel id. Ex quod eaque quibusdam vitae. Aut delectus fugit voluptas architecto sit corrupti.', 44904, '1972-05-07 17:10:40', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'et.jpg', NULL),
(11, 'Raven Corwin Sr.', 'Iste corrupti voluptas laudantium sed aperiam consequatur. Asperiores error quo autem maiores unde et tempore. Laboriosam ipsum eveniet doloribus a vel. Vel vero possimus sunt quod maxime.', 79771, '2006-07-07 02:43:56', 1, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'magni.jpg', NULL),
(12, 'Earnestine Schaefer', 'Mollitia magni error eaque modi. Placeat omnis aperiam maiores iure. Blanditiis ab minima iste tempora.', 27829, '1998-08-14 00:14:14', 7, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'ut.jpg', NULL),
(13, 'Bridie Blick', 'A dicta perspiciatis mollitia et tenetur qui ut. Aut voluptatibus assumenda non voluptatem soluta magnam. Aut modi porro minus vitae. Praesentium iusto omnis magni natus nobis deserunt.', 85241, '1989-02-15 12:48:10', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'dolore.jpg', NULL),
(14, 'Dr. Amara Terry', 'Vero dicta quia non distinctio voluptatem beatae aperiam. Dolores maiores dicta hic ullam. Aspernatur eum quisquam architecto quaerat quas pariatur. Officia explicabo illum tempore pariatur e', 50000, '2005-09-10 21:37:46', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'voluptas.jpg', NULL),
(15, 'Colin Mertz Jr.', 'Magnam vel est qui et. Voluptas eveniet facere magni in.', 13891, '2006-04-19 02:16:17', 3, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'et.jpg', NULL),
(16, 'Edwina Tromp', 'Fugit illo perferendis repudiandae qui voluptate voluptatem occaecati. Enim soluta aut omnis eveniet commodi. Consequatur dolorem qui asperiores accusamus.', 77467, '1990-12-27 12:56:19', 9, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'quae.jpg', NULL),
(17, 'Elroy Roob', 'Consequatur eos excepturi dolorem necessitatibus. Rerum quasi voluptas error asperiores et quisquam autem. Quia quo aperiam veniam.', 30860, '1982-05-11 15:23:27', 2, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'et.jpg', NULL),
(18, 'Flo Gaylord', 'Nisi maxime quasi iusto dolorum. Quisquam unde minus dolor nihil aut beatae ea. Eaque aut inventore distinctio commodi aut aspernatur et.', 66920, '1992-04-21 10:39:08', 1, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'facere.jpg', NULL),
(19, 'Elvera Mayert', 'Repellat nisi consequatur facilis ut. Provident quo sit earum consequatur. Ullam fugiat deserunt minus cumque quod est.', 83283, '1977-11-13 22:31:03', 7, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'porro.jpg', NULL),
(20, 'Prof. Ben Roberts', 'Et ad iusto consequatur optio quia quaerat quae. Laboriosam et officia at nihil. Repudiandae occaecati laudantium corrupti minus eum quod laborum. Autem quos sunt quod excepturi iusto facilis', 34049, '2020-07-20 11:43:51', 6, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'velit.jpg', NULL),
(21, 'Augustine King', 'Itaque sit nostrum beatae nihil autem aperiam. Ad est iure fuga nulla. Tempora vel velit qui impedit enim deleniti voluptate. Sunt rem animi non non. Nam qui ea nemo maiores et.', 88478, '2012-02-25 12:19:49', 9, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'mollitia.jpg', NULL),
(22, 'Dana Emard', 'Error totam qui doloremque iusto adipisci blanditiis. Dolorem id vel quia aut. Ex ut quae quidem numquam et. Soluta et aut voluptatum amet necessitatibus asperiores reprehenderit suscipit.', 44165, '1995-09-07 05:22:03', 9, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'perspiciatis.jpg', NULL),
(23, 'Christiana Shanahan III', 'Non inventore quia rerum expedita totam eligendi. Facere sint voluptas consequatur. Dolore eius velit eum quam quasi. Voluptatibus voluptatem reiciendis numquam voluptates fuga nihil sit quae', 77248, '2003-09-09 16:15:23', 4, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'autem.jpg', NULL),
(24, 'Jorge Beier', 'Magni veritatis vel quos est quo est. Est deserunt velit eum omnis.', 69136, '2005-03-06 04:36:11', 9, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'sit.jpg', NULL),
(25, 'Prof. Carmelo Kautzer', 'Et temporibus et libero quo. Quasi blanditiis sit veritatis modi quas. Ullam cumque iste doloremque eveniet fuga corporis.', 59314, '2001-05-17 06:13:43', 9, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'nostrum.jpg', NULL),
(26, 'Mrs. Lilly Effertz', 'Voluptatem consequuntur hic totam et reprehenderit. Nam molestiae doloribus porro delectus. Sint laboriosam nesciunt aut aut id incidunt sed. Similique quasi pariatur aperiam ut atque.', 85772, '2019-12-16 13:41:04', 7, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'sit.jpg', NULL),
(27, 'Dr. Rene Leffler', 'Incidunt sit similique ut autem adipisci et. Rerum omnis eum quo earum exercitationem. Quos natus odio voluptatem eum provident consequatur.', 23108, '2010-04-30 00:59:44', 4, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'odio.jpg', NULL),
(28, 'Reba Mante', 'Laboriosam ut voluptates quidem voluptatibus eos sit. Earum sint quia sint tempore. Iusto est qui in id et laborum eum.', 39134, '2001-03-20 04:11:01', 3, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'nostrum.jpg', NULL),
(29, 'Deon Okuneva', 'Facere illum sint optio voluptas veritatis. Quidem reiciendis repellendus facere optio atque itaque. Amet ad sit officiis quis soluta.', 63867, '1976-07-24 20:01:24', 7, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'et.jpg', NULL),
(30, 'Anika Crooks', 'Exercitationem consequatur tempora quaerat laboriosam. Et atque vitae quam nulla aut fuga. Reiciendis reprehenderit ut esse veritatis delectus.', 45375, '1988-07-22 16:04:44', 3, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'laudantium.jpg', NULL),
(31, 'Terrance Parker', 'Et velit porro illo veritatis sunt. Et quia neque qui doloribus. Exercitationem animi explicabo voluptatem ad ut. Aliquid architecto omnis odit maxime.', 48579, '2016-12-22 08:02:02', 5, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'ipsa.jpg', NULL),
(32, 'Dr. Caden Rowe II', 'Quia nulla ipsa aut ut rerum. Atque et dolorem vero velit voluptate ab. Nesciunt neque voluptatem sunt.', 30927, '2011-10-20 10:56:32', 4, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'et.jpg', NULL),
(33, 'Bethel Goodwin', 'Et ad animi aut et tempore nisi aut. Qui soluta et ipsam quos excepturi quasi libero. Est et autem eum officia blanditiis. Mollitia iure at fugiat autem necessitatibus et aut.', 23862, '2008-07-01 03:21:02', 10, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'et.jpg', NULL),
(34, 'Ms. Hollie Kshlerin Sr.', 'Ut rerum est quis ipsam qui. Ut esse tenetur adipisci quaerat voluptas fugiat nam. Perferendis quia iste nam non dolore totam. Quaerat ex possimus consectetur adipisci rerum tempore.', 54912, '2018-12-25 04:14:59', 8, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'et.jpg', NULL),
(35, 'Rene Maggio', 'Laborum facilis magni qui unde corporis eos in. Commodi qui rerum illo magni et ratione. Saepe necessitatibus voluptatem hic quod velit consequatur. Beatae soluta cumque qui sit.', 37119, '1983-02-01 06:58:22', 10, '2021-02-25 05:24:43', '2021-02-25 05:24:43', 'qui.jpg', NULL),
(36, 'iPhone12', 'iPhone12 terbaru', 17000000, '2021-05-30 17:00:00', 2, '2021-02-25 06:31:05', '2021-02-25 06:31:05', '1614259865.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Eloy Hartmann', 'wwintheiser@example.org', '$2y$10$XY5/fsygJjDFyE9O6Z54PuFwt1YLWpY89FNZofsOwSSClx0fk3QY2', 10000000, '04h0r1jAzn', '2021-02-25 05:23:34', '2021-02-25 05:23:34'),
(2, 'Dr. Jena Green', 'qwolf@example.org', '$2y$10$XY5/fsygJjDFyE9O6Z54PuFwt1YLWpY89FNZofsOwSSClx0fk3QY2', 2500000, 'ydXmXrcgt4Eo9uFP3IGgWJL5LKAzMnbNRADUpUVUr7ZZDlq6mVnZ7QrYgX9J', '2021-02-25 05:23:34', '2021-02-25 05:23:34'),
(3, 'Olen Stokes II', 'cmcclure@example.com', '$2y$10$XY5/fsygJjDFyE9O6Z54PuFwt1YLWpY89FNZofsOwSSClx0fk3QY2', 1125000, 'imiCqGGbfH', '2021-02-25 05:23:34', '2021-02-25 05:23:34'),
(4, 'Alejandrin Predovic DDS', 'shirley60@example.org', '$2y$10$XY5/fsygJjDFyE9O6Z54PuFwt1YLWpY89FNZofsOwSSClx0fk3QY2', 12000000, 'f17vN4aC9r', '2021-02-25 05:23:34', '2021-02-25 05:23:34'),
(5, 'Britney Durgan Jr.', 'nola.rippin@example.com', '$2y$10$XY5/fsygJjDFyE9O6Z54PuFwt1YLWpY89FNZofsOwSSClx0fk3QY2', 5000000, '1vzpIndtxg', '2021-02-25 05:23:34', '2021-02-25 05:23:34'),
(6, 'Harold Botsford', 'yadira13@example.org', '$2y$10$XY5/fsygJjDFyE9O6Z54PuFwt1YLWpY89FNZofsOwSSClx0fk3QY2', 1400000, 'RO6gcEhPEc', '2021-02-25 05:23:34', '2021-02-25 05:23:34'),
(7, 'Mr. Jordon Swift', 'anibal.walker@example.com', '$2y$10$XY5/fsygJjDFyE9O6Z54PuFwt1YLWpY89FNZofsOwSSClx0fk3QY2', 23000000, 'Xb8VZAuPBF', '2021-02-25 05:23:34', '2021-02-25 05:23:34'),
(8, 'Theodore Kautzer', 'pearlie.marvin@example.net', '$2y$10$XY5/fsygJjDFyE9O6Z54PuFwt1YLWpY89FNZofsOwSSClx0fk3QY2', 250000, 'rSHKh18dYh', '2021-02-25 05:23:34', '2021-02-25 05:23:34'),
(9, 'Dr. Lillie Gleichner', 'icrist@example.org', '$2y$10$XY5/fsygJjDFyE9O6Z54PuFwt1YLWpY89FNZofsOwSSClx0fk3QY2', 1000000, 'gtHzvGCvcs', '2021-02-25 05:23:34', '2021-02-25 05:23:34'),
(10, 'Mrs. Oma Dooley PhD', 'rollin.veum@example.org', '$2y$10$XY5/fsygJjDFyE9O6Z54PuFwt1YLWpY89FNZofsOwSSClx0fk3QY2', 1100000, 'DM8hPob5BU', '2021-02-25 05:23:34', '2021-02-25 05:23:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pemasukans`
--
ALTER TABLE `detail_pemasukans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pemasukans_id_user_foreign` (`id_user`),
  ADD KEY `detail_pemasukans_id_pemasukan_foreign` (`id_pemasukan`);

--
-- Indexes for table `detail_pengeluarans`
--
ALTER TABLE `detail_pengeluarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pengeluarans_id_user_foreign` (`id_user`),
  ADD KEY `detail_pengeluarans_id_pengeluaran_foreign` (`id_pengeluaran`);

--
-- Indexes for table `detail_penyisihan_incomes`
--
ALTER TABLE `detail_penyisihan_incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_penyisihan_incomes_id_tabungan_berencana_foreign` (`id_tabungan_berencana`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemasukans`
--
ALTER TABLE `pemasukans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemasukans_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengeluarans_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `tabungan_berencanas`
--
ALTER TABLE `tabungan_berencanas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tabungan_berencanas_id_user_foreign` (`id_user`);

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
-- AUTO_INCREMENT for table `detail_pemasukans`
--
ALTER TABLE `detail_pemasukans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `detail_pengeluarans`
--
ALTER TABLE `detail_pengeluarans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `detail_penyisihan_incomes`
--
ALTER TABLE `detail_penyisihan_incomes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pemasukans`
--
ALTER TABLE `pemasukans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tabungan_berencanas`
--
ALTER TABLE `tabungan_berencanas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pemasukans`
--
ALTER TABLE `detail_pemasukans`
  ADD CONSTRAINT `detail_pemasukans_id_pemasukan_foreign` FOREIGN KEY (`id_pemasukan`) REFERENCES `pemasukans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pemasukans_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_pengeluarans`
--
ALTER TABLE `detail_pengeluarans`
  ADD CONSTRAINT `detail_pengeluarans_id_pengeluaran_foreign` FOREIGN KEY (`id_pengeluaran`) REFERENCES `pengeluarans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pengeluarans_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_penyisihan_incomes`
--
ALTER TABLE `detail_penyisihan_incomes`
  ADD CONSTRAINT `detail_penyisihan_incomes_id_tabungan_berencana_foreign` FOREIGN KEY (`id_tabungan_berencana`) REFERENCES `tabungan_berencanas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemasukans`
--
ALTER TABLE `pemasukans`
  ADD CONSTRAINT `pemasukans_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  ADD CONSTRAINT `pengeluarans_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tabungan_berencanas`
--
ALTER TABLE `tabungan_berencanas`
  ADD CONSTRAINT `tabungan_berencanas_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
