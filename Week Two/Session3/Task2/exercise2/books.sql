-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-04-29 05:18:49
-- 服务器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `books`
--

-- --------------------------------------------------------

--
-- 表的结构 `books`
--

CREATE TABLE `books` (
  `cover` varchar(30) NOT NULL,
  `BookID` int(150) NOT NULL,
  `Title` text NOT NULL,
  `Author` text NOT NULL,
  `Publisher` text NOT NULL,
  `Publication` date NOT NULL,
  `Subject` text NOT NULL,
  `ISBN` varchar(100) NOT NULL,
  `Review` text NOT NULL,
  `Link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `books`
--

INSERT INTO `books` (`cover`, `BookID`, `Title`, `Author`, `Publisher`, `Publication`, `Subject`, `ISBN`, `Review`, `Link`) VALUES
('icons/1.jpeg', 1, 'A Tree Grows in Brooklyn', 'Betty Smith', ' Yilin Publishing House', '1943-00-00', 'Novel', ' 9787544709422', 'The novel tells the story of Francis, a young girl living in Brooklyn, a slum in the United States, who suffered from family misfortunes, discrimination from classmates, and social injustice during her growth. Growing up from a poor family, she struggled with her tenacious will to catch up with her dream, and finally walked out of the slums and admitted to college. The novel highlights that ordinary people strive to pursue their dreams and face the sufferings of life.', 'https://www.amazon.cn/dp/B00K5K7AHG'),
('icons/2.jpeg', 2, 'To Kill a Mocking Bird', 'Harper Lee', 'Yilin Publishing House', '2012-09-01', 'Novel', '9787544722766', 'Growth is always an annoying proposition. Sometimes the growth will be very slow, sing Dingdong songs like a stream, and sometimes it is so sudden, and the head is covered like a rainstorm ... The three children experienced unexpected growth because of several injustices in the town-pain and Confusion, sadness and anger, but also tenderness and emotion. This is a growing classic of love and true knowledge', 'https://www.amazon.cn/dp/B06VSFXC4C/'),
('icons/3.jpeg', 3, 'The Moon and Six pence', 'William Somerset Maugham', 'Shanghai Translation Publishing House', '2006-08-00', 'foreign literature', '9787532739547', 'The work is based on the life of the French Impressionist painter Paul Gauguin. It depicts an ordinary London stockbroker, Strickland, who suddenly caught the magic of art, abandoned his wife, abandoned his son, and abandoned others. A happy life, go to the island of Tahiti in the South Pacific, write your own brilliant life with a round pen, and inject the value of life into the story of the gorgeous canvas', 'https://www.amazon.cn/dp/B06XXRNFZ9/'),
('icons/4.jpeg', 4, 'The Meditations', 'Marcus Aurelius', 'Jiangsu Literature and Art Publishing House', '2008-00-00', 'books', '9787539929071', '\"Contemplation\" is a personal philosophical thinking handed down from the ancient Roman emperor Marco Aurelius in the late 2nd century AD, which mainly considers life ethics and natural philosophy; it is a book written by Aurelius for himself Thought prose collection. This twelve-volume dialogue with himself, most of which he wrote in Saddle Horse Lawton, is a milestone in Stoic philosophy (Stoic philosophy)', 'https://www.amazon.cn/dp/B07BRRJ9GT/'),
('icons/5.jpeg', 5, 'The Painted Veil', 'William Somerset Maugham', 'Jiangxi People\'s Publishing House', '2016-04-00', 'Publishing / Fiction', '9787210082835', 'Katie couldn\'t figure it out, did her husband discover the secrets of her derailment-the turning of the door handle during cheating, the words that meant something during dinner, and the sudden decision to take her to the place of cholera? Let Katie\'s nerves tighten. Finally, she could not bear it, and she planned to show off and go to her beloved lover after divorce. However, the veil was lifted, and the truth of love and the meaning of life shattered her innocence. Maugham portrayed a woman\'s depravity and awakening in the way he was calm and almost mean-in the world of two people, she can only choose to love him or lose him to fill the emptiness of the soul; but when she is In a more vast world, after witnessing the cruelty of life and the glory of humanity, I truly gained the peace of mind and redemption of self\r\n', 'https://www.amazon.cn/dp/B01F84VXEY/'),
('icons/6.jpeg', 6, 'My dear sweet orange tree', 'Jose Mauro Devas Concerlos', 'Tiantian Publishing House', '2010-06-00', 'Children\'s Literature / Family Education', '9787501602933', 'This is a children\'s novel with a fairly autobiographical character. The writer accurately ?simulated? the tone of a five-year-old boy, recording a warm and sad piece of life. Five-year-old Ze Ze is clever and precocious. This boy with a sensitive nature, likes movies in the American West, likes to sing. He always arranges the unsatisfactory and wronged in his \"fantasy world\". He even found a \"talking\" \"Sweet Orange Tree\", whenever he was punished, he went to chat with the sweet orange tree ... until one day, he found \"the person he likes most in this world\"-Lao Portuguese. Lao Portuguese replaced the \"little sweet orange tree\" and became the object he most missed. He found that tenderness and love can also be felt in real life, but the bad news came suddenly: first, the small sweet orange tree was cut because of road construction, and then the old Portuguese suddenly encountered a car accident. The love in that fantasy world, the love in real life, suddenly left him.', 'https://www.amazon.cn/dp/B00DOPIBUO/'),
('icons/7.jpeg', 7, 'The Long night', 'Zijin Chen', 'Yunnan People\'s Publishing House', '2017-01-00', 'Suspense reasoning', '9787222143975', 'Domestic original reasoning god Zijin Chen, high IQ crime \"\" The King of Reasoning \"series, new work\r\nThe suspect murdered and threw a corpse, but was caught on the spot due to an accident. There were at least a few hundred witnesses at the scene, and the suspect confessed to the entire crime.\r\nPersonal evidence, material evidence, confession, evidence chain is complete. Just when the prosecution officially filed a public prosecution against the suspect, the case suddenly changed ...\r\nWhat shocking case is hidden behind this? In order to find out the truth, a prosecutor has spent countless years, including youth, career, reputation, future, family, etc., even including life.', 'https://www.amazon.cn/dp/B06XTGQNFZ/'),
('icons/8.jpeg', 8, 'Golden Pavilion Temple', 'Yukio Mishima', 'Shanghai Translation Publishing House', '2009-01-00', 'Novel', '9787532744565', '\"Golden Pavilion Temple\" was based on the real event of the 1950s of the Golden Pavilion monk Lin Yangxian set fire to the Golden Pavilion. According to Lin Yangxian, his criminal motive was jealousy of the beauty of the Golden Pavilion. \"Golden Pavilion\" was highly praised after its publication and won the 8th Yomiuri Literature Award', '0'),
('icons/9.jpeg', 9, 'Pride and Prejudice', 'Jane Austin', 'People\'s Literature Publishing House', '1993-07-00', 'Novel', '9787020040179', '\"Pride and Prejudice\" is Jane Austin\'s masterpiece, a classic novel describing love and marriage. Based on the enthusiasm of the hero and heroine Darcy and Elizabeth due to arrogance and prejudice, the work has written four marriages: Elizabeth and Darcy, Jane and Bentley, Lydia and Wickham, Charlotte and Collins. Elizabeth, Jane and Lydia are the three sisters of Bennett ?s five daughters, while Charlotte is their neighbor and friend of Elizabeth. The male protagonist Darcy and Bentley are friends and grew up with Wickham, while Collins is a distant relative of the Bennett family', 'https://www.amazon.cn/dp/B00CCWKHHU/'),
('icons/10.jpeg', 10, 'Endless Night', 'Agatha Christie', 'Nova publisher', '2014-04-01', 'Suspense reasoning', '9787513314206', 'The beautiful and peaceful Gypsy is rumored to be a cursed residence. Many unauthorized people will be killed in the accident, and no one can escape. However, the handsome and poor boy Mike still took a fancy to it, hoping to become the owner of it. He met and fell in love with Miss Richie Ellie here. They married here and settled here. But will that terrible curse let them go? One day, she rode out and did not return ...', 'https://www.amazon.cn/dp/B00T238N9Q/'),
('', 11, '', '', '', '0000-00-00', '', '', '', '');

--
-- 转储表的索引
--

--
-- 表的索引 `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
