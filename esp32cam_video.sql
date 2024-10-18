-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 01:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esp32cam_video`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path_file` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `use_images` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `path_file`, `date`, `time`, `use_images`) VALUES
(5, 'image_2935101.jpg', './uploads/image_2935101.jpg', '2024-10-17', '17:36:06', 1),
(6, 'image_2940101.jpg', './uploads/image_2940101.jpg', '2024-10-17', '17:36:11', 1),
(7, 'image_2945101.jpg', './uploads/image_2945101.jpg', '2024-10-17', '17:36:16', 1),
(8, 'image_2950100.jpg', './uploads/image_2950100.jpg', '2024-10-17', '17:36:21', 1),
(9, 'image_2955101.jpg', './uploads/image_2955101.jpg', '2024-10-17', '17:36:26', 1),
(10, 'image_2960101.jpg', './uploads/image_2960101.jpg', '2024-10-17', '17:36:31', 1),
(11, 'image_2965101.jpg', './uploads/image_2965101.jpg', '2024-10-17', '17:36:36', 1),
(12, 'image_2970100.jpg', './uploads/image_2970100.jpg', '2024-10-17', '17:36:41', 1),
(13, 'image_2975101.jpg', './uploads/image_2975101.jpg', '2024-10-17', '17:36:46', 1),
(14, 'image_2980101.jpg', './uploads/image_2980101.jpg', '2024-10-17', '17:36:51', 1),
(15, 'image_2985100.jpg', './uploads/image_2985100.jpg', '2024-10-17', '17:36:56', 1),
(16, 'image_2990101.jpg', './uploads/image_2990101.jpg', '2024-10-17', '17:37:01', 1),
(17, 'image_2995101.jpg', './uploads/image_2995101.jpg', '2024-10-17', '17:37:06', 1),
(18, 'image_3000100.jpg', './uploads/image_3000100.jpg', '2024-10-17', '17:37:11', 1),
(19, 'image_3005101.jpg', './uploads/image_3005101.jpg', '2024-10-17', '17:37:16', 1),
(20, 'image_3010100.jpg', './uploads/image_3010100.jpg', '2024-10-17', '17:37:21', 1),
(21, 'image_3015101.jpg', './uploads/image_3015101.jpg', '2024-10-17', '17:37:26', 1),
(22, 'image_3020101.jpg', './uploads/image_3020101.jpg', '2024-10-17', '17:37:31', 1),
(23, 'image_3025101.jpg', './uploads/image_3025101.jpg', '2024-10-17', '17:37:36', 1),
(24, 'image_3030100.jpg', './uploads/image_3030100.jpg', '2024-10-17', '17:37:41', 1),
(25, 'image_3035101.jpg', './uploads/image_3035101.jpg', '2024-10-17', '17:37:46', 1),
(26, 'image_3040101.jpg', './uploads/image_3040101.jpg', '2024-10-17', '17:37:51', 1),
(27, 'image_3045101.jpg', './uploads/image_3045101.jpg', '2024-10-17', '17:37:56', 1),
(28, 'image_3050100.jpg', './uploads/image_3050100.jpg', '2024-10-17', '17:38:01', 1),
(29, 'image_3055101.jpg', './uploads/image_3055101.jpg', '2024-10-17', '17:38:06', 1),
(30, 'image_3060101.jpg', './uploads/image_3060101.jpg', '2024-10-17', '17:38:11', 1),
(31, 'image_3065101.jpg', './uploads/image_3065101.jpg', '2024-10-17', '17:38:16', 1),
(32, 'image_3070101.jpg', './uploads/image_3070101.jpg', '2024-10-17', '17:38:21', 1),
(33, 'image_3075101.jpg', './uploads/image_3075101.jpg', '2024-10-17', '17:38:26', 1),
(34, 'image_3080101.jpg', './uploads/image_3080101.jpg', '2024-10-17', '17:38:31', 1),
(35, 'image_3085101.jpg', './uploads/image_3085101.jpg', '2024-10-17', '17:38:36', 1),
(36, 'image_3090101.jpg', './uploads/image_3090101.jpg', '2024-10-17', '17:38:41', 1),
(37, 'image_3095101.jpg', './uploads/image_3095101.jpg', '2024-10-17', '17:38:46', 1),
(38, 'image_3100101.jpg', './uploads/image_3100101.jpg', '2024-10-17', '17:38:51', 1),
(39, 'image_3105101.jpg', './uploads/image_3105101.jpg', '2024-10-17', '17:38:56', 1),
(40, 'image_3110101.jpg', './uploads/image_3110101.jpg', '2024-10-17', '17:39:01', 1),
(41, 'image_3115101.jpg', './uploads/image_3115101.jpg', '2024-10-17', '17:39:15', 1),
(42, 'image_3124511.jpg', './uploads/image_3124511.jpg', '2024-10-17', '17:39:15', 1),
(43, 'image_3129511.jpg', './uploads/image_3129511.jpg', '2024-10-17', '17:39:20', 1),
(44, 'image_3134511.jpg', './uploads/image_3134511.jpg', '2024-10-17', '17:39:25', 1),
(45, 'image_3139511.jpg', './uploads/image_3139511.jpg', '2024-10-17', '17:39:30', 1),
(46, 'image_3144511.jpg', './uploads/image_3144511.jpg', '2024-10-17', '17:39:35', 1),
(47, 'image_3149511.jpg', './uploads/image_3149511.jpg', '2024-10-17', '17:39:40', 1),
(48, 'image_3154511.jpg', './uploads/image_3154511.jpg', '2024-10-17', '17:39:56', 1),
(49, 'image_3165421.jpg', './uploads/image_3165421.jpg', '2024-10-17', '17:39:56', 1),
(50, 'image_3170421.jpg', './uploads/image_3170421.jpg', '2024-10-17', '17:40:01', 1),
(51, 'image_3175421.jpg', './uploads/image_3175421.jpg', '2024-10-17', '17:40:06', 1),
(52, 'image_3180421.jpg', './uploads/image_3180421.jpg', '2024-10-17', '17:40:11', 1),
(53, 'image_3185421.jpg', './uploads/image_3185421.jpg', '2024-10-17', '17:40:16', 1),
(54, 'image_3190421.jpg', './uploads/image_3190421.jpg', '2024-10-17', '17:40:21', 1),
(55, 'image_3195421.jpg', './uploads/image_3195421.jpg', '2024-10-17', '17:40:26', 1),
(56, 'image_3200421.jpg', './uploads/image_3200421.jpg', '2024-10-17', '17:40:31', 1),
(57, 'image_3205421.jpg', './uploads/image_3205421.jpg', '2024-10-17', '17:40:36', 1),
(58, 'image_3210421.jpg', './uploads/image_3210421.jpg', '2024-10-17', '17:40:41', 1),
(59, 'image_3215421.jpg', './uploads/image_3215421.jpg', '2024-10-17', '17:40:46', 1),
(60, 'image_3220421.jpg', './uploads/image_3220421.jpg', '2024-10-17', '17:40:51', 1),
(61, 'image_3225421.jpg', './uploads/image_3225421.jpg', '2024-10-17', '17:40:56', 1),
(62, 'image_3230421.jpg', './uploads/image_3230421.jpg', '2024-10-17', '17:41:01', 1),
(63, 'image_3235421.jpg', './uploads/image_3235421.jpg', '2024-10-17', '17:41:06', 1),
(64, 'image_3240421.jpg', './uploads/image_3240421.jpg', '2024-10-17', '17:41:11', 1),
(65, 'image_3245421.jpg', './uploads/image_3245421.jpg', '2024-10-17', '17:41:16', 1),
(66, 'image_3250421.jpg', './uploads/image_3250421.jpg', '2024-10-17', '17:41:21', 1),
(67, 'image_3255421.jpg', './uploads/image_3255421.jpg', '2024-10-17', '17:41:26', 1),
(68, 'image_3260421.jpg', './uploads/image_3260421.jpg', '2024-10-17', '17:41:31', 1),
(69, 'image_3265421.jpg', './uploads/image_3265421.jpg', '2024-10-17', '17:41:36', 1),
(70, 'image_3270421.jpg', './uploads/image_3270421.jpg', '2024-10-17', '17:41:41', 1),
(71, 'image_3275421.jpg', './uploads/image_3275421.jpg', '2024-10-17', '17:41:46', 1),
(72, 'image_3280421.jpg', './uploads/image_3280421.jpg', '2024-10-17', '17:41:51', 1),
(73, 'image_3285421.jpg', './uploads/image_3285421.jpg', '2024-10-17', '17:41:56', 1),
(74, 'image_3290421.jpg', './uploads/image_3290421.jpg', '2024-10-17', '17:42:01', 1),
(75, 'image_3295421.jpg', './uploads/image_3295421.jpg', '2024-10-17', '17:42:06', 1),
(76, 'image_3300420.jpg', './uploads/image_3300420.jpg', '2024-10-17', '17:42:11', 1),
(77, 'image_3305421.jpg', './uploads/image_3305421.jpg', '2024-10-17', '17:42:16', 1),
(78, 'image_3310421.jpg', './uploads/image_3310421.jpg', '2024-10-17', '17:42:21', 1),
(79, 'image_3315421.jpg', './uploads/image_3315421.jpg', '2024-10-17', '17:42:26', 1),
(80, 'image_3320421.jpg', './uploads/image_3320421.jpg', '2024-10-17', '17:42:31', 1),
(81, 'image_3325421.jpg', './uploads/image_3325421.jpg', '2024-10-17', '17:42:36', 1),
(82, 'image_3330420.jpg', './uploads/image_3330420.jpg', '2024-10-17', '17:42:41', 1),
(83, 'image_3335421.jpg', './uploads/image_3335421.jpg', '2024-10-17', '17:42:46', 1),
(84, 'image_3340421.jpg', './uploads/image_3340421.jpg', '2024-10-17', '17:42:51', 1),
(85, 'image_3345421.jpg', './uploads/image_3345421.jpg', '2024-10-17', '17:42:56', 1),
(86, 'image_3350421.jpg', './uploads/image_3350421.jpg', '2024-10-17', '17:43:01', 1),
(87, 'image_3355421.jpg', './uploads/image_3355421.jpg', '2024-10-17', '17:43:06', 1),
(88, 'image_3360421.jpg', './uploads/image_3360421.jpg', '2024-10-17', '17:43:11', 1),
(89, 'image_3365421.jpg', './uploads/image_3365421.jpg', '2024-10-17', '17:43:16', 1),
(90, 'image_3370421.jpg', './uploads/image_3370421.jpg', '2024-10-17', '17:43:21', 1),
(91, 'image_3375420.jpg', './uploads/image_3375420.jpg', '2024-10-17', '17:43:26', 1),
(92, 'image_3380421.jpg', './uploads/image_3380421.jpg', '2024-10-17', '17:43:31', 1),
(93, 'image_3385421.jpg', './uploads/image_3385421.jpg', '2024-10-17', '17:43:36', 1),
(94, 'image_3390420.jpg', './uploads/image_3390420.jpg', '2024-10-17', '17:43:41', 1),
(95, 'image_3395421.jpg', './uploads/image_3395421.jpg', '2024-10-17', '17:43:46', 1),
(96, 'image_3400421.jpg', './uploads/image_3400421.jpg', '2024-10-17', '17:43:51', 1),
(97, 'image_3405421.jpg', './uploads/image_3405421.jpg', '2024-10-17', '17:43:56', 1),
(98, 'image_3410421.jpg', './uploads/image_3410421.jpg', '2024-10-17', '17:44:01', 1),
(99, 'image_3415421.jpg', './uploads/image_3415421.jpg', '2024-10-17', '17:44:06', 1),
(100, 'image_3420421.jpg', './uploads/image_3420421.jpg', '2024-10-17', '17:44:11', 1),
(101, 'image_3425421.jpg', './uploads/image_3425421.jpg', '2024-10-17', '17:44:16', 1),
(102, 'image_3430421.jpg', './uploads/image_3430421.jpg', '2024-10-17', '17:44:21', 1),
(103, 'image_3435421.jpg', './uploads/image_3435421.jpg', '2024-10-17', '17:44:26', 1),
(104, 'image_3440421.jpg', './uploads/image_3440421.jpg', '2024-10-17', '17:44:31', 1),
(105, 'image_3445421.jpg', './uploads/image_3445421.jpg', '2024-10-17', '17:44:36', 1),
(106, 'image_3450421.jpg', './uploads/image_3450421.jpg', '2024-10-17', '17:44:41', 1),
(107, 'image_3455421.jpg', './uploads/image_3455421.jpg', '2024-10-17', '17:44:46', 1),
(108, 'image_3460421.jpg', './uploads/image_3460421.jpg', '2024-10-17', '17:44:51', 1),
(109, 'image_3465421.jpg', './uploads/image_3465421.jpg', '2024-10-17', '17:44:56', 1),
(110, 'image_3470421.jpg', './uploads/image_3470421.jpg', '2024-10-17', '17:45:01', 1),
(111, 'image_3475421.jpg', './uploads/image_3475421.jpg', '2024-10-17', '17:45:06', 1),
(112, 'image_3480421.jpg', './uploads/image_3480421.jpg', '2024-10-17', '17:45:11', 1),
(113, 'image_3485421.jpg', './uploads/image_3485421.jpg', '2024-10-17', '17:45:16', 1),
(114, 'image_3490421.jpg', './uploads/image_3490421.jpg', '2024-10-17', '17:45:21', 1),
(115, 'image_3495421.jpg', './uploads/image_3495421.jpg', '2024-10-17', '17:45:26', 1),
(116, 'image_3500421.jpg', './uploads/image_3500421.jpg', '2024-10-17', '17:45:31', 1),
(117, 'image_3505420.jpg', './uploads/image_3505420.jpg', '2024-10-17', '17:45:36', 1),
(118, 'image_3510421.jpg', './uploads/image_3510421.jpg', '2024-10-17', '17:45:41', 1),
(119, 'image_3515421.jpg', './uploads/image_3515421.jpg', '2024-10-17', '17:45:46', 1),
(120, 'image_3520421.jpg', './uploads/image_3520421.jpg', '2024-10-17', '17:45:51', 1),
(121, 'image_3525421.jpg', './uploads/image_3525421.jpg', '2024-10-17', '17:45:56', 1),
(122, 'image_3530421.jpg', './uploads/image_3530421.jpg', '2024-10-17', '17:46:01', 1),
(123, 'image_3535421.jpg', './uploads/image_3535421.jpg', '2024-10-17', '17:46:06', 1),
(124, 'image_3540421.jpg', './uploads/image_3540421.jpg', '2024-10-17', '17:46:11', 1),
(125, 'image_3545421.jpg', './uploads/image_3545421.jpg', '2024-10-17', '17:46:16', 1),
(126, 'image_3550421.jpg', './uploads/image_3550421.jpg', '2024-10-17', '17:46:21', 1),
(127, 'image_3555421.jpg', './uploads/image_3555421.jpg', '2024-10-17', '17:46:26', 1),
(128, 'image_3560421.jpg', './uploads/image_3560421.jpg', '2024-10-17', '17:46:31', 1),
(129, 'image_3565421.jpg', './uploads/image_3565421.jpg', '2024-10-17', '17:46:37', 1),
(130, 'image_3570421.jpg', './uploads/image_3570421.jpg', '2024-10-17', '17:46:41', 1),
(131, 'image_3575421.jpg', './uploads/image_3575421.jpg', '2024-10-17', '17:46:46', 1),
(132, 'image_3580421.jpg', './uploads/image_3580421.jpg', '2024-10-17', '17:46:51', 1),
(133, 'image_3585421.jpg', './uploads/image_3585421.jpg', '2024-10-17', '17:46:56', 1),
(134, 'image_3590421.jpg', './uploads/image_3590421.jpg', '2024-10-17', '17:47:01', 1),
(135, 'image_3595421.jpg', './uploads/image_3595421.jpg', '2024-10-17', '17:47:06', 1),
(136, 'image_3600420.jpg', './uploads/image_3600420.jpg', '2024-10-17', '17:47:11', 1),
(137, 'image_3605421.jpg', './uploads/image_3605421.jpg', '2024-10-17', '17:47:16', 1),
(138, 'image_3610421.jpg', './uploads/image_3610421.jpg', '2024-10-17', '17:47:21', 1),
(139, 'image_3615421.jpg', './uploads/image_3615421.jpg', '2024-10-17', '17:47:26', 1),
(140, 'image_3620421.jpg', './uploads/image_3620421.jpg', '2024-10-17', '17:47:31', 1),
(141, 'image_3625421.jpg', './uploads/image_3625421.jpg', '2024-10-17', '17:47:36', 1),
(142, 'image_3630420.jpg', './uploads/image_3630420.jpg', '2024-10-17', '17:47:41', 1),
(143, 'image_3635421.jpg', './uploads/image_3635421.jpg', '2024-10-17', '17:47:46', 1),
(144, 'image_3640421.jpg', './uploads/image_3640421.jpg', '2024-10-17', '17:47:51', 1),
(145, 'image_3645421.jpg', './uploads/image_3645421.jpg', '2024-10-17', '17:47:56', 1),
(146, 'image_3650421.jpg', './uploads/image_3650421.jpg', '2024-10-17', '17:48:01', 1),
(147, 'image_3655421.jpg', './uploads/image_3655421.jpg', '2024-10-17', '17:48:06', 1),
(148, 'image_3660421.jpg', './uploads/image_3660421.jpg', '2024-10-17', '17:48:11', 1),
(149, 'image_3665421.jpg', './uploads/image_3665421.jpg', '2024-10-17', '17:48:16', 1),
(150, 'image_3670421.jpg', './uploads/image_3670421.jpg', '2024-10-17', '17:48:21', 1),
(151, 'image_3675421.jpg', './uploads/image_3675421.jpg', '2024-10-17', '17:48:26', 1),
(152, 'image_3680421.jpg', './uploads/image_3680421.jpg', '2024-10-17', '17:48:31', 1),
(153, 'image_3685421.jpg', './uploads/image_3685421.jpg', '2024-10-17', '17:48:36', 1),
(154, 'image_3690421.jpg', './uploads/image_3690421.jpg', '2024-10-17', '17:48:41', 1),
(155, 'image_3695420.jpg', './uploads/image_3695420.jpg', '2024-10-17', '17:48:46', 1),
(156, 'image_3700421.jpg', './uploads/image_3700421.jpg', '2024-10-17', '17:48:51', 1),
(157, 'image_3705421.jpg', './uploads/image_3705421.jpg', '2024-10-17', '17:48:56', 1),
(158, 'image_3710421.jpg', './uploads/image_3710421.jpg', '2024-10-17', '17:49:01', 1),
(159, 'image_3715421.jpg', './uploads/image_3715421.jpg', '2024-10-17', '17:49:06', 1),
(160, 'image_3720421.jpg', './uploads/image_3720421.jpg', '2024-10-17', '17:49:11', 1),
(161, 'image_3725421.jpg', './uploads/image_3725421.jpg', '2024-10-17', '17:49:16', 1),
(162, 'image_3730420.jpg', './uploads/image_3730420.jpg', '2024-10-17', '17:49:21', 1),
(163, 'image_3735421.jpg', './uploads/image_3735421.jpg', '2024-10-17', '17:49:26', 1),
(164, 'image_3740421.jpg', './uploads/image_3740421.jpg', '2024-10-17', '17:49:31', 1),
(165, 'image_3745421.jpg', './uploads/image_3745421.jpg', '2024-10-17', '17:49:36', 1),
(166, 'image_3750421.jpg', './uploads/image_3750421.jpg', '2024-10-17', '17:49:41', 1),
(167, 'image_3755421.jpg', './uploads/image_3755421.jpg', '2024-10-17', '17:49:46', 1),
(168, 'image_3760421.jpg', './uploads/image_3760421.jpg', '2024-10-17', '17:49:51', 1),
(169, 'image_3765421.jpg', './uploads/image_3765421.jpg', '2024-10-17', '17:49:56', 1),
(170, 'image_3770421.jpg', './uploads/image_3770421.jpg', '2024-10-17', '17:50:01', 1),
(171, 'image_3775421.jpg', './uploads/image_3775421.jpg', '2024-10-17', '17:50:06', 1),
(172, 'image_3780421.jpg', './uploads/image_3780421.jpg', '2024-10-17', '17:50:11', 1),
(173, 'image_3785421.jpg', './uploads/image_3785421.jpg', '2024-10-17', '17:50:16', 1),
(174, 'image_3790421.jpg', './uploads/image_3790421.jpg', '2024-10-17', '17:50:21', 1),
(175, 'image_3795420.jpg', './uploads/image_3795420.jpg', '2024-10-17', '17:50:26', 1),
(176, 'image_3800421.jpg', './uploads/image_3800421.jpg', '2024-10-17', '17:50:31', 1),
(177, 'image_3805421.jpg', './uploads/image_3805421.jpg', '2024-10-17', '17:50:36', 1),
(178, 'image_3810421.jpg', './uploads/image_3810421.jpg', '2024-10-17', '17:50:41', 1),
(179, 'image_3815421.jpg', './uploads/image_3815421.jpg', '2024-10-17', '17:50:46', 1),
(180, 'image_3820421.jpg', './uploads/image_3820421.jpg', '2024-10-17', '17:50:51', 1),
(181, 'image_3825421.jpg', './uploads/image_3825421.jpg', '2024-10-17', '17:50:56', 1),
(182, 'image_3830421.jpg', './uploads/image_3830421.jpg', '2024-10-17', '17:51:01', 1),
(183, 'image_3835421.jpg', './uploads/image_3835421.jpg', '2024-10-17', '17:51:06', 1),
(184, 'image_3840421.jpg', './uploads/image_3840421.jpg', '2024-10-17', '17:51:11', 1),
(185, 'image_3845421.jpg', './uploads/image_3845421.jpg', '2024-10-17', '17:51:16', 1),
(186, 'image_3850421.jpg', './uploads/image_3850421.jpg', '2024-10-17', '17:51:21', 1),
(187, 'image_3855421.jpg', './uploads/image_3855421.jpg', '2024-10-17', '17:51:26', 1),
(188, 'image_3860421.jpg', './uploads/image_3860421.jpg', '2024-10-17', '17:51:31', 1),
(189, 'image_3865421.jpg', './uploads/image_3865421.jpg', '2024-10-17', '17:51:36', 1),
(190, 'image_3870421.jpg', './uploads/image_3870421.jpg', '2024-10-17', '17:51:41', 1),
(191, 'image_3875421.jpg', './uploads/image_3875421.jpg', '2024-10-17', '17:51:46', 1),
(192, 'image_3880421.jpg', './uploads/image_3880421.jpg', '2024-10-17', '17:51:51', 1),
(193, 'image_3885421.jpg', './uploads/image_3885421.jpg', '2024-10-17', '17:51:56', 1),
(194, 'image_3890421.jpg', './uploads/image_3890421.jpg', '2024-10-17', '17:52:01', 1),
(195, 'image_3895421.jpg', './uploads/image_3895421.jpg', '2024-10-17', '17:52:06', 1),
(196, 'image_3900421.jpg', './uploads/image_3900421.jpg', '2024-10-17', '17:52:11', 1),
(197, 'image_3905421.jpg', './uploads/image_3905421.jpg', '2024-10-17', '17:52:16', 1),
(198, 'image_3910421.jpg', './uploads/image_3910421.jpg', '2024-10-17', '17:52:21', 1),
(199, 'image_3915421.jpg', './uploads/image_3915421.jpg', '2024-10-17', '17:52:26', 1),
(200, 'image_3920421.jpg', './uploads/image_3920421.jpg', '2024-10-17', '17:52:31', 1),
(201, 'image_3925420.jpg', './uploads/image_3925420.jpg', '2024-10-17', '17:52:36', 1),
(202, 'image_3930420.jpg', './uploads/image_3930420.jpg', '2024-10-17', '17:52:41', 1),
(203, 'image_3935421.jpg', './uploads/image_3935421.jpg', '2024-10-17', '17:52:46', 1),
(204, 'image_3940421.jpg', './uploads/image_3940421.jpg', '2024-10-17', '17:52:51', 1),
(205, 'image_3945421.jpg', './uploads/image_3945421.jpg', '2024-10-17', '17:52:56', 1),
(206, 'image_3950421.jpg', './uploads/image_3950421.jpg', '2024-10-17', '17:53:01', 1),
(207, 'image_3955421.jpg', './uploads/image_3955421.jpg', '2024-10-17', '17:53:06', 1),
(208, 'image_3960421.jpg', './uploads/image_3960421.jpg', '2024-10-17', '17:53:11', 1),
(209, 'image_3965421.jpg', './uploads/image_3965421.jpg', '2024-10-17', '17:53:16', 1),
(210, 'image_3970421.jpg', './uploads/image_3970421.jpg', '2024-10-17', '17:53:21', 1),
(211, 'image_3975421.jpg', './uploads/image_3975421.jpg', '2024-10-17', '17:53:27', 1),
(212, 'image_3980421.jpg', './uploads/image_3980421.jpg', '2024-10-17', '17:53:31', 1),
(213, 'image_3985421.jpg', './uploads/image_3985421.jpg', '2024-10-17', '17:53:36', 1),
(214, 'image_3990421.jpg', './uploads/image_3990421.jpg', '2024-10-17', '17:53:41', 1),
(215, 'image_3995421.jpg', './uploads/image_3995421.jpg', '2024-10-17', '17:53:46', 1),
(216, 'image_4000421.jpg', './uploads/image_4000421.jpg', '2024-10-17', '17:53:51', 1),
(217, 'image_4005421.jpg', './uploads/image_4005421.jpg', '2024-10-17', '17:53:56', 1),
(218, 'image_4010421.jpg', './uploads/image_4010421.jpg', '2024-10-17', '17:54:01', 1),
(219, 'image_4015421.jpg', './uploads/image_4015421.jpg', '2024-10-17', '17:54:06', 1),
(220, 'image_4020421.jpg', './uploads/image_4020421.jpg', '2024-10-17', '17:54:11', 1),
(221, 'image_4025421.jpg', './uploads/image_4025421.jpg', '2024-10-17', '17:54:16', 1),
(222, 'image_4030421.jpg', './uploads/image_4030421.jpg', '2024-10-17', '17:54:21', 1),
(223, 'image_4035421.jpg', './uploads/image_4035421.jpg', '2024-10-17', '17:54:26', 1),
(224, 'image_4040421.jpg', './uploads/image_4040421.jpg', '2024-10-17', '17:54:31', 1),
(225, 'image_4045421.jpg', './uploads/image_4045421.jpg', '2024-10-17', '17:54:36', 1),
(226, 'image_4050421.jpg', './uploads/image_4050421.jpg', '2024-10-17', '17:54:42', 1),
(227, 'image_4055421.jpg', './uploads/image_4055421.jpg', '2024-10-17', '17:54:51', 1),
(228, 'image_4060421.jpg', './uploads/image_4060421.jpg', '2024-10-17', '17:54:55', 1),
(229, 'image_4065421.jpg', './uploads/image_4065421.jpg', '2024-10-17', '17:54:56', 1),
(230, 'image_4070421.jpg', './uploads/image_4070421.jpg', '2024-10-17', '17:55:01', 1),
(231, 'image_4075421.jpg', './uploads/image_4075421.jpg', '2024-10-17', '17:55:06', 1),
(232, 'image_4080421.jpg', './uploads/image_4080421.jpg', '2024-10-17', '17:55:11', 1),
(233, 'image_4085421.jpg', './uploads/image_4085421.jpg', '2024-10-17', '17:55:16', 1),
(234, 'image_4090421.jpg', './uploads/image_4090421.jpg', '2024-10-17', '17:55:21', 1),
(235, 'image_4095421.jpg', './uploads/image_4095421.jpg', '2024-10-17', '17:55:26', 1),
(236, 'image_4100421.jpg', './uploads/image_4100421.jpg', '2024-10-17', '17:55:33', 1),
(237, 'image_4105421.jpg', './uploads/image_4105421.jpg', '2024-10-17', '17:55:36', 1),
(238, 'image_4110421.jpg', './uploads/image_4110421.jpg', '2024-10-17', '17:55:41', 1),
(239, 'image_4115421.jpg', './uploads/image_4115421.jpg', '2024-10-17', '17:55:46', 1),
(240, 'image_4120421.jpg', './uploads/image_4120421.jpg', '2024-10-17', '17:55:51', 1),
(241, 'image_4125421.jpg', './uploads/image_4125421.jpg', '2024-10-17', '17:55:56', 1),
(242, 'image_4130421.jpg', './uploads/image_4130421.jpg', '2024-10-17', '17:56:01', 1),
(243, 'image_4135421.jpg', './uploads/image_4135421.jpg', '2024-10-17', '17:56:06', 1),
(244, 'image_4140421.jpg', './uploads/image_4140421.jpg', '2024-10-17', '17:56:11', 1),
(245, 'image_4145421.jpg', './uploads/image_4145421.jpg', '2024-10-17', '17:56:16', 1),
(246, 'image_4150421.jpg', './uploads/image_4150421.jpg', '2024-10-17', '17:56:21', 1),
(247, 'image_4155421.jpg', './uploads/image_4155421.jpg', '2024-10-17', '17:56:26', 1),
(248, 'image_4160421.jpg', './uploads/image_4160421.jpg', '2024-10-17', '17:56:31', 1),
(249, 'image_4165421.jpg', './uploads/image_4165421.jpg', '2024-10-17', '17:56:36', 1),
(250, 'image_4170421.jpg', './uploads/image_4170421.jpg', '2024-10-17', '17:56:41', 1),
(251, 'image_4175421.jpg', './uploads/image_4175421.jpg', '2024-10-17', '17:56:46', 1),
(252, 'image_4180421.jpg', './uploads/image_4180421.jpg', '2024-10-17', '17:56:51', 1),
(253, 'image_4185421.jpg', './uploads/image_4185421.jpg', '2024-10-17', '17:56:56', 1),
(254, 'image_4190421.jpg', './uploads/image_4190421.jpg', '2024-10-17', '17:57:01', 1),
(255, 'image_4195421.jpg', './uploads/image_4195421.jpg', '2024-10-17', '17:57:06', 1),
(256, 'image_4200421.jpg', './uploads/image_4200421.jpg', '2024-10-17', '17:57:11', 1),
(257, 'image_4205421.jpg', './uploads/image_4205421.jpg', '2024-10-17', '17:57:16', 1),
(258, 'image_4210421.jpg', './uploads/image_4210421.jpg', '2024-10-17', '17:57:21', 1),
(259, 'image_4215421.jpg', './uploads/image_4215421.jpg', '2024-10-17', '17:57:26', 1),
(260, 'image_4220421.jpg', './uploads/image_4220421.jpg', '2024-10-17', '17:57:31', 1),
(261, 'image_4225421.jpg', './uploads/image_4225421.jpg', '2024-10-17', '17:57:36', 1),
(262, 'image_4230421.jpg', './uploads/image_4230421.jpg', '2024-10-17', '17:57:41', 1),
(263, 'image_4235420.jpg', './uploads/image_4235420.jpg', '2024-10-17', '17:57:46', 1),
(264, 'image_4240421.jpg', './uploads/image_4240421.jpg', '2024-10-17', '17:57:51', 1),
(265, 'image_4245421.jpg', './uploads/image_4245421.jpg', '2024-10-17', '17:57:56', 1),
(266, 'image_4250421.jpg', './uploads/image_4250421.jpg', '2024-10-17', '17:58:01', 1),
(267, 'image_4255421.jpg', './uploads/image_4255421.jpg', '2024-10-17', '17:58:06', 1),
(268, 'image_4260421.jpg', './uploads/image_4260421.jpg', '2024-10-17', '17:58:11', 1),
(269, 'image_4265421.jpg', './uploads/image_4265421.jpg', '2024-10-17', '17:58:16', 1),
(270, 'image_4270421.jpg', './uploads/image_4270421.jpg', '2024-10-17', '17:58:21', 1),
(271, 'image_4275421.jpg', './uploads/image_4275421.jpg', '2024-10-17', '17:58:26', 1),
(272, 'image_4280421.jpg', './uploads/image_4280421.jpg', '2024-10-17', '17:58:31', 1),
(273, 'image_4285421.jpg', './uploads/image_4285421.jpg', '2024-10-17', '17:58:36', 1),
(274, 'image_4290421.jpg', './uploads/image_4290421.jpg', '2024-10-17', '17:58:41', 1),
(275, 'image_4295421.jpg', './uploads/image_4295421.jpg', '2024-10-17', '17:58:46', 1),
(276, 'image_4300420.jpg', './uploads/image_4300420.jpg', '2024-10-17', '17:58:51', 1),
(277, 'image_4305421.jpg', './uploads/image_4305421.jpg', '2024-10-17', '17:58:56', 1),
(278, 'image_4310421.jpg', './uploads/image_4310421.jpg', '2024-10-17', '17:59:01', 1),
(279, 'image_4315421.jpg', './uploads/image_4315421.jpg', '2024-10-17', '17:59:06', 1),
(280, 'image_4320421.jpg', './uploads/image_4320421.jpg', '2024-10-17', '17:59:11', 1),
(281, 'image_4325420.jpg', './uploads/image_4325420.jpg', '2024-10-17', '17:59:16', 1),
(282, 'image_4330421.jpg', './uploads/image_4330421.jpg', '2024-10-17', '17:59:21', 1),
(283, 'image_4335421.jpg', './uploads/image_4335421.jpg', '2024-10-17', '17:59:26', 1),
(284, 'image_4340420.jpg', './uploads/image_4340420.jpg', '2024-10-17', '17:59:31', 1),
(285, 'image_4345421.jpg', './uploads/image_4345421.jpg', '2024-10-17', '17:59:36', 1),
(286, 'image_4350420.jpg', './uploads/image_4350420.jpg', '2024-10-17', '17:59:41', 1),
(287, 'image_4355421.jpg', './uploads/image_4355421.jpg', '2024-10-17', '17:59:46', 1),
(288, 'image_4360420.jpg', './uploads/image_4360420.jpg', '2024-10-17', '17:59:51', 1),
(289, 'image_4365421.jpg', './uploads/image_4365421.jpg', '2024-10-17', '17:59:56', 1),
(290, 'image_4370421.jpg', './uploads/image_4370421.jpg', '2024-10-17', '18:00:01', 1),
(291, 'image_4375421.jpg', './uploads/image_4375421.jpg', '2024-10-17', '18:00:06', 1),
(292, 'image_4380421.jpg', './uploads/image_4380421.jpg', '2024-10-17', '18:00:11', 1),
(293, 'image_4385420.jpg', './uploads/image_4385420.jpg', '2024-10-17', '18:00:16', 1),
(294, 'image_4390421.jpg', './uploads/image_4390421.jpg', '2024-10-17', '18:00:21', 1),
(295, 'image_4395421.jpg', './uploads/image_4395421.jpg', '2024-10-17', '18:00:26', 1),
(296, 'image_4400420.jpg', './uploads/image_4400420.jpg', '2024-10-17', '18:00:31', 1),
(297, 'image_4405421.jpg', './uploads/image_4405421.jpg', '2024-10-17', '18:00:36', 1),
(298, 'image_4410421.jpg', './uploads/image_4410421.jpg', '2024-10-17', '18:00:41', 1),
(299, 'image_4415421.jpg', './uploads/image_4415421.jpg', '2024-10-17', '18:00:46', 1),
(300, 'image_4420421.jpg', './uploads/image_4420421.jpg', '2024-10-17', '18:00:51', 1),
(301, 'image_4425421.jpg', './uploads/image_4425421.jpg', '2024-10-17', '18:00:56', 1),
(302, 'image_4430421.jpg', './uploads/image_4430421.jpg', '2024-10-17', '18:01:01', 1),
(303, 'image_4435421.jpg', './uploads/image_4435421.jpg', '2024-10-17', '18:01:06', 1),
(304, 'image_4440421.jpg', './uploads/image_4440421.jpg', '2024-10-17', '18:01:11', 1),
(305, 'image_4445421.jpg', './uploads/image_4445421.jpg', '2024-10-17', '18:01:17', 0),
(306, 'image_4450421.jpg', './uploads/image_4450421.jpg', '2024-10-17', '18:01:21', 0),
(307, 'image_4455421.jpg', './uploads/image_4455421.jpg', '2024-10-17', '18:01:26', 0),
(308, 'image_4460421.jpg', './uploads/image_4460421.jpg', '2024-10-17', '18:01:31', 0),
(309, 'image_4465421.jpg', './uploads/image_4465421.jpg', '2024-10-17', '18:01:36', 0),
(310, 'image_4470421.jpg', './uploads/image_4470421.jpg', '2024-10-17', '18:01:41', 0),
(311, 'image_4475421.jpg', './uploads/image_4475421.jpg', '2024-10-17', '18:01:46', 0),
(312, 'image_4480421.jpg', './uploads/image_4480421.jpg', '2024-10-17', '18:01:51', 0),
(313, 'image_4485421.jpg', './uploads/image_4485421.jpg', '2024-10-17', '18:01:56', 0),
(314, 'image_4490421.jpg', './uploads/image_4490421.jpg', '2024-10-17', '18:02:01', 0),
(315, 'image_4495421.jpg', './uploads/image_4495421.jpg', '2024-10-17', '18:02:06', 0),
(316, 'image_4500421.jpg', './uploads/image_4500421.jpg', '2024-10-17', '18:02:11', 0),
(317, 'image_4505421.jpg', './uploads/image_4505421.jpg', '2024-10-17', '18:02:16', 0),
(318, 'image_4510421.jpg', './uploads/image_4510421.jpg', '2024-10-17', '18:02:21', 0),
(319, 'image_4515421.jpg', './uploads/image_4515421.jpg', '2024-10-17', '18:02:26', 0),
(320, 'image_4520421.jpg', './uploads/image_4520421.jpg', '2024-10-17', '18:02:31', 0),
(321, 'image_4525421.jpg', './uploads/image_4525421.jpg', '2024-10-17', '18:02:36', 0),
(322, 'image_4530421.jpg', './uploads/image_4530421.jpg', '2024-10-17', '18:02:41', 0),
(323, 'image_4535420.jpg', './uploads/image_4535420.jpg', '2024-10-17', '18:02:46', 0),
(324, 'image_4540421.jpg', './uploads/image_4540421.jpg', '2024-10-17', '18:02:51', 0),
(325, 'image_4545420.jpg', './uploads/image_4545420.jpg', '2024-10-17', '18:02:56', 0),
(326, 'image_4550421.jpg', './uploads/image_4550421.jpg', '2024-10-17', '18:03:01', 0),
(327, 'image_4555421.jpg', './uploads/image_4555421.jpg', '2024-10-17', '18:03:06', 0),
(328, 'image_4560421.jpg', './uploads/image_4560421.jpg', '2024-10-17', '18:03:11', 0),
(329, 'image_4565421.jpg', './uploads/image_4565421.jpg', '2024-10-17', '18:03:16', 0),
(330, 'image_4570421.jpg', './uploads/image_4570421.jpg', '2024-10-17', '18:03:21', 0),
(331, 'image_4575421.jpg', './uploads/image_4575421.jpg', '2024-10-17', '18:03:26', 0),
(332, 'image_4580421.jpg', './uploads/image_4580421.jpg', '2024-10-17', '18:03:31', 0),
(333, 'image_4585421.jpg', './uploads/image_4585421.jpg', '2024-10-17', '18:03:36', 0),
(334, 'image_4590420.jpg', './uploads/image_4590420.jpg', '2024-10-17', '18:03:41', 0),
(335, 'image_4595420.jpg', './uploads/image_4595420.jpg', '2024-10-17', '18:03:49', 0),
(336, 'image_4600420.jpg', './uploads/image_4600420.jpg', '2024-10-17', '18:03:52', 0),
(337, 'image_4605421.jpg', './uploads/image_4605421.jpg', '2024-10-17', '18:03:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path_file` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `path_file`, `date`, `time`) VALUES
(228, 'video_20241017_180237.mp4', 'videos/video_20241017_180237.mp4', '2024-10-17', '18:02:38'),
(229, 'video_20241017_180243.mp4', 'videos/video_20241017_180243.mp4', '2024-10-17', '18:02:43'),
(230, 'video_20241017_180248.mp4', 'videos/video_20241017_180248.mp4', '2024-10-17', '18:02:48'),
(231, 'video_20241017_180253.mp4', 'videos/video_20241017_180253.mp4', '2024-10-17', '18:02:54'),
(232, 'video_20241017_180259.mp4', 'videos/video_20241017_180259.mp4', '2024-10-17', '18:02:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
