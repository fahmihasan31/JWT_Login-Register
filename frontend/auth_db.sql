-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 01:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(1, 'M Fahmi', 'admin@gmail.com', '$2b$10$MCVD/jjrKBDYzRjhl3u6yuk0Yyyag.OS7z9.Lh6uBssbAlNzppKhK', NULL, '2024-05-20 17:39:22', '2024-05-24 11:47:32'),
(2, 'hasan', 'admin@gmail.com', '$2b$10$ea51EmgH1w1JZsjAvRmKSOcK1lKbnC9bJGIAG867YvR9s9Wa/x6T6', NULL, '2024-05-20 17:48:33', '2024-05-20 17:48:33'),
(3, 'udin', 'admin@gmail.com', '$2b$10$BTHjCttZnRisQopZBX4PVui9O4gC6mPx7AiNV7xhoZAxmvFTG/RoG', NULL, '2024-05-20 17:48:59', '2024-05-20 17:48:59'),
(4, 'awan', 'user@gmail.com', '$2b$10$ndVh8T4kcWdW1dWVPi1nbegGZQYiqxXg/qcIOIeBuYfrb.FATj2iK', NULL, '2024-05-20 17:50:42', '2024-05-20 17:50:42'),
(5, 'fahmi', 'fahmi@gmail.com', '$2b$10$z2PIm8mHHVqm4H.9DpivL.0A/JqTAx7nY6B7y7LzWvmapx1ThBosq', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsIm5hbWUiOiJmYWhtaSIsImVtYWlsIjoiZmFobWlAZ21haWwuY29tIiwiaWF0IjoxNzE2NTUxMjkzLCJleHAiOjE3MTY2Mzc2OTN9.vMIziOF8WO5PIC2USFGkEq3fyoCEEmInVCr2Glxtsc0', '2024-05-21 07:25:06', '2024-05-24 11:48:13'),
(6, 'fahmi', 'fahmi@gmail.com', '$2b$10$iDusdcg.PClbs9hOrm5I8uo6mqI84R5x777XhlDD9JjWbEhB1xKLC', NULL, '2024-05-23 12:40:13', '2024-05-23 12:40:13'),
(7, 'bima', 'fahmi@gmail.com', '$2b$10$Tm7FpN11UPLopOJpqanvLOKIyqM6PK92Nt4WKz7K6s3hyW5LTUXWG', NULL, '2024-05-23 12:55:49', '2024-05-23 12:55:49'),
(8, 'bima', 'bima@gmail.com', '$2b$10$./3LJgOHb.49V/w9mPmplOxZgc6kCAihOGjnl4EmXpvZCd6e8328S', NULL, '2024-05-23 12:57:16', '2024-05-23 12:57:16'),
(9, 'fahmi', 'hasan@gmail.com', '$2b$10$H8FvXwC0i.RyU6qqDLAh2e6iq7Zdj/ihwiA6n8ldF0Rc9G.Bmu.ji', NULL, '2024-05-23 19:02:36', '2024-05-23 19:02:36'),
(10, 'fahmi', 'admin@gmail.com', '$2b$10$yu0i9EB1vM0I6BL5tYKdw.s6FjLnlHZeeNgHA9l6fbqKkQs6jidHC', NULL, '2024-05-23 19:05:23', '2024-05-23 19:05:23'),
(11, 'bima2', 'bima2@gmail.com', '$2b$10$PTH4Zr3AzVnY9AlqrdHMGeoV0GgVdYc2ylSCART8jDbrbogn4zyDC', NULL, '2024-05-24 08:20:24', '2024-05-24 08:20:24'),
(12, 'awan', 'awan1@gmail.com', '$2b$10$E2eGkRMShzSbrkFdMsPPwumO8aOGe7tO2kommIeWHdhwW2D4cE7ne', NULL, '2024-05-24 08:21:06', '2024-05-24 08:22:15'),
(13, 'fahmi', 'admin@gmail.com', '$2b$10$1TXnZTMPC7dNDxL4bF05gOayQZt/Taa.SrBWl2nd0801jYhRS5Zze', NULL, '2024-05-24 10:10:03', '2024-05-24 10:10:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
