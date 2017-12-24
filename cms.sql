-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2017 at 07:56 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'JavaScript '),
(3, 'PHP'),
(23, 'CSS3'),
(25, 'Angular'),
(26, 'OOP'),
(29, 'React');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 1, 'Alex Ticovschi', 'alexmticovschi@gmail.com', 'This is just some dummy text', 'approved', '2017-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(1, 2, 'You Don\'t Know JS', 'Kyle Simpson', '2017-12-22', 'js.jpg', ' No matter how much experience you have with JavaScript, odds are you don’t fully understand the language. This concise yet in-depth guide takes you inside scope and closures, two core concepts you need to know to become a more efficient and effective JavaScript programmer.                                                                                                        ', 'kyle, javascript, js', 0, 'draft'),
(2, 2, 'JavaScript: The Good Parts', 'Douglas Crockford', '2017-12-22', 'js_good_parts.jpg', ' Most programming languages contain good and bad parts, but JavaScript has more than its share of the bad, having been developed and released in a hurry before it could be refined. This authoritative book scrapes away these bad features to reveal a subset of JavaScript that\'s more reliable, readable, and maintainable than the language as a whole—a subset you can use to create truly extensible and efficient code.        ', 'javascript, crockford, programming', 0, 'draft'),
(3, 3, 'Modern PHP: New Features and Good Practices', 'Josh Lockhart', '2017-12-21', 'php2.jpg', 'PHP is experiencing a renaissance, though it may be difficult to tell with all of the outdated PHP tutorials online. With this practical guide, you’ll learn how PHP has become a full-featured, mature language with object-orientation, namespaces, and a growing collection of reusable component libraries.', 'oop, php, lockhart', 0, 'draft'),
(9, 2, 'JavaScript', 'Alex Ticovschi', '2017-12-22', 'javascript.jpg', 'JavaScript is one of the 3 languages all web developers must learn                        ', 'javascript, course, class, promises, functional programming', 4, 'draft'),
(12, 25, 'Ng-Book 2: The Complete Book on Angular 2', 'Nate Murray, Ari Lerner, Felipe Coury,  Carlos Taborda', '2017-12-22', 'ang2.jpg', ' What if you could master the entire framework - with solid foundations - in less time without beating your head against a wall? Imagine how quickly you could work if you knew the best practices and the best tools?                        ', 'angular, angular2, framework, js', 4, 'publish'),
(13, 29, 'Learning React: Functional Web Development with React and Flux', 'Alex Banks, Eve Porcello', '2017-12-22', 'reactjs.jpg', 'If you want to learn how to build efficient user interfaces with React, this is your book. Authors Alex Banks and Eve Porcello show you how to create UIs with this small JavaScript library that can deftly display data changes on large-scale, data-driven websites without page reloads.        ', 'reactjs, library, javascript, js', 4, 'published'),
(14, 1, 'Bootstrap ', 'Jake Spurlock', '2017-12-22', 'bootstrap.jpg', '                        Discover how easy it is to design killer interfaces and responsive websites with the Bootstrap framework. This practical book gets you started building pages with Bootstrap’s HTML/CSS-based tools and design templates right away.                 ', 'bootstrap, framework, css', 4, 'publish');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
