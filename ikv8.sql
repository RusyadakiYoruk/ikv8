-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 28 Şub 2025, 18:02:32
-- Sunucu sürümü: 8.3.0
-- PHP Sürümü: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ikv8`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `activity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `activity_type`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(40, 1, 'logs_clear', 'Tüm log kayıtları temizlendi. Toplam 39 kayıt silindi.', '::1', NULL, '2025-02-27 10:40:10'),
(41, 1, 'employee_add', 'Yeni çalışan eklendi: Test Test (ID: 4)', '::1', NULL, '2025-02-27 11:11:22'),
(42, 1, 'employee_update', 'Çalışan güncellendi: Test Test (ID: 4)', '::1', NULL, '2025-02-27 12:53:44'),
(43, 1, 'employee_update', 'Çalışan güncellendi: Test Test (ID: 3)', '::1', NULL, '2025-02-27 12:56:08'),
(44, 1, 'employee_update', 'Çalışan güncellendi: Test Test (ID: 3)', '::1', NULL, '2025-02-27 12:56:35'),
(45, 1, 'department_add', 'Yeni departman eklendi: Yönetim (ID: 6)', '::1', NULL, '2025-02-27 13:27:37'),
(46, 1, 'employee_update', 'Çalışan güncellendi: Test Test (ID: 2)', '::1', NULL, '2025-02-27 13:28:22'),
(47, 1, 'department_add', 'Yeni departman eklendi: a (ID: 7)', '::1', NULL, '2025-02-27 13:29:09'),
(48, 1, 'department_edit', 'Departman güncellendi: Lojistik (ID: 7)', '::1', NULL, '2025-02-27 13:29:29'),
(49, 1, 'job_title_delete', 'Unvan silindi: Elektrik Mühendisi (ID: 6)', '::1', NULL, '2025-02-27 15:40:01'),
(50, 1, 'job_title_delete', 'Unvan silindi: Finans Müdürü (ID: 13)', '::1', NULL, '2025-02-27 15:40:03'),
(51, 1, 'job_title_delete', 'Unvan silindi: İnşaat Mühendisi (ID: 1)', '::1', NULL, '2025-02-27 15:40:06'),
(52, 1, 'job_title_delete', 'Unvan silindi: İnsan Kaynakları Uzmanı (ID: 9)', '::1', NULL, '2025-02-27 15:40:08'),
(53, 1, 'job_title_delete', 'Unvan silindi: Mimar (ID: 2)', '::1', NULL, '2025-02-27 15:40:10'),
(54, 1, 'job_title_delete', 'Unvan silindi: Muhasebeci (ID: 8)', '::1', NULL, '2025-02-27 15:40:12'),
(55, 1, 'job_title_delete', 'Unvan silindi: Operasyon Müdürü (ID: 15)', '::1', NULL, '2025-02-27 15:40:14'),
(56, 1, 'job_title_delete', 'Unvan silindi: Pazarlama Uzmanı (ID: 11)', '::1', NULL, '2025-02-27 15:40:16'),
(57, 1, 'job_title_delete', 'Unvan silindi: Proje Müdürü (ID: 3)', '::1', NULL, '2025-02-27 15:40:17'),
(58, 1, 'job_title_delete', 'Unvan silindi: Şantiye Şefi (ID: 4)', '::1', NULL, '2025-02-27 15:40:20'),
(59, 1, 'job_title_delete', 'Unvan silindi: Satın Alma Uzmanı (ID: 10)', '::1', NULL, '2025-02-27 15:40:22'),
(60, 1, 'job_title_add', 'Yeni unvan eklendi: İşçi (ID: 16)', '::1', NULL, '2025-02-27 15:40:48'),
(61, 1, 'job_title_add', 'Yeni unvan eklendi: Usta (ID: 17)', '::1', NULL, '2025-02-27 15:41:08'),
(62, 1, 'job_title_edit', 'Unvan güncellendi: İşçi (ID: 16)', '::1', NULL, '2025-02-27 15:41:23'),
(63, 1, 'job_title_edit', 'Unvan güncellendi: İşçi (ID: 16)', '::1', NULL, '2025-02-27 15:41:30'),
(64, 1, 'job_title_edit', 'Unvan güncellendi: Usta (ID: 17)', '::1', NULL, '2025-02-27 15:41:36'),
(65, 1, 'job_title_add', 'Yeni unvan eklendi: Ekipbaşı (ID: 18)', '::1', NULL, '2025-02-27 15:41:44'),
(66, 1, 'job_title_add', 'Yeni unvan eklendi: Kaynakçı (ID: 19)', '::1', NULL, '2025-02-27 15:41:57'),
(67, 1, 'job_title_add', 'Yeni unvan eklendi: Formen (ID: 20)', '::1', NULL, '2025-02-27 15:42:12'),
(68, 1, 'employee_update', 'Çalışan güncellendi: Test Test (ID: 4)', '::1', NULL, '2025-02-27 15:43:00'),
(69, 1, 'employee_update', 'Çalışan güncellendi: Test Test (ID: 3)', '::1', NULL, '2025-02-27 15:43:39'),
(70, 1, 'employee_update', 'Çalışan güncellendi: Test Test (ID: 2)', '::1', NULL, '2025-02-27 15:44:07'),
(71, 1, 'employee_update', 'Çalışan güncellendi: Test Formen Test (ID: 1)', '::1', NULL, '2025-02-27 15:44:35'),
(72, 1, 'job_title_delete', 'Unvan silindi: Makine Mühendisi (ID: 7)', '::1', NULL, '2025-02-27 15:46:32'),
(73, 1, 'job_title_delete', 'Unvan silindi: İK Müdürü (ID: 14)', '::1', NULL, '2025-02-27 15:46:38'),
(74, 1, 'job_title_delete', 'Unvan silindi: Genel Müdür (ID: 12)', '::1', NULL, '2025-02-27 15:46:43'),
(75, 1, 'job_title_delete', 'Unvan silindi: İş Güvenliği Uzmanı (ID: 5)', '::1', NULL, '2025-02-27 15:46:52'),
(76, 1, 'job_title_add', 'Yeni unvan eklendi: Operatör (ID: 21)', '::1', NULL, '2025-02-27 15:46:59'),
(77, 1, 'job_title_add', 'Yeni unvan eklendi: Topoğraf (ID: 22)', '::1', NULL, '2025-02-27 15:47:06'),
(78, 1, 'job_title_add', 'Yeni unvan eklendi: Danışman (ID: 23)', '::1', NULL, '2025-02-27 15:47:12'),
(79, 1, 'job_title_add', 'Yeni unvan eklendi: Rapor (ID: 24)', '::1', NULL, '2025-02-27 15:47:19'),
(80, 1, 'job_title_add', 'Yeni unvan eklendi: Avukat (ID: 25)', '::1', NULL, '2025-02-27 15:47:26'),
(81, 1, 'job_title_edit', 'Unvan güncellendi: Ekipbaşı (ID: 18)', '::1', NULL, '2025-02-27 15:47:31'),
(82, 1, 'job_title_edit', 'Unvan güncellendi: Formen (ID: 20)', '::1', NULL, '2025-02-27 15:47:34'),
(83, 1, 'job_title_edit', 'Unvan güncellendi: İşçi (ID: 16)', '::1', NULL, '2025-02-27 15:47:38'),
(84, 1, 'job_title_edit', 'Unvan güncellendi: Kaynakçı (ID: 19)', '::1', NULL, '2025-02-27 15:47:41'),
(85, 1, 'job_title_edit', 'Unvan güncellendi: Usta (ID: 17)', '::1', NULL, '2025-02-27 15:47:43'),
(86, 1, 'job_title_add', 'Yeni unvan eklendi: Güvenlik (ID: 26)', '::1', NULL, '2025-02-27 15:47:53'),
(87, 1, 'job_title_add', 'Yeni unvan eklendi: Sağlık (ID: 27)', '::1', NULL, '2025-02-27 15:47:58'),
(88, 1, 'job_title_add', 'Yeni unvan eklendi: Şoför (ID: 28)', '::1', NULL, '2025-02-27 15:48:03'),
(89, 1, 'job_title_add', 'Yeni unvan eklendi: Memur (ID: 29)', '::1', NULL, '2025-02-27 15:48:09'),
(90, 1, 'job_title_add', 'Yeni unvan eklendi: Tercüman (ID: 30)', '::1', NULL, '2025-02-27 15:48:15'),
(91, 1, 'job_title_add', 'Yeni unvan eklendi: Tekniker (ID: 31)', '::1', NULL, '2025-02-27 15:48:20'),
(92, 1, 'job_title_add', 'Yeni unvan eklendi: Mühendis (ID: 32)', '::1', NULL, '2025-02-27 15:48:25'),
(93, 1, 'job_title_add', 'Yeni unvan eklendi: Şef (ID: 33)', '::1', NULL, '2025-02-27 15:48:31'),
(94, 1, 'job_title_add', 'Yeni unvan eklendi: Müdür (ID: 34)', '::1', NULL, '2025-02-27 15:48:36'),
(95, 1, 'employee_update', 'Çalışan güncellendi: Test Test (ID: 4)', '::1', NULL, '2025-02-27 16:07:12'),
(96, 1, 'leave_request', 'İzin talebi oluşturuldu (ID: 1, Çalışan ID: 5)', '::1', NULL, '2025-02-28 02:15:47'),
(97, 1, 'leave_request', 'İzin talebi oluşturuldu (ID: 2, Çalışan ID: 5)', '::1', NULL, '2025-02-28 02:18:40'),
(98, 1, 'leave_request', 'İzin talebi oluşturuldu (ID: 3, Çalışan ID: 4)', '::1', NULL, '2025-02-28 02:19:15'),
(99, 1, 'leave_request', 'İzin talebi oluşturuldu (ID: 1, Çalışan ID: 1)', '::1', NULL, '2025-02-28 02:26:01'),
(100, 1, 'leave_approved', 'İzin talebi onaylandı (ID: 1)', '::1', NULL, '2025-02-28 06:11:28'),
(101, 1, 'leave_type_added', 'Yeni izin türü eklendi: test', '::1', NULL, '2025-02-28 06:14:58'),
(102, 1, 'leave_type_added', 'Yeni izin türü eklendi: test', '::1', NULL, '2025-02-28 06:15:51'),
(103, 1, 'department_add', 'Yeni departman eklendi: İdari - Mali işler (ID: 2)', '::1', NULL, '2025-02-28 06:32:36'),
(104, 1, 'department_add', 'Yeni departman eklendi: Kamp (ID: 3)', '::1', NULL, '2025-02-28 06:32:46'),
(105, 1, 'department_add', 'Yeni departman eklendi: Lojistik (ID: 4)', '::1', NULL, '2025-02-28 06:32:54'),
(106, 1, 'department_add', 'Yeni departman eklendi: Teknik Ofis (ID: 5)', '::1', NULL, '2025-02-28 06:33:03'),
(107, 1, 'department_add', 'Yeni departman eklendi: Teslimat (ID: 6)', '::1', NULL, '2025-02-28 06:33:14'),
(108, 1, 'department_add', 'Yeni departman eklendi: Bakım (ID: 7)', '::1', NULL, '2025-02-28 06:33:24'),
(109, 1, 'department_add', 'Yeni departman eklendi: İsg (ID: 8)', '::1', NULL, '2025-02-28 06:33:33'),
(110, 1, 'department_add', 'Yeni departman eklendi: Kalite (ID: 9)', '::1', NULL, '2025-02-28 06:33:42'),
(111, 1, 'department_add', 'Yeni departman eklendi: Ölçüm (ID: 10)', '::1', NULL, '2025-02-28 06:33:52'),
(112, 1, 'department_add', 'Yeni departman eklendi: DCC (ID: 11)', '::1', NULL, '2025-02-28 06:34:00'),
(113, 1, 'department_add', 'Yeni departman eklendi: Mobilizasyon (ID: 12)', '::1', NULL, '2025-02-28 06:34:10'),
(114, 1, 'department_add', 'Yeni departman eklendi: İskele (ID: 13)', '::1', NULL, '2025-02-28 06:34:18'),
(115, 1, 'department_add', 'Yeni departman eklendi: İnşaat (ID: 14)', '::1', NULL, '2025-02-28 06:34:27'),
(116, 1, 'department_add', 'Yeni departman eklendi: Altyapı Borusu (ID: 15)', '::1', NULL, '2025-02-28 06:34:39'),
(117, 1, 'department_add', 'Yeni departman eklendi: Bina (ID: 16)', '::1', NULL, '2025-02-28 06:34:45'),
(118, 1, 'department_add', 'Yeni departman eklendi: HVAC (ID: 17)', '::1', NULL, '2025-02-28 06:34:51'),
(119, 1, 'department_add', 'Yeni departman eklendi: Çelik (ID: 18)', '::1', NULL, '2025-02-28 06:34:56'),
(120, 1, 'department_add', 'Yeni departman eklendi: Ekipman Montaj (ID: 19)', '::1', NULL, '2025-02-28 06:35:09'),
(121, 1, 'department_add', 'Yeni departman eklendi: Tank (ID: 20)', '::1', NULL, '2025-02-28 06:35:18'),
(122, 1, 'department_add', 'Yeni departman eklendi: Boru İmalat (ID: 21)', '::1', NULL, '2025-02-28 06:36:04'),
(123, 1, 'department_add', 'Yeni departman eklendi: Boru Montaj (ID: 22)', '::1', NULL, '2025-02-28 06:36:14'),
(124, 1, 'department_add', 'Yeni departman eklendi: Elektrik (ID: 23)', '::1', NULL, '2025-02-28 06:36:19'),
(125, 1, 'department_add', 'Yeni departman eklendi: Enstrüman (ID: 24)', '::1', NULL, '2025-02-28 06:36:25'),
(126, 1, 'department_add', 'Yeni departman eklendi: Boya (ID: 25)', '::1', NULL, '2025-02-28 06:36:31'),
(127, 1, 'department_add', 'Yeni departman eklendi: Refrakter (ID: 26)', '::1', NULL, '2025-02-28 06:36:37'),
(128, 1, 'department_add', 'Yeni departman eklendi: İzolasyon (ID: 27)', '::1', NULL, '2025-02-28 06:36:43'),
(129, 1, 'department_add', 'Yeni departman eklendi: Test Devreyealma (ID: 28)', '::1', NULL, '2025-02-28 06:36:52'),
(130, 1, 'job_title_add', 'Yeni unvan eklendi: Şef (ID: 2)', '::1', NULL, '2025-02-28 06:37:13'),
(131, 1, 'job_title_edit', 'Unvan güncellendi: Genel Müdür (ID: 1)', '::1', NULL, '2025-02-28 06:37:19'),
(132, 1, 'job_title_edit', 'Unvan güncellendi: Genel Müdür (ID: 1)', '::1', NULL, '2025-02-28 06:37:27'),
(133, 1, 'job_title_add', 'Yeni unvan eklendi: Mühendis (ID: 3)', '::1', NULL, '2025-02-28 06:37:44'),
(134, 1, 'job_title_add', 'Yeni unvan eklendi: Tekniker (ID: 4)', '::1', NULL, '2025-02-28 06:37:51'),
(135, 1, 'job_title_add', 'Yeni unvan eklendi: Tercüman (ID: 5)', '::1', NULL, '2025-02-28 06:37:58'),
(136, 1, 'job_title_add', 'Yeni unvan eklendi: Memur (ID: 6)', '::1', NULL, '2025-02-28 06:38:03'),
(137, 1, 'job_title_add', 'Yeni unvan eklendi: Şoför (ID: 7)', '::1', NULL, '2025-02-28 06:38:10'),
(138, 1, 'job_title_add', 'Yeni unvan eklendi: Sağlık (ID: 8)', '::1', NULL, '2025-02-28 06:38:16'),
(139, 1, 'job_title_add', 'Yeni unvan eklendi: Güvenlik (ID: 9)', '::1', NULL, '2025-02-28 06:38:25'),
(140, 1, 'job_title_add', 'Yeni unvan eklendi: Avukat (ID: 10)', '::1', NULL, '2025-02-28 06:38:31'),
(141, 1, 'job_title_add', 'Yeni unvan eklendi: Raporter (ID: 11)', '::1', NULL, '2025-02-28 06:38:39'),
(142, 1, 'job_title_add', 'Yeni unvan eklendi: Danışman (ID: 12)', '::1', NULL, '2025-02-28 06:38:46'),
(143, 1, 'job_title_add', 'Yeni unvan eklendi: Topoğraf (ID: 13)', '::1', NULL, '2025-02-28 06:38:52'),
(144, 1, 'job_title_add', 'Yeni unvan eklendi: Operatör (ID: 14)', '::1', NULL, '2025-02-28 06:38:58'),
(145, 1, 'job_title_add', 'Yeni unvan eklendi: İskeleci (ID: 15)', '::1', NULL, '2025-02-28 06:39:05'),
(146, 1, 'job_title_add', 'Yeni unvan eklendi: Formen (ID: 16)', '::1', NULL, '2025-02-28 06:39:11'),
(147, 1, 'job_title_add', 'Yeni unvan eklendi: Kaynakçı (ID: 17)', '::1', NULL, '2025-02-28 06:39:18'),
(148, 1, 'job_title_add', 'Yeni unvan eklendi: Ekipbaşı (ID: 18)', '::1', NULL, '2025-02-28 06:39:25'),
(149, 1, 'job_title_add', 'Yeni unvan eklendi: Usta (ID: 19)', '::1', NULL, '2025-02-28 06:39:34'),
(150, 1, 'job_title_add', 'Yeni unvan eklendi: İşçi (ID: 20)', '::1', NULL, '2025-02-28 06:39:43'),
(151, 1, 'job_title_add', 'Yeni unvan eklendi: 123 (ID: 2)', '::1', NULL, '2025-02-28 10:26:29'),
(152, 1, 'job_title_delete', 'Unvan silindi: 123 (ID: 2)', '::1', NULL, '2025-02-28 14:18:24'),
(153, 1, 'job_title_add', 'Yeni unvan eklendi: Müdür (ID: 3)', '::1', NULL, '2025-02-28 14:19:17'),
(154, 1, 'job_title_add', 'Yeni unvan eklendi: Şef (ID: 4)', '::1', NULL, '2025-02-28 14:19:23'),
(155, 1, 'job_title_add', 'Yeni unvan eklendi: Mühendis (ID: 5)', '::1', NULL, '2025-02-28 14:19:37'),
(156, 1, 'job_title_add', 'Yeni unvan eklendi: Tekniker (ID: 6)', '::1', NULL, '2025-02-28 14:19:47'),
(157, 1, 'job_title_add', 'Yeni unvan eklendi: Tercüman (ID: 7)', '::1', NULL, '2025-02-28 14:19:56'),
(158, 1, 'job_title_add', 'Yeni unvan eklendi: Memur (ID: 8)', '::1', NULL, '2025-02-28 14:20:04'),
(159, 1, 'job_title_add', 'Yeni unvan eklendi: Şoför (ID: 9)', '::1', NULL, '2025-02-28 14:21:21'),
(160, 1, 'job_title_add', 'Yeni unvan eklendi: Sağlık (ID: 10)', '::1', NULL, '2025-02-28 14:21:35'),
(161, 1, 'job_title_add', 'Yeni unvan eklendi: Güvenlik (ID: 11)', '::1', NULL, '2025-02-28 14:21:43'),
(162, 1, 'job_title_add', 'Yeni unvan eklendi: Avukat (ID: 12)', '::1', NULL, '2025-02-28 14:21:49'),
(163, 1, 'job_title_add', 'Yeni unvan eklendi: Rapor (ID: 13)', '::1', NULL, '2025-02-28 14:21:56'),
(164, 1, 'job_title_add', 'Yeni unvan eklendi: Danışman (ID: 14)', '::1', NULL, '2025-02-28 14:22:01'),
(165, 1, 'job_title_add', 'Yeni unvan eklendi: Topoğraf (ID: 15)', '::1', NULL, '2025-02-28 14:22:07'),
(166, 1, 'job_title_add', 'Yeni unvan eklendi: Operatör (ID: 16)', '::1', NULL, '2025-02-28 14:22:12'),
(167, 1, 'job_title_add', 'Yeni unvan eklendi: İskeleci (ID: 17)', '::1', NULL, '2025-02-28 14:22:17'),
(168, 1, 'job_title_add', 'Yeni unvan eklendi: Formen (ID: 18)', '::1', NULL, '2025-02-28 14:22:23'),
(169, 1, 'job_title_add', 'Yeni unvan eklendi: Kaynakçı (ID: 19)', '::1', NULL, '2025-02-28 14:22:29'),
(170, 1, 'job_title_add', 'Yeni unvan eklendi: Ekipbaşı (ID: 20)', '::1', NULL, '2025-02-28 14:22:34'),
(171, 1, 'job_title_add', 'Yeni unvan eklendi: Usta (ID: 21)', '::1', NULL, '2025-02-28 14:22:40'),
(172, 1, 'job_title_add', 'Yeni unvan eklendi: İşçi (ID: 22)', '::1', NULL, '2025-02-28 14:22:46'),
(173, 1, 'department_add', 'Yeni departman eklendi: İdari - Mali işler (ID: 2)', '::1', NULL, '2025-02-28 14:23:03'),
(174, 1, 'department_add', 'Yeni departman eklendi: Kamp (ID: 3)', '::1', NULL, '2025-02-28 14:23:12'),
(175, 1, 'department_add', 'Yeni departman eklendi: Lojistik (ID: 4)', '::1', NULL, '2025-02-28 14:23:17'),
(176, 1, 'department_add', 'Yeni departman eklendi: Teknik Ofis (ID: 5)', '::1', NULL, '2025-02-28 14:23:24'),
(177, 1, 'department_add', 'Yeni departman eklendi: Teslimat (ID: 6)', '::1', NULL, '2025-02-28 14:23:30'),
(178, 1, 'department_add', 'Yeni departman eklendi: Bakım (ID: 7)', '::1', NULL, '2025-02-28 14:23:36'),
(179, 1, 'department_add', 'Yeni departman eklendi: İsg (ID: 8)', '::1', NULL, '2025-02-28 14:23:41'),
(180, 1, 'department_add', 'Yeni departman eklendi: Kalite (ID: 9)', '::1', NULL, '2025-02-28 14:23:47'),
(181, 1, 'department_add', 'Yeni departman eklendi: Ölçüm (ID: 10)', '::1', NULL, '2025-02-28 14:23:53'),
(182, 1, 'department_add', 'Yeni departman eklendi: DCC (ID: 11)', '::1', NULL, '2025-02-28 14:23:59'),
(183, 1, 'department_add', 'Yeni departman eklendi: Mobilizasyon (ID: 12)', '::1', NULL, '2025-02-28 14:24:05'),
(184, 1, 'department_add', 'Yeni departman eklendi: İskele (ID: 13)', '::1', NULL, '2025-02-28 14:24:11'),
(185, 1, 'department_add', 'Yeni departman eklendi: İnşaat (ID: 14)', '::1', NULL, '2025-02-28 14:24:17'),
(186, 1, 'department_add', 'Yeni departman eklendi: Altyapı Borusu (ID: 15)', '::1', NULL, '2025-02-28 14:24:25'),
(187, 1, 'department_add', 'Yeni departman eklendi: Bina (ID: 16)', '::1', NULL, '2025-02-28 14:24:30'),
(188, 1, 'department_add', 'Yeni departman eklendi: HVAC (ID: 17)', '::1', NULL, '2025-02-28 14:24:36'),
(189, 1, 'department_add', 'Yeni departman eklendi: Çelik (ID: 18)', '::1', NULL, '2025-02-28 14:24:41'),
(190, 1, 'department_add', 'Yeni departman eklendi: Ekipman Montaj (ID: 19)', '::1', NULL, '2025-02-28 14:24:53'),
(191, 1, 'department_add', 'Yeni departman eklendi: Tank (ID: 20)', '::1', NULL, '2025-02-28 14:24:59'),
(192, 1, 'department_add', 'Yeni departman eklendi: Boru İmalat (ID: 21)', '::1', NULL, '2025-02-28 14:25:07'),
(193, 1, 'department_add', 'Yeni departman eklendi: Boru Montaj (ID: 22)', '::1', NULL, '2025-02-28 14:25:14'),
(194, 1, 'department_add', 'Yeni departman eklendi: Elektrik (ID: 23)', '::1', NULL, '2025-02-28 14:25:20'),
(195, 1, 'department_add', 'Yeni departman eklendi: Enstrüman (ID: 24)', '::1', NULL, '2025-02-28 14:25:25'),
(196, 1, 'department_add', 'Yeni departman eklendi: Boya (ID: 25)', '::1', NULL, '2025-02-28 14:25:32'),
(197, 1, 'department_add', 'Yeni departman eklendi: Refrakter (ID: 26)', '::1', NULL, '2025-02-28 14:25:38'),
(198, 1, 'department_add', 'Yeni departman eklendi: İzolasyon (ID: 27)', '::1', NULL, '2025-02-28 14:25:44'),
(199, 1, 'department_add', 'Yeni departman eklendi: Test Devreyealma (ID: 28)', '::1', NULL, '2025-02-28 14:25:53'),
(200, 1, 'payroll_period_add', 'Yeni bordro dönemi eklendi: Şubat 2025 (ID: 1)', '::1', NULL, '2025-02-28 14:42:25'),
(201, 1, 'payroll_generate', 'Bordro oluşturuldu: Şubat 2025 - 1 yeni, 0 güncellendi', '::1', NULL, '2025-02-28 14:55:27'),
(202, 1, 'payroll_generate', 'Bordro oluşturuldu: Şubat 2025 - 0 yeni, 1 güncellendi', '::1', NULL, '2025-02-28 14:55:36'),
(203, 1, 'payroll_finalize', 'Bordro dönemi tamamlandı: Şubat 2025', '::1', NULL, '2025-02-28 14:55:43'),
(204, 1, 'payroll_item_add', 'Yeni maaş kalemi eklendi: test (Kod: TEST)', '::1', NULL, '2025-02-28 15:09:48'),
(205, 1, 'payroll_period_edit', 'Bordro dönemi güncellendi: Şubat 2025 (ID: 1)', '::1', NULL, '2025-02-28 15:25:09'),
(206, 1, 'payroll_generate', 'Bordro oluşturuldu: Şubat 2025 - 0 yeni, 1 güncellendi', '::1', NULL, '2025-02-28 15:48:06'),
(207, 1, 'settings_update', 'Genel ayarlar güncellendi: Genel Ayarlar', '::1', NULL, '2025-02-28 17:05:37');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE IF NOT EXISTS `assets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_category_id` int NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(15,2) DEFAULT NULL,
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty_expiry` date DEFAULT NULL,
  `status` enum('available','assigned','maintenance','retired') COLLATE utf8mb4_unicode_ci DEFAULT 'available',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_code` (`asset_code`),
  KEY `asset_category_id` (`asset_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `asset_assignments`
--

DROP TABLE IF EXISTS `asset_assignments`;
CREATE TABLE IF NOT EXISTS `asset_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `assigned_date` date NOT NULL,
  `expected_return_date` date DEFAULT NULL,
  `actual_return_date` date DEFAULT NULL,
  `assigned_by` int NOT NULL,
  `return_condition` text COLLATE utf8mb4_unicode_ci,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `asset_id` (`asset_id`),
  KEY `employee_id` (`employee_id`),
  KEY `assigned_by` (`assigned_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `asset_categories`
--

DROP TABLE IF EXISTS `asset_categories`;
CREATE TABLE IF NOT EXISTS `asset_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `assignments`
--

DROP TABLE IF EXISTS `assignments`;
CREATE TABLE IF NOT EXISTS `assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `item_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `assignment_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `status` enum('active','returned','lost','damaged') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `assigned_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `item_id` (`item_id`),
  KEY `assigned_by` (`assigned_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `assignment_history`
--

DROP TABLE IF EXISTS `assignment_history`;
CREATE TABLE IF NOT EXISTS `assignment_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `assignment_id` int NOT NULL,
  `action_type` enum('assigned','returned','lost','damaged') COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action_by` int NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `assignment_id` (`assignment_id`),
  KEY `action_by` (`action_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  `status` enum('present','absent','late','half_day') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'present',
  `is_authorized` tinyint(1) NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) NOT NULL DEFAULT '1',
  `hours_worked` decimal(5,2) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `attendance_records`
--

DROP TABLE IF EXISTS `attendance_records`;
CREATE TABLE IF NOT EXISTS `attendance_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `status` enum('present','absent','late','half-day','leave') COLLATE utf8mb4_unicode_ci DEFAULT 'present',
  `working_hours` decimal(5,2) DEFAULT NULL,
  `overtime_hours` decimal(5,2) DEFAULT '0.00',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `branches`
--

DROP TABLE IF EXISTS `branches`;
CREATE TABLE IF NOT EXISTS `branches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Russia',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calendar_events`
--

DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type` enum('meeting','holiday','event','reminder','leave') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_all_day` tinyint(1) DEFAULT '0',
  `is_recurring` tinyint(1) DEFAULT '0',
  `recurrence_pattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `visibility` enum('public','private','department') COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `department_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `department_id` (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `calendar_events`
--

INSERT INTO `calendar_events` (`id`, `title`, `description`, `start_datetime`, `end_datetime`, `location`, `event_type`, `is_all_day`, `is_recurring`, `recurrence_pattern`, `created_by`, `visibility`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'Toplantı', 'Toplantı', '2025-02-27 18:40:00', '2025-02-27 19:20:00', '', 'meeting', 0, 0, NULL, 1, 'private', 0, '2025-02-27 15:39:38', '2025-02-27 15:39:38');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calendar_event_attendees`
--

DROP TABLE IF EXISTS `calendar_event_attendees`;
CREATE TABLE IF NOT EXISTS `calendar_event_attendees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `status` enum('invited','accepted','declined','tentative') COLLATE utf8mb4_unicode_ci DEFAULT 'invited',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_id` (`event_id`,`employee_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `calendar_event_attendees`
--

INSERT INTO `calendar_event_attendees` (`id`, `event_id`, `employee_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'invited', '2025-02-27 15:39:38', '2025-02-27 15:39:38');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `manager_id` int DEFAULT NULL,
  `parent_department_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `parent_department_id` (`parent_department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `manager_id`, `parent_department_id`, `created_at`, `updated_at`) VALUES
(1, 'Yönetim', 'Yönetim Departmanı', NULL, NULL, '2025-02-28 09:43:35', '2025-02-28 09:43:35'),
(2, 'İdari - Mali işler', NULL, NULL, NULL, '2025-02-28 14:23:03', '2025-02-28 14:23:03'),
(3, 'Kamp', NULL, NULL, NULL, '2025-02-28 14:23:12', '2025-02-28 14:23:12'),
(4, 'Lojistik', NULL, NULL, NULL, '2025-02-28 14:23:17', '2025-02-28 14:23:17'),
(5, 'Teknik Ofis', NULL, NULL, NULL, '2025-02-28 14:23:24', '2025-02-28 14:23:24'),
(6, 'Teslimat', NULL, NULL, NULL, '2025-02-28 14:23:30', '2025-02-28 14:23:30'),
(7, 'Bakım', NULL, NULL, NULL, '2025-02-28 14:23:36', '2025-02-28 14:23:36'),
(8, 'İsg', NULL, NULL, NULL, '2025-02-28 14:23:41', '2025-02-28 14:23:41'),
(9, 'Kalite', NULL, NULL, NULL, '2025-02-28 14:23:47', '2025-02-28 14:23:47'),
(10, 'Ölçüm', NULL, NULL, NULL, '2025-02-28 14:23:53', '2025-02-28 14:23:53'),
(11, 'DCC', NULL, NULL, NULL, '2025-02-28 14:23:59', '2025-02-28 14:23:59'),
(12, 'Mobilizasyon', NULL, NULL, NULL, '2025-02-28 14:24:05', '2025-02-28 14:24:05'),
(13, 'İskele', NULL, NULL, NULL, '2025-02-28 14:24:11', '2025-02-28 14:24:11'),
(14, 'İnşaat', NULL, NULL, NULL, '2025-02-28 14:24:17', '2025-02-28 14:24:17'),
(15, 'Altyapı Borusu', NULL, NULL, NULL, '2025-02-28 14:24:25', '2025-02-28 14:24:25'),
(16, 'Bina', NULL, NULL, NULL, '2025-02-28 14:24:30', '2025-02-28 14:24:30'),
(17, 'HVAC', NULL, NULL, NULL, '2025-02-28 14:24:36', '2025-02-28 14:24:36'),
(18, 'Çelik', NULL, NULL, NULL, '2025-02-28 14:24:41', '2025-02-28 14:24:41'),
(19, 'Ekipman Montaj', NULL, NULL, NULL, '2025-02-28 14:24:53', '2025-02-28 14:24:53'),
(20, 'Tank', NULL, NULL, NULL, '2025-02-28 14:24:59', '2025-02-28 14:24:59'),
(21, 'Boru İmalat', NULL, NULL, NULL, '2025-02-28 14:25:07', '2025-02-28 14:25:07'),
(22, 'Boru Montaj', NULL, NULL, NULL, '2025-02-28 14:25:14', '2025-02-28 14:25:14'),
(23, 'Elektrik', NULL, NULL, NULL, '2025-02-28 14:25:20', '2025-02-28 14:25:20'),
(24, 'Enstrüman', NULL, NULL, NULL, '2025-02-28 14:25:25', '2025-02-28 14:25:25'),
(25, 'Boya', NULL, NULL, NULL, '2025-02-28 14:25:32', '2025-02-28 14:25:32'),
(26, 'Refrakter', NULL, NULL, NULL, '2025-02-28 14:25:38', '2025-02-28 14:25:38'),
(27, 'İzolasyon', NULL, NULL, NULL, '2025-02-28 14:25:44', '2025-02-28 14:25:44'),
(28, 'Test Devreyealma', NULL, NULL, NULL, '2025-02-28 14:25:53', '2025-02-28 14:25:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_expiry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int DEFAULT NULL,
  `job_title_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `hire_date` date NOT NULL,
  `branch_id` int NOT NULL,
  `termination_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `employment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_amount` int NOT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` int NOT NULL,
  `social_security_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `department_id` (`department_id`),
  KEY `job_title_id` (`job_title_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `first_name`, `last_name`, `middle_name`, `birth_date`, `gender`, `nationality`, `passport_number`, `passport_expiry`, `address`, `phone`, `emergency_contact_name`, `emergency_contact_phone`, `department_id`, `job_title_id`, `manager_id`, `hire_date`, `branch_id`, `termination_date`, `created_at`, `updated_at`, `employment_type`, `salary_type`, `salary_amount`, `bank_account`, `tax_id`, `social_security_number`, `notes`) VALUES
(1, 1, 'Levent', 'Günay', '', '', '', '', '', '', '', '', '', '', 1, 1, NULL, '2025-02-28', 0, NULL, '2025-02-28 09:43:35', '2025-02-28 09:43:35', '', '', 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee_documents`
--

DROP TABLE IF EXISTS `employee_documents`;
CREATE TABLE IF NOT EXISTS `employee_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `document_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry_date` date DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee_leave_balances`
--

DROP TABLE IF EXISTS `employee_leave_balances`;
CREATE TABLE IF NOT EXISTS `employee_leave_balances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `year` int NOT NULL,
  `total_days` decimal(5,1) NOT NULL,
  `used_days` decimal(5,1) DEFAULT '0.0',
  `remaining_days` decimal(5,1) GENERATED ALWAYS AS ((`total_days` - `used_days`)) STORED,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`,`leave_type_id`,`year`),
  KEY `leave_type_id` (`leave_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee_meta`
--

DROP TABLE IF EXISTS `employee_meta`;
CREATE TABLE IF NOT EXISTS `employee_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `meta_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_employee_meta` (`employee_id`,`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `employee_meta`
--

INSERT INTO `employee_meta` (`id`, `employee_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 4, 'salary_currency', 'RUB', '2025-02-27 11:11:22', '2025-02-27 15:43:00'),
(2, 3, 'salary_currency', 'RUB', '2025-02-27 12:56:35', '2025-02-27 15:43:39'),
(3, 2, 'salary_currency', 'RUB', '2025-02-27 15:44:07', '2025-02-27 15:44:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `expense_category_id` int NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'RUB',
  `expense_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `receipt_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected','paid') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `approved_by` int DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `expense_category_id` (`expense_category_id`),
  KEY `approved_by` (`approved_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `budget_limit` decimal(15,2) DEFAULT NULL,
  `requires_approval` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `inventory_items`
--

DROP TABLE IF EXISTS `inventory_items`;
CREATE TABLE IF NOT EXISTS `inventory_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `unit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('available','low_stock','out_of_stock') COLLATE utf8mb4_unicode_ci DEFAULT 'available',
  `minimum_stock` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `job_titles`
--

DROP TABLE IF EXISTS `job_titles`;
CREATE TABLE IF NOT EXISTS `job_titles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `base_salary` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `job_titles`
--

INSERT INTO `job_titles` (`id`, `title`, `description`, `base_salary`, `created_at`, `updated_at`) VALUES
(1, 'Genel Müdür', 'Şirket Genel Müdürü', NULL, '2025-02-28 09:43:35', '2025-02-28 09:43:35'),
(3, 'Müdür', NULL, NULL, '2025-02-28 14:19:17', '2025-02-28 14:19:17'),
(4, 'Şef', NULL, NULL, '2025-02-28 14:19:23', '2025-02-28 14:19:23'),
(5, 'Mühendis', NULL, NULL, '2025-02-28 14:19:37', '2025-02-28 14:19:37'),
(6, 'Tekniker', NULL, NULL, '2025-02-28 14:19:47', '2025-02-28 14:19:47'),
(7, 'Tercüman', NULL, NULL, '2025-02-28 14:19:56', '2025-02-28 14:19:56'),
(8, 'Memur', NULL, NULL, '2025-02-28 14:20:04', '2025-02-28 14:20:04'),
(9, 'Şoför', NULL, NULL, '2025-02-28 14:21:21', '2025-02-28 14:21:21'),
(10, 'Sağlık', NULL, NULL, '2025-02-28 14:21:35', '2025-02-28 14:21:35'),
(11, 'Güvenlik', NULL, NULL, '2025-02-28 14:21:43', '2025-02-28 14:21:43'),
(12, 'Avukat', NULL, NULL, '2025-02-28 14:21:49', '2025-02-28 14:21:49'),
(13, 'Rapor', NULL, NULL, '2025-02-28 14:21:56', '2025-02-28 14:21:56'),
(14, 'Danışman', NULL, NULL, '2025-02-28 14:22:01', '2025-02-28 14:22:01'),
(15, 'Topoğraf', NULL, NULL, '2025-02-28 14:22:07', '2025-02-28 14:22:07'),
(16, 'Operatör', NULL, NULL, '2025-02-28 14:22:12', '2025-02-28 14:22:12'),
(17, 'İskeleci', NULL, NULL, '2025-02-28 14:22:17', '2025-02-28 14:22:17'),
(18, 'Formen', NULL, NULL, '2025-02-28 14:22:23', '2025-02-28 14:22:23'),
(19, 'Kaynakçı', NULL, NULL, '2025-02-28 14:22:29', '2025-02-28 14:22:29'),
(20, 'Ekipbaşı', NULL, NULL, '2025-02-28 14:22:34', '2025-02-28 14:22:34'),
(21, 'Usta', NULL, NULL, '2025-02-28 14:22:40', '2025-02-28 14:22:40'),
(22, 'İşçi', NULL, NULL, '2025-02-28 14:22:46', '2025-02-28 14:22:46');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `leave_requests`
--

DROP TABLE IF EXISTS `leave_requests`;
CREATE TABLE IF NOT EXISTS `leave_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_days` decimal(5,1) NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `contact_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected','cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `approver_id` int DEFAULT NULL,
  `approver_type` enum('chief','admin','manager','none') COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `approved_by` int DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `leave_type_id` (`leave_type_id`),
  KEY `approver_id` (`approver_id`),
  KEY `approved_by` (`approved_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
CREATE TABLE IF NOT EXISTS `leave_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `default_days` int DEFAULT '0',
  `is_paid` tinyint(1) DEFAULT '1',
  `requires_approval` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `leave_types`
--

INSERT INTO `leave_types` (`id`, `name`, `description`, `default_days`, `is_paid`, `requires_approval`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Yıllık İzin', 'Çalışanın yıllık ücretli izni', 14, 1, 1, 1, '2025-02-28 09:43:35', '2025-02-28 09:43:35'),
(2, 'Hastalık İzni', 'Sağlık nedeniyle alınan izin', 10, 1, 1, 1, '2025-02-28 09:43:35', '2025-02-28 09:43:35'),
(3, 'Mazeret İzni', 'Özel durumlarda alınan kısa süreli izin', 3, 1, 1, 1, '2025-02-28 09:43:35', '2025-02-28 09:43:35'),
(4, 'Ücretsiz İzin', 'Maaş ödemesi yapılmayan izin', 0, 0, 1, 1, '2025-02-28 09:43:35', '2025-02-28 09:43:35'),
(5, 'Doğum İzni', 'Doğum yapan kadın çalışanlar için izin', 112, 1, 1, 1, '2025-02-28 09:43:35', '2025-02-28 09:43:35'),
(6, 'Babalık İzni', 'Çocuğu olan erkek çalışanlar için izin', 5, 1, 1, 1, '2025-02-28 09:43:35', '2025-02-28 09:43:35'),
(7, 'Evlilik İzni', 'Evlenen çalışanlar için izin', 3, 1, 1, 1, '2025-02-28 09:43:35', '2025-02-28 09:43:35'),
(8, 'Ölüm İzni', 'Yakını vefat eden çalışanlar için izin', 3, 1, 1, 1, '2025-02-28 09:43:35', '2025-02-28 09:43:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_id` int DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payrolls`
--

DROP TABLE IF EXISTS `payrolls`;
CREATE TABLE IF NOT EXISTS `payrolls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `period_id` int NOT NULL,
  `base_salary` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gross_salary` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_salary` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insurance_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `allowances` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deductions` decimal(10,2) NOT NULL DEFAULT '0.00',
  `work_days` int NOT NULL DEFAULT '0',
  `payment_status` enum('pending','paid','cancelled') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `period_id` (`period_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `payrolls`
--

INSERT INTO `payrolls` (`id`, `employee_id`, `period_id`, `base_salary`, `gross_salary`, `net_salary`, `tax_amount`, `insurance_amount`, `allowances`, `deductions`, `work_days`, `payment_status`, `payment_date`, `payment_method`, `notes`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 'paid', '2025-03-25', NULL, NULL, 1, 1, '2025-02-28 17:55:26', '2025-02-28 18:48:06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payroll_details`
--

DROP TABLE IF EXISTS `payroll_details`;
CREATE TABLE IF NOT EXISTS `payroll_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payroll_record_id` int NOT NULL,
  `payroll_item_id` int NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `payroll_record_id` (`payroll_record_id`),
  KEY `payroll_item_id` (`payroll_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payroll_items`
--

DROP TABLE IF EXISTS `payroll_items`;
CREATE TABLE IF NOT EXISTS `payroll_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `type` enum('earning','deduction') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'earning',
  `is_taxable` tinyint(1) NOT NULL DEFAULT '1',
  `is_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `default_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_general_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `payroll_items`
--

INSERT INTO `payroll_items` (`id`, `name`, `code`, `type`, `is_taxable`, `is_fixed`, `default_amount`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test', 'TEST', 'deduction', 0, 1, 100.00, '', 'active', 1, NULL, '2025-02-28 18:09:48', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payroll_item_values`
--

DROP TABLE IF EXISTS `payroll_item_values`;
CREATE TABLE IF NOT EXISTS `payroll_item_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `item_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `effective_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payroll_periods`
--

DROP TABLE IF EXISTS `payroll_periods`;
CREATE TABLE IF NOT EXISTS `payroll_periods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `period_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `payment_date` date NOT NULL,
  `status` enum('pending','processing','completed','cancelled') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `payroll_periods`
--

INSERT INTO `payroll_periods` (`id`, `period_name`, `start_date`, `end_date`, `payment_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Şubat 2025', '2025-02-01', '2025-02-28', '2025-03-25', 'processing', 1, 1, '2025-02-28 17:42:25', '2025-02-28 18:48:06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payroll_records`
--

DROP TABLE IF EXISTS `payroll_records`;
CREATE TABLE IF NOT EXISTS `payroll_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `payroll_period_id` int NOT NULL,
  `base_salary` decimal(15,2) NOT NULL,
  `total_earnings` decimal(15,2) NOT NULL,
  `total_deductions` decimal(15,2) NOT NULL,
  `net_pay` decimal(15,2) NOT NULL,
  `payment_method` enum('bank_transfer','cash','check') COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `status` enum('draft','approved','paid') COLLATE utf8mb4_unicode_ci DEFAULT 'draft',
  `approved_by` int DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`,`payroll_period_id`),
  KEY `payroll_period_id` (`payroll_period_id`),
  KEY `approved_by` (`approved_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `performance_criteria`
--

DROP TABLE IF EXISTS `performance_criteria`;
CREATE TABLE IF NOT EXISTS `performance_criteria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `weight` decimal(5,2) DEFAULT '1.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `performance_reviews`
--

DROP TABLE IF EXISTS `performance_reviews`;
CREATE TABLE IF NOT EXISTS `performance_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `reviewer_id` int NOT NULL,
  `review_period_id` int NOT NULL,
  `overall_score` decimal(3,2) DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `status` enum('draft','submitted','acknowledged','finalized') COLLATE utf8mb4_unicode_ci DEFAULT 'draft',
  `submission_date` datetime DEFAULT NULL,
  `acknowledgment_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`,`reviewer_id`,`review_period_id`),
  KEY `reviewer_id` (`reviewer_id`),
  KEY `review_period_id` (`review_period_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `performance_review_details`
--

DROP TABLE IF EXISTS `performance_review_details`;
CREATE TABLE IF NOT EXISTS `performance_review_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `performance_review_id` int NOT NULL,
  `criteria_id` int NOT NULL,
  `score` decimal(3,2) NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `performance_review_id` (`performance_review_id`,`criteria_id`),
  KEY `criteria_id` (`criteria_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `performance_review_periods`
--

DROP TABLE IF EXISTS `performance_review_periods`;
CREATE TABLE IF NOT EXISTS `performance_review_periods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('upcoming','active','completed') COLLATE utf8mb4_unicode_ci DEFAULT 'upcoming',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `positions`
--

DROP TABLE IF EXISTS `positions`;
CREATE TABLE IF NOT EXISTS `positions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `department_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `positions`
--

INSERT INTO `positions` (`id`, `name`, `description`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'İK Uzmanı', 'İşe alım ve personel yönetimi', 1, '2025-02-27 13:47:05', NULL),
(2, 'İK Müdürü', 'İK departmanının yönetimi', 1, '2025-02-27 13:47:05', NULL),
(3, 'Muhasebe Uzmanı', 'Finansal işlemler ve raporlama', 2, '2025-02-27 13:47:05', NULL),
(4, 'Finans Müdürü', 'Finans departmanının yönetimi', 2, '2025-02-27 13:47:05', NULL),
(5, 'Yazılım Geliştirici', 'Yazılım uygulamaları geliştirme', 3, '2025-02-27 13:47:05', NULL),
(6, 'BT Müdürü', 'BT departmanının yönetimi', 3, '2025-02-27 13:47:05', NULL),
(7, 'Satış Temsilcisi', 'Müşteri ilişkileri ve satış', 4, '2025-02-27 13:47:05', NULL),
(8, 'Satış Müdürü', 'Satış departmanının yönetimi', 4, '2025-02-27 13:47:05', NULL),
(9, 'Üretim Operatörü', 'Üretim hattında çalışma', 5, '2025-02-27 13:47:05', NULL),
(10, 'Üretim Müdürü', 'Üretim departmanının yönetimi', 5, '2025-02-27 13:47:05', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `remember_me_tokens`
--

DROP TABLE IF EXISTS `remember_me_tokens`;
CREATE TABLE IF NOT EXISTS `remember_me_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `remember_me_tokens`
--

INSERT INTO `remember_me_tokens` (`id`, `user_id`, `token`, `expiry`, `created_at`) VALUES
(1, 1, 'd8996ae75d6147b802136fa17329bea363d11830a21417412627a99e36c1094d', '2025-03-01 07:59:51', '2025-02-28 16:59:51');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci,
  `setting_group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_key` (`setting_key`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `setting_group`, `description`, `created_at`, `updated_at`) VALUES
(1, 'company_name', 'Şirket Adı', 'general', 'Company name', '2025-02-27 07:40:28', '2025-02-28 17:05:37'),
(2, 'company_logo', 'uploads/company/logo_1740650696_67c038c8b951f.jpg', 'general', 'Company logo path', '2025-02-27 07:40:28', '2025-02-27 10:04:56'),
(3, 'company_address', 'Şirket Adresi', 'general', 'Company address', '2025-02-27 07:40:28', '2025-02-28 17:05:37'),
(4, 'company_phone', '90 555 444 3322', 'general', 'Company phone number', '2025-02-27 07:40:28', '2025-02-28 17:05:37'),
(5, 'company_email', 'info@xn--irketad-xfb02b.com', 'general', 'Company email', '2025-02-27 07:40:28', '2025-02-28 17:05:37'),
(6, 'default_language', 'tr', 'general', 'Default language', '2025-02-27 07:40:28', '2025-02-27 08:52:19'),
(7, 'default_timezone', '', 'general', 'Default timezone', '2025-02-27 07:40:28', '2025-02-27 08:52:11'),
(8, 'currency', 'RUB', 'general', 'Default currency', '2025-02-27 07:40:28', '2025-02-27 07:40:28'),
(9, 'date_format', '', 'general', 'Date format', '2025-02-27 07:40:28', '2025-02-27 08:52:11'),
(10, 'time_format', '', 'general', 'Time format', '2025-02-27 07:40:28', '2025-02-27 08:52:11'),
(11, 'work_days', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', 'attendance', 'Work days', '2025-02-27 07:40:28', '2025-02-27 09:26:26'),
(12, 'work_start_time', '07:00', 'attendance', 'Work start time', '2025-02-27 07:40:28', '2025-02-27 09:26:04'),
(13, 'work_end_time', '18:00', 'attendance', 'Work end time', '2025-02-27 07:40:28', '2025-02-27 07:40:28'),
(14, 'lunch_start_time', '12:00', 'attendance', 'Lunch start time', '2025-02-27 07:40:28', '2025-02-27 09:26:04'),
(15, 'lunch_end_time', '13:00', 'attendance', 'Lunch end time', '2025-02-27 07:40:28', '2025-02-27 09:26:04'),
(16, 'leave_approval_required', '1', 'leave', 'Leave approval required', '2025-02-27 07:40:28', '2025-02-27 09:27:52'),
(17, 'expense_approval_required', '1', 'expense', 'Expense approval required', '2025-02-27 07:40:28', '2025-02-27 09:28:24'),
(18, 'enable_overtime', '1', 'attendance', 'Enable overtime', '2025-02-27 07:40:28', '2025-02-27 09:26:26'),
(19, 'enable_performance_review', '1', 'performance', 'Enable performance review', '2025-02-27 07:40:28', '2025-02-27 09:28:49'),
(20, 'enable_asset_management', '1', 'asset', 'Enable asset management', '2025-02-27 07:40:28', '2025-02-27 07:40:28'),
(21, 'currency_symbol', '₽', 'general', 'Para Birimi Sembolü', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(22, 'decimal_separator', ',', 'general', 'Ondalık Ayırıcı', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(23, 'thousand_separator', '.', 'general', 'Binlik Ayırıcı', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(24, 'week_start', 'Monday', 'general', 'Hafta Başlangıç Günü', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(25, 'enable_registration', '1', 'general', 'Kullanıcı Kaydını Etkinleştir', '2025-02-27 08:52:45', '2025-02-28 17:05:37'),
(26, 'enable_password_reset', '1', 'general', 'Şifre Sıfırlamayı Etkinleştir', '2025-02-27 08:52:45', '2025-02-28 17:05:37'),
(27, 'session_timeout', '12:00', 'general', 'Oturum Zaman Aşımı (dakika)', '2025-02-27 08:52:45', '2025-02-27 08:56:42'),
(28, 'late_threshold', '15', 'attendance', 'Geç Kalma Eşiği (dakika)', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(29, 'overtime_multiplier', '01:30', 'attendance', 'Fazla Mesai Çarpanı', '2025-02-27 08:52:45', '2025-02-27 09:26:10'),
(30, 'default_annual_leave', '28', 'leave', 'Varsayılan Yıllık İzin (gün)', '2025-02-27 08:52:45', '2025-02-27 09:27:09'),
(31, 'default_sick_leave', '7', 'leave', 'Varsayılan Hastalık İzni (gün)', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(32, 'default_casual_leave', '7', 'leave', 'Varsayılan Mazeret İzni (gün)', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(33, 'leave_prior_notice', '15', 'leave', 'İzin Öncesi Bildirim (gün)', '2025-02-27 08:52:45', '2025-02-27 09:27:32'),
(34, 'enable_leave_carryover', '1', 'leave', 'İzin Devrini Etkinleştir', '2025-02-27 08:52:45', '2025-02-27 09:27:52'),
(35, 'max_leave_carryover', '5', 'leave', 'Maksimum İzin Devri (gün)', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(36, 'expense_approval_threshold', '10000', 'expense', 'Harcama Onay Eşiği', '2025-02-27 08:52:45', '2025-02-27 09:28:20'),
(37, 'enable_expense_attachment', '1', 'expense', 'Harcama Eki Etkinleştir', '2025-02-27 08:52:45', '2025-02-27 09:28:24'),
(38, 'expense_attachment_types', 'jpg,jpeg,png,pdf', 'expense', 'İzin Verilen Harcama Eki Türleri', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(39, 'expense_attachment_max_size', '7', 'expense', 'Maksimum Harcama Eki Boyutu (MB)', '2025-02-27 08:52:45', '2025-02-27 09:28:24'),
(40, 'performance_review_frequency', 'monthly', 'performance', 'Performans Değerlendirme Sıklığı', '2025-02-27 08:52:45', '2025-02-27 09:28:49'),
(41, 'performance_rating_scale', '10', 'performance', 'Performans Değerlendirme Ölçeği', '2025-02-27 08:52:45', '2025-02-27 09:28:49'),
(42, 'enable_self_assessment', '1', 'performance', 'Öz Değerlendirmeyi Etkinleştir', '2025-02-27 08:52:45', '2025-02-27 09:28:49'),
(43, 'enable_peer_review', '1', 'performance', 'Akran Değerlendirmesini Etkinleştir', '2025-02-27 08:52:45', '2025-02-27 09:28:49'),
(44, 'enable_manager_review', '1', 'performance', 'Yönetici Değerlendirmesini Etkinleştir', '2025-02-27 08:52:45', '2025-02-27 09:28:49'),
(45, 'enable_email_notifications', '1', 'notification', 'E-posta Bildirimlerini Etkinleştir', '2025-02-27 08:52:45', '2025-02-27 09:29:35'),
(46, 'enable_sms_notifications', '0', 'notification', 'SMS Bildirimlerini Etkinleştir', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(47, 'enable_browser_notifications', '1', 'notification', 'Tarayıcı Bildirimlerini Etkinleştir', '2025-02-27 08:52:45', '2025-02-27 09:29:35'),
(48, 'notify_leave_request', '1', 'notification', 'İzin Talebi Bildirimi', '2025-02-27 08:52:45', '2025-02-27 09:29:35'),
(49, 'notify_leave_approval', '1', 'notification', 'İzin Onayı Bildirimi', '2025-02-27 08:52:45', '2025-02-27 09:29:35'),
(50, 'notify_expense_request', '1', 'notification', 'Harcama Talebi Bildirimi', '2025-02-27 08:52:45', '2025-02-27 09:29:35'),
(51, 'notify_expense_approval', '1', 'notification', 'Harcama Onayı Bildirimi', '2025-02-27 08:52:45', '2025-02-27 09:29:35'),
(52, 'notify_payroll_generated', '1', 'notification', 'Bordro Oluşturma Bildirimi', '2025-02-27 08:52:45', '2025-02-27 09:29:35'),
(53, 'min_password_length', '8', 'security', 'Minimum Şifre Uzunluğu', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(54, 'password_complexity', '1', 'security', 'Şifre Karmaşıklığı Gerekli', '2025-02-27 08:52:45', '2025-02-27 09:38:46'),
(55, 'password_expiry_days', '365', 'security', 'Şifre Sona Erme Süresi (gün)', '2025-02-27 08:52:45', '2025-02-27 09:38:46'),
(56, 'max_login_attempts', '5', 'security', 'Maksimum Giriş Denemesi', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(57, 'lockout_time', '30', 'security', 'Hesap Kilitleme Süresi (dakika)', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(58, 'enable_two_factor', '0', 'security', 'İki Faktörlü Kimlik Doğrulamayı Etkinleştir', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(59, 'enable_ip_restriction', '0', 'security', 'IP Kısıtlamasını Etkinleştir', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(60, 'allowed_ips', '', 'security', 'İzin Verilen IP Adresleri (virgülle ayrılmış)', '2025-02-27 08:52:45', '2025-02-27 08:52:45'),
(61, 'company_legal_name', 'A.ş. llc', 'company', 'Legal Name', '2025-02-27 09:57:17', '2025-02-27 09:57:17'),
(62, 'company_city', 'adsadasd', 'company', 'City', '2025-02-27 09:57:17', '2025-02-27 09:57:17'),
(63, 'company_state', 'asdasdasd', 'company', 'State', '2025-02-27 09:57:17', '2025-02-27 09:57:17'),
(64, 'company_country', 'Russia', 'company', 'Country', '2025-02-27 09:57:17', '2025-02-27 09:57:17'),
(65, 'company_postal_code', 'asdasdas', 'company', 'Postal Code', '2025-02-27 09:57:17', '2025-02-27 09:57:17'),
(66, 'company_website', 'https://www.wadasdasd.com', 'company', 'Website', '2025-02-27 09:57:17', '2025-02-27 09:57:17'),
(67, 'company_tax_id', '1213132123', 'company', 'Tax Id', '2025-02-27 09:57:17', '2025-02-27 09:57:17'),
(68, 'company_registration_number', '1231312312', 'company', 'Registration Number', '2025-02-27 09:57:17', '2025-02-27 09:57:17'),
(69, 'company_industry', 'İnşaat', 'company', 'Industry', '2025-02-27 09:57:17', '2025-02-27 09:57:17'),
(70, 'company_founded_year', '1990', 'company', 'Founded Year', '2025-02-27 09:57:17', '2025-02-27 09:57:17'),
(71, 'company_description', 'adaasddasd', 'company', 'Description', '2025-02-27 09:57:17', '2025-02-27 09:57:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','manager','employee') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'employee',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `is_active`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'levent.gunay@hotmail.com', '$2y$10$iTbl5bdc/yhCHvFXVTmIu.sKexB9sAr.9AtQl2G92y2GcWuEVPIUW', 'admin', 1, '2025-02-28 19:59:51', '2025-02-28 09:43:35', '2025-02-28 16:59:51');

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Tablo kısıtlamaları `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`parent_department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Tablo kısıtlamaları `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`job_title_id`) REFERENCES `job_titles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_ibfk_4` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`id`) ON DELETE SET NULL;

--
-- Tablo kısıtlamaları `employee_leave_balances`
--
ALTER TABLE `employee_leave_balances`
  ADD CONSTRAINT `employee_leave_balances_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_leave_balances_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_requests_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_requests_ibfk_3` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leave_requests_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `employees` (`id`) ON DELETE SET NULL;

--
-- Tablo kısıtlamaları `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `payrolls`
--
ALTER TABLE `payrolls`
  ADD CONSTRAINT `payrolls_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `payrolls_ibfk_2` FOREIGN KEY (`period_id`) REFERENCES `payroll_periods` (`id`);

--
-- Tablo kısıtlamaları `payroll_item_values`
--
ALTER TABLE `payroll_item_values`
  ADD CONSTRAINT `payroll_item_values_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `payroll_item_values_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `payroll_items` (`id`);

--
-- Tablo kısıtlamaları `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
