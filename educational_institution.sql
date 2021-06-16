-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 15 2021 г., 11:10
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `educational_institution`
--

-- --------------------------------------------------------

--
-- Структура таблицы `audiences_list`
--

CREATE TABLE `audiences_list` (
  `id` bigint UNSIGNED NOT NULL,
  `audi_num` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `audiences_list`
--

INSERT INTO `audiences_list` (`id`, `audi_num`) VALUES
(1, '310'),
(2, '311'),
(3, '312'),
(4, '313'),
(5, '315'),
(6, '316'),
(7, '317'),
(8, '318');

-- --------------------------------------------------------

--
-- Структура таблицы `groups_list`
--

CREATE TABLE `groups_list` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `audience_id` bigint UNSIGNED NOT NULL,
  `graduation_date` timestamp NULL DEFAULT NULL,
  `subject_teacher_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups_list`
--

INSERT INTO `groups_list` (`id`, `name`, `audience_id`, `graduation_date`, `subject_teacher_id`) VALUES
(1, 'PHP-20-01', 1, '2021-05-05 10:00:45', 1),
(2, 'Python-20-02', 2, NULL, 4),
(3, 'Web Design 21-04', 3, NULL, 12),
(4, 'Web Design 20-04', 4, '2020-12-12 16:30:30', 13),
(5, 'C#-21-03', 5, '2021-06-09 14:45:16', 8),
(6, 'php-lar-20-05', 6, NULL, 10),
(7, 'basic-21-06', 7, NULL, 2),
(8, 'java script-21-05', 8, NULL, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `marks_and_comments`
--

CREATE TABLE `marks_and_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `mark` int NOT NULL,
  `comment` text,
  `student_group_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `marks_and_comments`
--

INSERT INTO `marks_and_comments` (`id`, `mark`, `comment`, `student_group_id`) VALUES
(1, 4, 'test English 19.04.20', 1),
(2, 5, 'test English 14.04.20', 2),
(3, 3, 'test English 2.04.20', 3),
(4, 5, 'test English 20.04.20', 4),
(5, 3, 'test English 03.04.20', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `lastname`, `email`, `password`) VALUES
(1, 'Наркис', 'Вахрушев', 'NarkisVahrushev335@gmail.com', 'zmiP1QgN9EHuzXzwbGp1LJN88M5dnRFx43UB1AivAPdGfYbqN346dKNhshzt'),
(2, 'Марфа', 'Емельянова', 'MarfaEmelyanova752@gmail.com', 'BeDBQtx2Ci5ENCuM806FuDM1EX0x3pHyAeHyYLX5ne50o6pVdVnEnn2PNtdj'),
(3, 'Влас', 'Куколевский', 'VlasKukolevskiy49@gmail.com', 'R1nM66yzdo78gsXuyvEXJ3AG9BM3ZKFv9fpWwugH2kMaLeqUvh2uH4nn9701'),
(4, 'Владислава', 'Маслова', 'VladislavaMaslova726@gmail.com', 'VKnkCu89vNFuWG9GQA2WV7wMn2tZQ056JG4b84uTPHa999C6ar02wHVA1gdf'),
(5, 'Клементина', 'Садовничая', 'KlementinaSadovnichaya351@gmail.com', '3uawjAq8KmFdyMGibY4tga8QLBxcCF1ENhxppzBMLqXx2KaW6Tpu1UFULcx5'),
(6, 'Лиана', 'Чудина', 'LianaChudina75@gmail.com', 'zaHPC7skuChFwFtqp5caBvqN1NqEwiY0UUPWswhAefa3yAduan87FkPMVG81'),
(7, 'Руфина', 'Кузнецова', 'RufinaKuznetsova596@gmail.com', 'D5PkDqwJX0PCJcn69qFk6V0rTfFxiHbTbpc619CGhiKp4UFqK2jY0JHK9qBy'),
(8, 'Агния', 'Медведева', 'AgniyaMedvedeva982@gmail.com', 'hHRfZZNiyH78eBhwsD603hn90bcTVQ1vEjqVkVzrW21e1CNwAt1Vs2KDqrcd'),
(9, 'Мирон', 'Мартын', 'MironMartyn713@gmail.com', 'PV3deqwQzHu518voa0fBt4QfnNATdpLikjqYp2YRa3RzXtj79DY88VJy9sPs'),
(10, 'Неонила', 'Снегова', 'NeonilaSnegova254@gmail.com', '5giGTeTZpGJedmU2u5M04TWd3z2ukYrxcbcEWGaQVWonR5BNfE2g7gt8tj29'),
(11, 'Кузьма', 'Новиков', 'KuzmaNovikov124@gmail.com', 'TPoNRYi0sGqMpmNDsZMpUAh3sAbFaGM6s86bnKNvuwdu7ZYYr0D0zF7skJAM'),
(12, 'Нифонт', 'Суворов', 'NifontSuvorov429@gmail.com', 'uEovd2YGNGHiry5WtybChQjNhF66wwAKqC29ejdwPEa3qMLaPvFV4VgaBvrH'),
(13, 'Галя ', 'Баранова', 'GalyaBaranova690@gmail.com', 'vmk4pevGdWsPjjMjf0fRoYJov5aUCtR2kAWUgzaWha5KxR8y715arDEZca8W'),
(14, 'Наталья', 'Дружинина', 'NatalyaDruzhinina637@gmail.com', 'LoZAU5rw1VpJUcdxvu3R8Gv72pxNg3Lq2hkKPFzvux9RPQAVmweGy6HYwze8'),
(15, 'Диана', 'Загитова', 'DianaZagitova512@gmail.com', 'z1G7hGsCwgJKmmnEMWNnuV70qDEn6EC3L3qyeeh4WE4UwLiqY0iTvxppD0ix'),
(16, 'Виктор', 'Ермолаев', 'ViktorErmolaev839@gmail.com', 'BucyTM7yFCDg5ybT9XxAUeZHND8BhRtgk1vHRDvTLkEdp1nrAdm6Fe9Mg19Y'),
(17, 'Нифонт', 'Захаров ', 'NifontZaharov261@gmail.com', '4iaqAUrT0BRK0q5EB3vNMTTq8xjsHTyzzoE1Twf76W59PFdsUpJ0mD9FQ0xN'),
(18, 'Гостомысл', 'Васильев ', 'GostomyslVasilev930@gmail.com', 'U3h4zi9MFtt0q7CNUr7kNuHgdFWa3Dxes3AN5onCUjJVLqpGRAcGnrJzBcV3'),
(19, 'Горислава', 'Сочинская', 'GorislavaSochinskaya758@gmail.com', 'aZoix5gPFTtXjFFqgVt4KrkQEhJ1m1ihzJ5kEovW8kc7QfawzHNYFcVrjj5V'),
(20, 'Мариетта', 'Денисова ', 'MariettaDenisova625@gmail.com', 'ut1vvQubLqBfYXrW9R6ZEHKq545ojC5Jv62csimxvNdW9LRgVVQoBhaQs93m'),
(21, 'Изяслав', 'Воронин ', 'IzyaslavVoronin961@gmail.com', 'KUCvWebFiP05VuycBboJLWfsHZEBciVQ3eAiXzy6NQZEvXZtjj5pi6BcyaG'),
(22, 'Мартын', 'Тихомиров ', 'MartynTihomirov18@gmail.com', '3HrRAYfZKXxXmRh6h37aRw2yFhiixQcCXureeVK8KCs0QaZnC3ZWm4s653mM'),
(23, 'Мирослава', 'Солнцева ', 'MiroslavaSolntseva400@gmail.com', 'TFjZT3eq0U4yfF0ZsKmhqcPJoF0A1Nv1NCDzDYvoyxxnYbnz02MWBJwNXZzi'),
(24, 'Людмила', 'Соболь ', 'LyudmilaSobol385@gmail.com', 'RqPVkjWyFe758v5vBMD0BZgcvmboQsHKQN2kbtY269sEurutu9X6pEqpaAzZ');

-- --------------------------------------------------------

--
-- Структура таблицы `students_groups`
--

CREATE TABLE `students_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `group_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students_groups`
--

INSERT INTO `students_groups` (`id`, `student_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 3),
(8, 8, 3),
(9, 9, 3),
(10, 10, 4),
(11, 11, 4),
(12, 12, 4),
(13, 13, 5),
(14, 14, 5),
(15, 15, 5),
(16, 16, 6),
(17, 17, 6),
(18, 18, 6),
(19, 19, 7),
(20, 20, 7),
(21, 21, 7),
(22, 22, 8),
(23, 23, 8),
(24, 24, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `students_phones`
--

CREATE TABLE `students_phones` (
  `id` bigint UNSIGNED NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students_phones`
--

INSERT INTO `students_phones` (`id`, `phone_number`, `student_id`) VALUES
(1, '38(390)991-34-27', 6),
(2, '38(6319)311-96-37', 15),
(3, '38(532)288-18-61', 20),
(4, '38(8420)966-16-64', 4),
(5, '38(7441)764-01-78', 3),
(6, '38(96)044-57-57', 5),
(7, '38(2388)357-70-89', 1),
(8, '38(5477)570-24-17', 1),
(9, '38(6443)771-57-41', 2),
(10, '38(213)996-66-82', 2),
(11, '38(858)286-73-99', 3),
(12, '38(70)458-98-03', 4),
(13, '38(46)033-93-47', 5),
(14, '38(92)685-83-43', 6),
(15, '38(029)179-48-87', 7),
(16, '38(451)957-10-31', 8),
(17, '38(65)907-31-93', 9),
(18, '38(5822)262-32-73', 10),
(19, '38(10)697-35-29', 11),
(20, '38(80)909-92-09', 12),
(21, '38(9715)125-95-89', 13),
(22, '38(4117)497-56-76', 14),
(23, '38(685)653-81-29', 17),
(24, '38(798)979-18-71', 18),
(25, '38(69)265-83-34', 19),
(26, '38(0029)585-28-48', 20),
(27, '38(1899)032-02-56', 21),
(28, '38(3018)182-00-79', 22),
(29, '38(079)507-50-36', 23),
(30, '38(566)334-34-23', 24);

-- --------------------------------------------------------

--
-- Структура таблицы `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(9, 'angular + react'),
(1, 'basics of programming'),
(6, 'C#'),
(7, 'Full Stack'),
(5, 'Java'),
(4, 'java script'),
(2, 'PHP'),
(8, 'php + laravel'),
(3, 'Python'),
(10, 'Web Design');

-- --------------------------------------------------------

--
-- Структура таблицы `subject_teacher`
--

CREATE TABLE `subject_teacher` (
  `id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subject_teacher`
--

INSERT INTO `subject_teacher` (`id`, `subject_id`, `teacher_id`) VALUES
(1, 2, 1),
(2, 1, 1),
(3, 2, 2),
(4, 3, 3),
(5, 4, 4),
(6, 4, 5),
(7, 5, 6),
(8, 6, 7),
(9, 7, 9),
(10, 8, 2),
(11, 9, 13),
(12, 10, 14),
(13, 10, 15),
(14, 10, 11),
(15, 6, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers_list`
--

CREATE TABLE `teachers_list` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers_list`
--

INSERT INTO `teachers_list` (`id`, `name`, `lastname`, `email`) VALUES
(1, 'Антон', 'Серяпов', 'antonSeriap@gmail.com'),
(2, 'Василий', 'Баженов', 'vasiaLOL@gmail.com'),
(3, 'Петр', 'Дударь', 'petyaASS@gmail.com'),
(4, 'Максим', 'Дорох', 'maksonchik123@gmail.com'),
(5, 'Владимир', 'Иванов', 'vovaksav1289@gmail.com'),
(6, 'Георгий', 'Рубинов', 'rubahuba124@gmail.com'),
(7, 'Статислав', 'Рукавишников', 'zozaaboza@gmail.com'),
(8, 'Николай', 'Сосников', 'susalobov1256@gmail.com'),
(9, 'Александр', 'Бошкарь', 'alexboha4567@gmail.com'),
(10, 'Сергей', 'Головко', 'golovachkin456@gmail.com'),
(11, 'Тимур', 'Бондарь', 'timaNeBel345@gmail.com'),
(12, 'Никита', 'Жоржинов', 'jojaNik234@gmail.com'),
(13, 'Артем', 'Данилко', 'temastail24@gmail.com'),
(14, 'Николай', 'Бужев', 'buzhaNIIIK12@gmail.com'),
(15, 'Ярослав', 'Белый', 'jarabelov567@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers_phones`
--

CREATE TABLE `teachers_phones` (
  `id` bigint UNSIGNED NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers_phones`
--

INSERT INTO `teachers_phones` (`id`, `phone_number`, `teacher_id`) VALUES
(1, '+38(095)786-95-81', 1),
(2, '+38(067)886-15-81', 1),
(3, '+38(095)096-95-82', 2),
(4, '+38(098)011-95-82', 2),
(5, '+38(095)023-95-82', 3),
(6, '+38(095)086-45-45', 3),
(7, '+38(095)090-75-82', 3),
(8, '+38(095)096-91-82', 4),
(9, '+38(067)899-95-82', 4),
(10, '+38(093)123-98-82', 5),
(11, '+38(093)903-98-82', 5),
(12, '+38(093)903-67-95', 6),
(13, '+38(093)003-67-95', 6),
(14, '+38(093)781-22-95', 7),
(15, '+38(095)999-22-95', 8),
(16, '+38(093)888-22-95', 9),
(17, '+38(093)111-22-95', 9),
(18, '+38(093)555-22-95', 10),
(19, '+38(093)445-22-95', 11),
(20, '+38(093)775-22-95', 12),
(21, '+38(093)911-22-95', 12),
(22, '+38(093)911-99-95', 12),
(23, '+38(093)911-99-00', 13),
(24, '+38(093)888-22-00', 13),
(25, '+38(093)008-22-00', 14),
(26, '+38(067)098-22-00', 14),
(27, '+38(067)238-22-00', 15),
(28, '+38(067)338-22-00', 15),
(29, '+38(093)118-22-00', 15),
(30, '+38(093)118-22-99', 10);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `audiences_list`
--
ALTER TABLE `audiences_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `audiences_list_audi_num_unique` (`audi_num`);

--
-- Индексы таблицы `groups_list`
--
ALTER TABLE `groups_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `graduation_date` (`graduation_date`),
  ADD KEY `audience_id` (`audience_id`),
  ADD KEY `subject_teacher_id` (`subject_teacher_id`);

--
-- Индексы таблицы `marks_and_comments`
--
ALTER TABLE `marks_and_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_group_id` (`student_group_id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD UNIQUE KEY `students_password_unique` (`password`);

--
-- Индексы таблицы `students_groups`
--
ALTER TABLE `students_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Индексы таблицы `students_phones`
--
ALTER TABLE `students_phones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_phones_phone_number_unique` (`phone_number`),
  ADD KEY `student_id` (`student_id`);

--
-- Индексы таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_name_unique` (`name`);

--
-- Индексы таблицы `subject_teacher`
--
ALTER TABLE `subject_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Индексы таблицы `teachers_list`
--
ALTER TABLE `teachers_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_list_email_unique` (`email`);

--
-- Индексы таблицы `teachers_phones`
--
ALTER TABLE `teachers_phones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_phones_phone_number_unique` (`phone_number`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `audiences_list`
--
ALTER TABLE `audiences_list`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `groups_list`
--
ALTER TABLE `groups_list`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `marks_and_comments`
--
ALTER TABLE `marks_and_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `students_groups`
--
ALTER TABLE `students_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `students_phones`
--
ALTER TABLE `students_phones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `subject_teacher`
--
ALTER TABLE `subject_teacher`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `teachers_list`
--
ALTER TABLE `teachers_list`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `teachers_phones`
--
ALTER TABLE `teachers_phones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `groups_list`
--
ALTER TABLE `groups_list`
  ADD CONSTRAINT `groups_list_ibfk_1` FOREIGN KEY (`audience_id`) REFERENCES `audiences_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `groups_list_ibfk_2` FOREIGN KEY (`subject_teacher_id`) REFERENCES `subject_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `marks_and_comments`
--
ALTER TABLE `marks_and_comments`
  ADD CONSTRAINT `marks_and_comments_ibfk_1` FOREIGN KEY (`student_group_id`) REFERENCES `students_groups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `students_groups`
--
ALTER TABLE `students_groups`
  ADD CONSTRAINT `students_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `students_groups_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `students_phones`
--
ALTER TABLE `students_phones`
  ADD CONSTRAINT `students_phones_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `subject_teacher`
--
ALTER TABLE `subject_teacher`
  ADD CONSTRAINT `subject_teacher_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `subject_teacher_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `teachers_phones`
--
ALTER TABLE `teachers_phones`
  ADD CONSTRAINT `teachers_phones_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
