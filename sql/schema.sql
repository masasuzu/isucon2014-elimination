CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `login` varchar(255) NOT NULL UNIQUE,
  `password_hash` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL
) DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `created_at` datetime NOT NULL,
  `user_id` int,
  `login` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `succeeded` tinyint NOT NULL
) DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `user_login_last_failure_count` (
  `user_id`            int PRIMARY KEY,
  `last_failure_count` int NOT NULL
) DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ip_login_last_failure_count` (
  `ip` varchar(255) PRIMARY KEY,
  `last_failure_count` int NOT NULL
) DEFAULT CHARSET=utf8;

