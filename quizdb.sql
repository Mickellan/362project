-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 25, 2025 at 03:23 AM
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
-- Database: `quizdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option_text` varchar(255) DEFAULT NULL,
  `personality_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `personality_type`) VALUES
(1, 1, 'Influencer', 'Modern'),
(2, 1, 'Flipping Burgers', 'Spongebob'),
(3, 1, 'Milkman', 'Conversation Pit'),
(4, 1, 'Receptionist', 'Minimalist'),
(5, 2, 'Baggy Jeans', 'Modern'),
(6, 2, 'Short Sleeve Shirt', 'Spongebob'),
(7, 2, 'Bell Bottoms', 'Conversation Pit'),
(8, 2, 'Plain White Tee', 'Minimalist'),
(9, 3, 'White and Square', 'Modern'),
(10, 3, 'A Pineapple', 'Spongebob'),
(11, 3, 'Retro', 'Conversation Pit'),
(12, 3, 'Brown Siding', 'Minimalist'),
(13, 4, 'Everything Everywhere All At Once', 'Modern'),
(14, 4, 'SpongeBob Movie', 'Spongebob'),
(15, 4, 'The Godfather', 'Conversation Pit'),
(16, 4, 'Forrest Gump', 'Minimalist'),
(17, 5, 'Hot and sunny', 'Summer'),
(18, 5, 'Crisp and cool', 'Fall'),
(19, 5, 'Mild and breezy', 'Spring'),
(20, 5, 'Cold and snowy', 'Winter'),
(21, 6, 'Lemonade', 'Summer'),
(22, 6, 'Pumpkin Spice Latte', 'Fall'),
(23, 6, 'Iced Tea', 'Spring'),
(24, 6, 'Hot Chocolate', 'Winter'),
(25, 7, 'Beach trip', 'Summer'),
(26, 7, 'Mountain cabin', 'Fall'),
(27, 7, 'Flower garden tour', 'Spring'),
(28, 7, 'Ski resort', 'Winter'),
(29, 8, '4th of July', 'Summer'),
(30, 8, 'Thanksgiving', 'Fall'),
(31, 8, 'Easter', 'Spring'),
(32, 8, 'Christmas', 'Winter'),
(41, 9, 'Jump in and figure it out on the way', 'SpongeBob'),
(42, 9, 'Analyze quietly and keep to yourself', 'Raven'),
(43, 9, 'Go with the flow and see what happens', 'Jake'),
(44, 9, 'Tackle it head-on and don’t back down', 'Buttercup'),
(45, 10, 'Making fun plans with friends', 'SpongeBob'),
(46, 10, 'Reading or chilling alone', 'Raven'),
(47, 10, 'Napping, snacks, and music', 'Jake'),
(48, 10, 'Doing something active or challenging', 'Buttercup'),
(49, 11, 'Burger and fries', 'SpongeBob'),
(50, 11, 'Herbal tea and dark chocolate', 'Raven'),
(51, 11, 'Bacon pancakes', 'Jake'),
(52, 11, 'Hot wings and a soda', 'Buttercup'),
(53, 12, 'Always cheerful and down for anything', 'SpongeBob'),
(54, 12, 'Mysterious but loyal', 'Raven'),
(55, 12, 'Funny and unexpectedly wise', 'Jake'),
(56, 12, 'Tough but secretly a softie', 'Buttercup'),
(57, 13, 'A) Chill and go-with-the-flow', 'Apple Juice'),
(58, 13, 'B) Lowkey chaotic but vibing', 'Grape Juice'),
(59, 13, 'C) Mysteriously energized with no explanation', 'Orange-Mango Fusion'),
(60, 13, 'D) Fluctuating between 0 and 100 like it’s a sport', 'Kelp Shake'),
(61, 14, 'A) Thought-out texts with emojis', 'Apple Juice'),
(62, 14, 'B) Voice messages full of side tangents', 'Grape Juice'),
(63, 14, 'C) Unhinged TikToks and reaction gifs', 'Orange-Mango Fusion'),
(64, 14, 'D) Highly specific references that only 2 people understand', 'Kelp Shake'),
(65, 15, 'A) Something everyone likes — chill pop or lo-fi', 'Apple Juice'),
(66, 15, 'B) Your favorite banger, regardless of genre', 'Grape Juice'),
(67, 15, 'C) A playlist called “✨This Makes Sense Somehow✨”', 'Orange-Mango Fusion'),
(68, 15, 'D) A chaotic mix with questionable transitions but immaculate vibes', 'Kelp Shake'),
(69, 16, 'A) Cozy sweater', 'Apple Juice'),
(70, 16, 'B) Rollerblades', 'Grape Juice'),
(71, 16, 'C) Shiny rock', 'Orange-Mango Fusion'),
(72, 16, 'D) Seashells', 'Kelp Shake'),
(73, 21, 'Plot to outsmart them.', 'Plankton'),
(74, 21, 'Build something ridiculous to defeat them.', 'Dr. Doofenshmirtz'),
(75, 21, 'Use wealth and power to control the outcome.', 'Mr. Burns'),
(76, 21, 'Get flashy and out-tech them.', 'Vector'),
(77, 22, 'Obsession with success.', 'Plankton'),
(78, 22, 'The need to prove your genius.', 'Dr. Doofenshmirtz'),
(79, 22, 'Absolute control and domination.', 'Mr. Burns'),
(80, 22, 'The spotlight and recognition.', 'Vector'),
(81, 23, 'Too sneaky for your own good.', 'Plankton'),
(82, 23, 'Your plans always backfire.', 'Dr. Doofenshmirtz'),
(83, 23, 'Complete disregard for others.', 'Mr. Burns'),
(84, 23, 'Arrogance and overconfidence.', 'Vector'),
(85, 24, 'Steal your rival\'s greatest secret.', 'Plankton'),
(86, 24, 'Rename everything after yourself.', 'Dr. Doofenshmirtz'),
(87, 24, 'Raise taxes and own everything.', 'Mr. Burns'),
(88, 24, 'Flex with tech while taking over.', 'Vector'),
(89, 17, 'Bubbly and energetic', 'SpongeBob'),
(90, 17, 'Lowkey salty but smart', 'Squidward'),
(91, 17, 'Goofy and carefree', 'Patrick'),
(92, 17, 'Driven and no-nonsense', 'Sandy'),
(93, 18, 'A theme park with friends!', 'SpongeBob'),
(94, 18, 'A quiet art retreat', 'Squidward'),
(95, 18, 'Sleeping anywhere, honestly', 'Patrick'),
(96, 18, 'Mountain climbing or skydiving', 'Sandy'),
(97, 19, '“I’m ready!”', 'SpongeBob'),
(98, 19, '“Please. I have standards.”', 'Squidward'),
(99, 19, '“The inner machinations of my mind are an enigma.”', 'Patrick'),
(100, 19, '“Don’t mess with Texas.”', 'Sandy'),
(101, 20, 'Cheerful and loyal', 'SpongeBob'),
(102, 20, 'Grumpy but talented', 'Squidward'),
(103, 20, 'Hilarious and chill', 'Patrick'),
(104, 20, 'Smart, focused, and strong', 'Sandy'),
(105, 25, 'Unexpected and quirky', 'SpongeBob Popsicle'),
(106, 25, 'Dependable and chill', 'Vanilla Soft Serve'),
(107, 25, 'Strong but sweet', 'Rocky Road'),
(108, 25, 'Cool and sharp', 'Mint Chocolate Chip'),
(109, 26, 'Slightly melted but still thriving', 'SpongeBob Popsicle'),
(110, 26, 'Calm and composed', 'Vanilla Soft Serve'),
(111, 26, 'Melting down but pushing through', 'Rocky Road'),
(112, 26, 'Unbothered, breezy, and thriving', 'Mint Chocolate Chip'),
(113, 27, 'Making everyone laugh, even if it’s chaotic', 'SpongeBob Popsicle'),
(114, 27, 'Netflix and snacks', 'Vanilla Soft Serve'),
(115, 27, 'Adventure and good eats', 'Rocky Road'),
(116, 27, 'A walk in nature or a cool cafe', 'Mint Chocolate Chip'),
(117, 28, 'Shape-shifting', 'SpongeBob Popsicle'),
(118, 28, 'Invisibility', 'Vanilla Soft Serve'),
(119, 28, 'Indestructible', 'Rocky Road'),
(120, 28, 'Flying', 'Mint Chocolate Chip'),
(121, 32, 'A walking cartoon', 'Krabby Patty Gummy'),
(122, 32, 'Reliable and grounded', 'Reese\'s'),
(123, 32, 'Wild but fun', 'Sour Patch Kids'),
(124, 32, 'Laid-back and colorful', 'Lollipop'),
(125, 33, 'At a party', 'Krabby Patty Gummy'),
(126, 33, 'Cozy movie nights', 'Reese\'s'),
(127, 33, 'Pranks and hangouts', 'Sour Patch Kids'),
(128, 33, 'Road trips and beach days', 'Lollipop'),
(129, 34, 'Being fun without trying', 'Krabby Patty Gummy'),
(130, 34, 'Emotional depth', 'Reese\'s'),
(131, 34, 'Keeping people guessing', 'Sour Patch Kids'),
(132, 34, 'Easygoing energy', 'Lollipop'),
(133, 35, '“Be weird. Be proud.”', 'Krabby Patty Gummy'),
(134, 35, '“Peanutbutteeerrrrrr.”', 'Reese\'s'),
(135, 35, '“Chaos, but make it cute.”', 'Sour Patch Kids'),
(136, 35, '“Go with the flow.”', 'Lollipop'),
(137, 45, 'Quirky and fun', 'SpongeBob Mac & Cheese'),
(138, 45, 'Classic and chill', 'Spaghetti'),
(139, 45, 'Mysterious and unique', 'Ravioli'),
(140, 45, 'Structured and elegant', 'Penne'),
(141, 46, 'Comfort food with a playful twist', 'SpongeBob Mac & Cheese'),
(142, 46, 'A timeless classic', 'Spaghetti'),
(143, 46, 'An unexpected, flavorful surprise', 'Ravioli'),
(144, 46, 'Sharp and full of flavor', 'Penne'),
(145, 47, 'Gooey and cheesy', 'SpongeBob Mac & Cheese'),
(146, 47, 'Simple and savory', 'Spaghetti'),
(147, 47, 'Rich and filled with surprises', 'Ravioli'),
(148, 47, 'A perfectly balanced sauce', 'Penne'),
(149, 48, 'Fun, playful, and never dull', 'SpongeBob Mac & Cheese'),
(150, 48, 'Easygoing and reliable', 'Spaghetti'),
(151, 48, 'Mysterious with layers of depth', 'Ravioli'),
(152, 48, 'Cool, collected, and always on point', 'Penne');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `question` text NOT NULL,
  `question_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `question_order`) VALUES
(1, 1, 'What is your dream job?', 1),
(2, 1, 'What is your go to outfit?', 2),
(3, 1, 'Dream House?', 3),
(4, 1, 'Favorite movie?', 4),
(5, 2, 'What’s your favorite kind of weather?', 1),
(6, 2, 'Pick a drink:', 2),
(7, 2, 'What kind of vacation sounds best?', 3),
(8, 2, 'What\'s your favorite holiday?', 4),
(9, 3, 'What\'s your approach to a problem?', 1),
(10, 3, 'What’s your ideal weekend?', 2),
(11, 3, 'Pick a snack:', 3),
(12, 3, 'Your friend group would describe you as:', 4),
(13, 4, 'It’s a random Tuesday. How are you feeling?', 1),
(14, 4, 'What’s your preferred communication style?', 2),
(15, 4, 'You’re handed the aux cord. What do you play?', 3),
(16, 4, 'Pick a random item to spiritually attach yourself to:', 4),
(17, 5, 'What\'s your typical vibe?', 1),
(18, 5, 'Your dream vacation?', 2),
(19, 5, 'Favorite quote energy?', 3),
(20, 5, 'How do your friends describe you?', 4),
(21, 6, 'How do you react to competition?', 1),
(22, 6, 'What drives your actions?', 2),
(23, 6, 'What\'s your biggest flaw?', 3),
(24, 6, 'If you ruled the world, what would you do first?', 4),
(25, 7, 'How do your friends describe you?', 1),
(26, 7, 'What’s your vibe on a hot day?', 2),
(27, 7, 'What’s your ideal weekend?', 3),
(28, 7, 'Pick a superpower:', 4),
(32, 8, 'Your friends describe you as…', 1),
(33, 8, 'You’re best in…', 2),
(34, 8, 'Your biggest strength?', 3),
(35, 8, 'Pick a motto:', 4),
(45, 9, 'Pick your vibe:', 1),
(46, 9, 'Choose your ideal meal:', 2),
(47, 9, 'How do you like your sauce?', 3),
(48, 9, 'What’s your personality like?', 4);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `description`, `is_active`) VALUES
(1, 'Living Room Personality Quiz', NULL, 1),
(2, 'What Season Are You?', NULL, 1),
(3, 'Which Cartoon Character Are You?', NULL, 1),
(4, 'What Juice Are You?', NULL, 1),
(5, 'Which SpongeBob Character Are You?', 'Find out which Bikini Bottom resident matches your vibe!', 1),
(6, 'Who Is Your Enemy?', 'Find out which cartoon villain opposes you!', 1),
(7, 'Which Ice Cream Are You?', 'Find your frozen treat personality!', 1),
(8, 'What Candy Are You?', 'Discover your sweet (or sour) personality!', 1),
(9, 'Which Pasta Are You?', 'What kind of pasta matches your personality?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

CREATE TABLE `quiz_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `result` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_answers`
--

INSERT INTO `quiz_answers` (`id`, `user_id`, `quiz_id`, `result`, `created_at`) VALUES
(3, 2, 1, 'You are a Spongebob Living Room!', '2025-04-16 23:34:31'),
(4, 2, 1, 'You are a Spongebob Living Room!', '2025-04-17 00:03:29'),
(5, 2, 1, 'You are a Modern Living Room!', '2025-04-17 00:04:48'),
(6, 3, 1, 'You are a Spongebob Living Room!', '2025-04-17 00:55:08'),
(7, 3, 1, 'You have traits from multiple types: Modern, Spongebob, Conversation Pit, Minimalist', '2025-04-17 01:00:51'),
(11, 3, 1, 'You are a Modern Living Room!', '2025-04-19 23:35:07'),
(15, 3, 1, 'You are a Conversation Pit Living Room', '2025-04-19 23:36:51'),
(16, 3, 2, 'You\'re Spring! Cheerful, fresh, and full of life.', '2025-04-19 23:40:35'),
(17, 3, 3, 'You\'re Jake the Dog. Chill, wise, and always got a weirdly deep quote ready.', '2025-04-19 23:41:12'),
(18, 3, 3, 'You\'re SpongeBob! Full of energy, positivity, and chaotic good vibes.', '2025-04-19 23:42:23'),
(22, 3, 4, 'You\'re a mix of energies: Grape Juice, Orange-Mango Fusion', '2025-04-20 00:02:22'),
(23, 3, 4, 'You\'re a mix of energies: Grape Juice, Orange-Mango Fusion', '2025-04-20 00:06:22'),
(24, 3, 4, 'You’re strange. No one really knows what flavor you are, but they keep drinking. You give off ambiguous meme energy, talk in SpongeBob references, and somehow thrive in the chaos. Spiritually? You live in Bikini Bottom but only shop at Hot Topic.', '2025-04-20 00:06:35'),
(25, 3, 3, 'You\'re Raven. Quiet, smart, and surprisingly loyal underneath that sarcasm.', '2025-04-20 00:45:51'),
(26, 1, 1, 'You are a Conversation Pit Living Room', '2025-04-24 19:03:44'),
(27, 1, 2, 'You\'re Spring! Cheerful, fresh, and full of life.', '2025-04-24 19:29:30'),
(28, 1, 3, 'You\'re Jake the Dog. Chill, wise, and always got a weirdly deep quote ready.', '2025-04-24 19:57:37'),
(29, 1, 4, 'You bring drama in the best way. High energy, spontaneous, and probably convinced everyone to do karaoke at 2AM. Spiritually? You’re the personification of ✨main character energy✨.', '2025-04-24 20:00:33'),
(30, 1, 5, 'You\'re Squidward. You love peace, quiet, and secretly believe you\'re the only sane one.', '2025-04-25 01:00:25'),
(31, 1, 8, 'You\'re bold, unpredictable, and full of attitude. First you\'re sour, then you\'re sweet.', '2025-04-25 01:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `taken_at` datetime DEFAULT current_timestamp(),
  `result_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result_definitions`
--

CREATE TABLE `result_definitions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `result_description` text NOT NULL,
  `image_filename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result_definitions`
--

INSERT INTO `result_definitions` (`id`, `quiz_id`, `category_name`, `result_description`, `image_filename`) VALUES
(1, 1, 'Modern', 'You are a Modern Living Room!', 'modern.webp'),
(2, 1, 'Spongebob', 'You are a Spongebob Living Room!', 'SpongebobLivingRoom.png'),
(3, 1, 'Conversation Pit', 'You are a Conversation Pit Living Room', 'conversationpit.jpg'),
(4, 1, 'Minimalist', 'You are a Minimalist Living Room!', 'minimalist.webp'),
(5, 2, 'Summer', 'You are Summer!\r\nBarnacles, you\'re practically vibrating with summer excitement! Your idea of a perfect day involves waking up the entire neighborhood with foghorn-level enthusiasm, heading straight to Jellyfish Fields with Ol\' Reliable, and maybe trying to convince Squidward that interpretive dance is a valid beach activity. You soak up the sun (and seawater) like a porous yellow... well, you know. Your summer motto: \'Is mayonnaise a sunscreen?\' (Spoiler: It\'s not. Probably.)', 'summer.jpg'),
(6, 2, 'Fall', 'You\'re Fall! Thoughtful, calm, and cozy.', 'fall.jpg'),
(7, 2, 'Spring', 'You\'re Spring! Cheerful, fresh, and full of life.', 'spring.jpg'),
(8, 2, 'Winter', 'You\'re Winter! Quiet, cool, and elegant.', 'winter.jpg'),
(9, 3, 'SpongeBob', 'You\'re SpongeBob! Full of energy, positivity, and chaotic good vibes.', 'Spongebob.jpg'),
(10, 3, 'Raven', 'You\'re Raven. Quiet, smart, and surprisingly loyal underneath that sarcasm.', 'Raven.webp'),
(11, 3, 'Jake', 'You\'re Jake the Dog. Chill, wise, and always got a weirdly deep quote ready.', 'Jake.webp'),
(12, 3, 'Buttercup', 'You\'re Buttercup. Tough on the outside, but super loyal when it counts.', 'Buttercup.webp'),
(13, 4, 'Apple Juice', 'You are Apple Juice!\r\nYou’re classic, dependable, and lowkey comforting. People trust you with their secrets, and you always have tissues. Spiritually? You’re a well-organized Google Drive folder.', 'apple.avif'),
(14, 4, 'Grape Juice', 'You are Grape Juice!\r\nYou’re a little weird, kind of chaotic, and absolutely unforgettable. The vibes are immaculate, even if nobody knows why. Spiritually? You once accidentally started a group chat war.', 'grape.jpg'),
(15, 4, 'Orange-Mango Fusion', 'You are Orange-Mango Fusion Juice!\r\nYou bring drama in the best way. High energy, spontaneous, and probably convinced everyone to do karaoke at 2AM. Spiritually? You’re the personification of ✨main character energy✨.', 'orangemango.png'),
(16, 4, 'Kelp Shake', 'You are a Kelp Shake!\r\nUnhinged, oddly refreshing, and absolutely vibing in your own little kelp-flavored universe. Nobody gets it — but it works.', 'kelpshake.webp'),
(17, 6, 'Plankton', 'Plankton would be your enemy! He\'s manipulative, conniving, and will stop at nothing to get the Krabby Patty formula.', 'Plankton.jpg'),
(18, 6, 'Dr. Doofenshmirtz', 'Dr. Doofenshmirtz would be your enemy! He\'s an evil genius with an endless supply of ridiculous plans to conquer the world.', 'Dr.doofenshmirtz.jpg'),
(19, 6, 'Mr. Burns', 'Mr. Burns would be your enemy! He\'s a greedy, powerful businessman who will do anything to increase his wealth and control.', 'Mr.Burns.jpg'),
(20, 6, 'Vector', 'Vector would be your enemy! He\'s flashy, clever, and always plotting with techy gadgets to win.', 'Vector.jpg'),
(21, 7, 'SpongeBob Popsicle', 'You are a SpongeBob Popsicle!\r\nYou\'re chaotic good. People never know what version of you they\'ll get — but you\'re always a hit, even when a little wonky.', 'spongebob_popsicle.webp'),
(22, 7, 'Vanilla Soft Serve', 'You are Vanilla Soft Serve!\r\nYou\'re a classic — smooth, chill, and loved by everyone. You keep things cool even when life melts down.', 'vanilla_soft_serve.jpg'),
(23, 7, 'Rocky Road', 'You are Rocky Road!\r\nYou\'re sweet but tough. You’ve been through it, but you turn your rocky roads into something delicious.', 'rocky_road.jpg'),
(24, 7, 'Mint Chocolate Chip', 'You are Mint Chocolate Chip!\r\nYou’re refreshing and cool, but not everyone gets you. That’s okay — you’re for the bold and the brave.', 'mint_chip.webp'),
(25, 8, 'Krabby Patty Gummy', 'You are a Krabby Patty Gummy!\r\nYou\'re playful, nostalgic, and weirdly iconic. People love you even when you’re a little random.', 'krabby_gummy.jpg'),
(26, 8, 'Reese\'s', 'You are a Reese\'s Peanut Butter Cup!\r\nYou\'re dependable and rich—in flavor *and* personality. People always come back for more.', 'reeses.jpg'),
(27, 8, 'Sour Patch Kids', 'You are Sour Patch Kids!\r\nYou\'re bold, unpredictable, and full of attitude. First you\'re sour, then you\'re sweet.', 'sour_patch.jpg'),
(28, 8, 'Lollipop', 'You are a Lollipop!\r\nYou\'re classic and chill. You\'re here for a good time, and you’ve got long-lasting charm.', 'lollipop.webp'),
(29, 9, 'SpongeBob Mac & Cheese', 'You are SpongeBob Mac & Cheese!\r\nYou’re quirky, fun, and have a little bit of chaos inside. Like SpongeBob, you\'re always up for an adventure!', 'spongebob_mac_cheese.jpg'),
(30, 9, 'Spaghetti', 'You are Spaghetti!\r\nClassic, dependable, and always a good time. You’re a comfort-food icon with timeless charm.', 'spaghetti.jpg'),
(31, 9, 'Ravioli', 'You are Ravioli!\r\nYou’re full of surprises—soft on the outside, wild on the inside. A true mystery wrapped in carbs.', 'ravioli.jpg'),
(32, 9, 'Penne', 'You are Penne!\r\nYou’re structured, sharp, and great at holding things together. Low-key fancy, high-key fire.', 'penne.jpg'),
(33, 5, 'SpongeBob', 'You\'re SpongeBob! Endlessly enthusiastic, quirky, and always bringing the vibes.', 'spongebob2.jpg'),
(34, 5, 'Squidward', 'You\'re Squidward. You love peace, quiet, and secretly believe you\'re the only sane one.', 'squidward.webp'),
(35, 5, 'Patrick', 'You\'re Patrick — goofy, relaxed, and occasionally full of accidental wisdom.', 'patrick.jpg'),
(36, 5, 'Sandy', 'You\'re Sandy! Smart, bold, and not afraid to karate-chop your way through life.', 'sandy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$Bx2O2rZepVwWMV.DtgtBTeWM6hkZ9AJIc5YcLb1kTtEDfzhoEneli', 'admin'),
(2, 'smelly', '$2y$10$vwWP.1AcglHk.PT6yorPP.1GcjQe3IjOP5YboeFWSv3m29w8W6G0.', 'user'),
(3, 'TestUser1', '$2y$10$t1XUQS/aI.Qj9Z8ungQUKeQHWbgPs4rU7THZQJFOBqis8Xqoqrytu', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `result_definitions`
--
ALTER TABLE `result_definitions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quiz_category_unique` (`quiz_id`,`category_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_definitions`
--
ALTER TABLE `result_definitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD CONSTRAINT `quiz_answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `quiz_answers_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Constraints for table `result_definitions`
--
ALTER TABLE `result_definitions`
  ADD CONSTRAINT `result_definitions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
