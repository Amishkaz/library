-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: 172.31.35.226:3306
-- Generation Time: Feb 21, 2023 at 10:34 AM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` int NOT NULL,
  `bookName` text COLLATE utf8mb4_general_ci,
  `bookAuthor` text COLLATE utf8mb4_general_ci,
  `bookCatergory` text COLLATE utf8mb4_general_ci,
  `availability` varchar(2) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `bookName`, `bookAuthor`, `bookCatergory`, `availability`) VALUES
(2, 'The Witcher', 'Andrzej Sapkowski', 'Fantasy', 'y'),
(3, 'Harry Potter', 'J. K. Rowling', 'Fantasy', 'y'),
(4, 'Biohazard', 'Ken Alibek', 'Fantasy', 'y'),
(6, 'Beowulf', 'Unknown, Seamus Heaney', 'genre fiction', 'y'),
(7, 'Batman: Year One', 'Frank Miller, David Mazzucchelli, Richmond Lewis, Dennis O\'Neil', 'genre fiction', 'y'),
(8, 'Go Set a Watchman', 'Harper Lee', 'genre fiction', 'y'),
(9, 'When You Are Engulfed in Flames', 'David Sedaris', 'fiction', 'y'),
(10, 'Daughter of Smoke & Bone', 'Laini Taylor', 'genre fiction', 'y'),
(11, 'Red Queen', 'Victoria Aveyard', 'genre fiction', 'y'),
(12, 'The Power of Habit', 'Charles Duhigg', 'genre fiction', 'y'),
(13, 'Midnight in the Garden of Good and Evil', 'John Berendt', 'nonfiction', 'y'),
(14, 'Hopeless', 'Colleen Hoover', 'genre fiction', 'y'),
(15, 'A Little Princess', 'Frances Hodgson Burnett, Nancy Bond', 'genre fiction', 'y'),
(16, 'The Truth About Forever', 'Sarah Dessen', 'genre fiction', 'y'),
(17, 'The horse and his boy', 'C.S. Lewis', 'fiction', 'y'),
(18, 'Last Sacrifice ', 'Richelle Mead', 'genre fiction', 'y'),
(19, 'Little House on the Prairie', 'Laura Ingalls Wilder, Garth Williams', 'genre fiction', 'y'),
(20, 'The Velveteen Rabbit', 'Margery Williams Bianco, William   Nicholson', 'genre fiction', 'y'),
(21, 'Zen and the Art of Motorcycle Maintenance', 'Robert M. Pirsig', 'genre fiction', 'y'),
(22, 'The War of the Worlds', 'H.G. Wells, Arthur C. Clarke', 'genre fiction', 'y'),
(23, 'Pretty Little Liars', 'Sara Shepard', 'genre fiction', 'y'),
(24, 'Corduroy', 'Don Freeman', 'genre fiction', 'y'),
(25, 'The Omnivore\'s Dilemma', 'Michael Pollan', 'genre fiction', 'y'),
(26, 'Life After Life', 'Kate Atkinson', 'genre fiction', 'y'),
(27, 'The Rescue', 'Nicholas Sparks', 'genre fiction', 'y'),
(28, 'Needful Things', 'Stephen King', 'genre fiction', 'y'),
(29, 'Voyager', 'Diana Gabaldon', 'genre fiction', 'y'),
(31, 'Cujo', 'Stephen King', 'genre fiction', 'y'),
(32, 'The Virgin Suicides', 'Jeffrey Eugenides', 'genre fiction', 'y'),
(33, 'Dead to the World', 'Charlaine Harris', 'genre fiction', 'y'),
(34, 'Tess of the d\'Urbervilles: A Pure Woman Faithfully Presented', 'Thomas Hardy, Tim Dolin, Margaret R. Higonnet', 'nonfiction', 'y'),
(35, 'Madame Bovary', 'Gustave Flaubert, Margaret Mauldon, Malcolm Bowie, Mark Overstall', 'genre fiction', 'y'),
(36, 'The Phantom Tollbooth', 'Norton Juster, Jules Feiffer', 'genre fiction', 'y'),
(37, 'The Way of Kings', 'Brandon Sanderson', 'genre fiction', 'y'),
(38, 'Club Dead', 'Charlaine Harris', 'genre fiction', 'y'),
(39, 'It\'s Kind of a Funny Story', 'Ned Vizzini', 'nonfiction', 'y'),
(41, 'After You', 'Jojo Moyes', 'genre fiction', 'y'),
(42, 'The Language of Flowers', 'Vanessa Diffenbaugh', 'genre fiction', 'y'),
(43, 'Batman: The Dark Knight Returns', 'Frank Miller, Klaus Janson, Lynn Varley', 'genre fiction', 'y'),
(44, 'The Angel Experiment', 'James Patterson', 'genre fiction', 'y'),
(45, 'High Fidelity', 'Nick Hornby', 'genre fiction', 'y'),
(46, 'The Guardian', 'Nicholas Sparks', 'genre fiction', 'y'),
(47, 'Oryx and Crake', 'Margaret Atwood', 'genre fiction', 'y'),
(48, 'Men Are from Mars, Women Are from Venus Book of Days: 365 Inspirations to Enrich Your Relationships', 'John Gray', 'genre fiction', 'y'),
(49, 'Kitchen Confidential: Adventures in the Culinary Underbelly', 'Anthony Bourdain', 'genre fiction', 'y'),
(50, 'Timeline', 'Michael Crichton', 'genre fiction', 'y'),
(51, 'Candide', 'Voltaire', 'genre fiction', 'y'),
(52, 'Tuck Everlasting', 'Natalie Babbitt', 'nonfiction', 'y'),
(53, 'Christine', 'Stephen King, Marie Milpois', 'nonfiction', 'y'),
(54, 'Are You My Mother?', 'P.D. Eastman', 'genre fiction', 'y'),
(55, 'The Story of Art', 'E.H. Gombrich', 'genre fiction', 'y'),
(56, 'Scarlet', 'Marissa Meyer', 'genre fiction', 'y'),
(57, 'Rich Dad , Poor Dad', 'Robert T. Kiyosaki', 'genre fiction', 'y'),
(58, 'Silence ', 'Becca Fitzpatrick', 'genre fiction', 'y'),
(59, 'The Magicians', 'Lev Grossman', 'genre fiction', 'y'),
(60, 'ãƒ‡ã‚¹ãƒŽãƒ¼ãƒˆ #1 (Desu NÅto) Taikutsu (é€€å±ˆ)', 'Tsugumi Ohba, Takeshi Obata', 'genre fiction', 'y'),
(61, 'A Great and Terrible Beauty', 'Libba Bray', 'genre fiction', 'y'),
(62, 'Everything Is Illuminated', 'Jonathan Safran Foer', 'genre fiction', 'y'),
(63, 'The Bourne Supremacy', 'Robert Ludlum', 'genre fiction', 'y'),
(64, 'Easy', 'Tammara Webber', 'genre fiction', 'y'),
(65, 'David Copperfield', 'Charles Dickens, Jeremy Tambling', 'genre fiction', 'y'),
(66, 'The Absolutely True Diary of a Part-Time Indian', 'Sherman Alexie, Ellen Forney', 'genre fiction', 'y'),
(67, 'ÐœÐ°ÑÑ‚ÐµÑ€ Ð¸ ÐœÐ°Ñ€Ð³Ð°Ñ€Ð¸Ñ‚Ð°', 'Mikhail Bulgakov, Katherine Tiernan O\'Connor, Diana Burgin, Ellendea Proffer', 'genre fiction', 'y'),
(68, 'A Wizard of Earthsea', 'Ursula K. Le Guin', 'genre fiction', 'y'),
(69, 'Because of Winn-Dixie', 'Kate DiCamillo, Chris Sheban', 'genre fiction', 'y'),
(70, 'A Separate Peace', 'John Knowles', 'genre fiction', 'y'),
(71, 'The Rainmaker', 'John Grisham', 'genre fiction', 'y'),
(72, 'Don Quijote de La Mancha', 'Miguel de Cervantes Saavedra, Roberto GonzÃ¡lez EchevarrÃ­a, John Rutherford', 'genre fiction', 'y'),
(73, 'Assassin\'s Apprentice', 'Robin Hobb', 'genre fiction', 'y'),
(74, 'The Restaurant at the End of the Universe', 'Douglas Adams', 'genre fiction', 'y'),
(75, 'Torment', 'Lauren Kate', 'genre fiction', 'y'),
(76, 'The Tale of Peter Rabbit', 'Beatrix Potter', 'genre fiction', 'y'),
(77, 'The Silver Chair', 'C.S. Lewis, Pauline Baynes', 'genre fiction', 'y'),
(78, 'The Hero of Ages', 'Brandon Sanderson', 'nonfiction', 'y'),
(79, 'Girl, Interrupted', 'Susanna Kaysen', 'genre fiction', 'y'),
(80, 'Are You There, Vodka? It\'s Me, Chelsea', 'Chelsea Handler', 'genre fiction', 'y'),
(81, 'Jonathan Livingston Seagull', 'Richard Bach, Russell Munson', 'genre fiction', 'y'),
(82, 'City of Heavenly Fire', 'Cassandra Clare', 'genre fiction', 'y'),
(83, 'Love You Forever', 'Robert Munsch, Sheila McGraw', 'genre fiction', 'y'),
(84, 'Cell', 'Stephen King', 'genre fiction', 'y'),
(85, 'The Boys in the Boat: Nine Americans and Their Epic Quest for Gold at the 1936 Berlin Olympics', 'Daniel James Brown', 'genre fiction', 'y'),
(86, 'The Silmarillion', 'J.R.R. Tolkien, Christopher Tolkien, Ted Nasmith', 'genre fiction', 'y'),
(87, 'The Drawing of the Three', 'Stephen King', 'nonfiction', 'y'),
(88, 'The Forgotten Garden', 'Kate Morton', 'genre fiction', 'y'),
(89, 'Der ProzeÃŸ', 'Franz Kafka, Edwin Muir, Willa Muir, Max Brod', 'genre fiction', 'y'),
(90, 'This Lullaby', 'Sarah Dessen', 'genre fiction', 'y'),
(91, 'Plain Truth', 'Jodi Picoult', 'genre fiction', 'y'),
(92, 'Orange Is the New Black: My Year in a Women\'s Prison', 'Piper Kerman', 'fiction', 'y'),
(93, 'The Hound of the Baskervilles', 'Arthur Conan Doyle, Anne Perry', 'genre fiction', 'y'),
(94, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'genre fiction', 'y'),
(95, 'The Mists of Avalon', 'Marion Zimmer Bradley', 'genre fiction', 'y'),
(96, 'Are You There God? It\'s Me, Margaret', 'Judy Blume', 'genre fiction', 'y'),
(97, 'Nights in Rodanthe', 'Nicholas Sparks', 'genre fiction', 'y'),
(98, 'Mr. Mercedes', 'Stephen King', 'genre fiction', 'y'),
(99, 'All Together Dead', 'Charlaine Harris', 'genre fiction', 'y'),
(100, 'Midwives', 'Chris Bohjalian', 'genre fiction', 'y'),
(101, 'The Polar Express', 'Chris Van Allsburg', 'nonfiction', 'y'),
(102, 'The True Story of the Three Little Pigs', 'Jon Scieszka, Lane Smith', 'genre fiction', 'y'),
(103, 'Patriot Games', 'Tom Clancy', 'genre fiction', 'y'),
(104, 'Veronika decide morrer', 'Paulo Coelho, Margaret Jull Costa', 'genre fiction', 'y'),
(105, 'Lean In: Women, Work, and the Will to Lead', 'Sheryl Sandberg, Nell Scovell', 'genre fiction', 'y'),
(106, 'Dead as a Doornail ', 'Charlaine Harris', 'genre fiction', 'y'),
(107, 'Shatter Me (Shatter Me, #1)', 'Tahereh Mafi', 'fiction', 'y'),
(108, 'Starship Troopers', 'Robert A. Heinlein', 'genre fiction', 'y'),
(109, 'I\'ve Got Your Number', 'Sophie Kinsella', 'genre fiction', 'y'),
(110, 'Sofies Verden', 'Jostein Gaarder, Paulette MÃ¸ller', 'genre fiction', 'y'),
(112, 'The Martian Chronicles', 'Ray Bradbury', 'genre fiction', 'y'),
(113, 'A Visit From the Goon Squad', 'Jennifer Egan', 'genre fiction', 'y'),
(114, 'Heidi', 'Johanna Spyri, Angelo  Rinaldi, Beverly Cleary', 'genre fiction', 'y'),
(115, 'Prey', 'Michael Crichton', 'genre fiction', 'y'),
(116, 'The Last Battle', 'C.S. Lewis', 'genre fiction', 'y'),
(117, 'World Without End', 'Ken Follett', 'genre fiction', 'y'),
(118, 'Chosen: A House of Night Novel', 'P.C. Cast, Kristin Cast', 'fiction', 'y'),
(119, 'Slammed', 'Colleen Hoover', 'genre fiction', 'y'),
(120, 'Beastly (Beastly, #1, Kendra Chronicles, #1)', 'Alex Flinn', 'genre fiction', 'y'),
(121, 'Tales of Caunterbury', 'Geoffrey Chaucer, Nevill Coghill', 'genre fiction', 'y'),
(122, 'Baby Proof', 'Emily Giffin', 'nonfiction', 'y'),
(123, 'Inheritance', 'Christopher Paolini', 'nonfiction', 'y'),
(124, 'ã„ã¡ãã‚…ã†ã¯ã¡ã‚ˆã‚“ [Ichi-KyÅ«-Hachi-Yon]', 'Haruki Murakami, Jay Rubin, Philip Gabriel', 'genre fiction', 'y'),
(125, 'Uncle Tom\'s Cabin or Life Among the Lowly', 'Harriet Beecher Stowe', 'fiction', 'y'),
(126, 'Le FantÃ´me de l\'OpÃ©ra', 'Gaston Leroux, Alexander Teixeira de Mattos', 'genre fiction', 'y'),
(127, 'Definitely Dead (Sookie Stackhouse, #6)', 'Charlaine Harris', 'genre fiction', 'y'),
(128, 'Ensaio Sobre a Cegueira', 'JosÃ© Saramago, Giovanni Pontiero', 'genre fiction', 'y'),
(129, 'Freedom', 'Jonathan Franzen', 'genre fiction', 'y'),
(130, 'Crossed', 'Ally Condie', 'genre fiction', 'y'),
(131, 'I\'d Tell You I Love You, But Then I\'d Have to Kill You', 'Ally Carter', 'genre fiction', 'y'),
(132, 'The White Tiger', 'Aravind Adiga', 'genre fiction', 'y'),
(133, 'The Corrections', 'Jonathan Franzen', 'genre fiction', 'y'),
(134, 'Dreams from My Father', 'Barack Obama', 'nonfiction', 'y'),
(135, 'Congo', 'Michael Crichton', 'nonfiction', 'y'),
(136, 'Alexander and the Terrible, Horrible, No Good, Very Bad Day', 'Judith Viorst, Ray Cruz', 'genre fiction', 'y'),
(137, 'Interpreter of Maladies', 'Jhumpa Lahiri', 'genre fiction', 'y'),
(138, 'A People\'s History of the United States: 1492 to Present ', 'Howard Zinn', 'genre fiction', 'y'),
(139, 'Breakfast at Tiffany\'s', 'Truman Capote', 'genre fiction', 'y'),
(140, 'The Passage', 'Justin Cronin', 'genre fiction', 'y'),
(141, 'Anansi Boys', 'Neil Gaiman', 'nonfiction', 'y'),
(142, 'Along for the Ride', 'Sarah Dessen', 'genre fiction', 'y'),
(143, 'Everything I Never Told You', 'Celeste Ng', 'genre fiction', 'y'),
(144, 'La casa de los espÃ­ritus', 'Isabel Allende, Magda Bogin', 'genre fiction', 'y'),
(145, 'The Dead Zone', 'Stephen King', 'genre fiction', 'y'),
(146, 'The Mysterious Affair at Styles', 'Agatha Christie, Î¡Î¿Î¶Î¯Ï„Î± Î£ÏŽÎºÎ¿Ï…', 'genre fiction', 'y'),
(147, 'Murder in the Calais Coach', 'Agatha Christie', 'genre fiction', 'y'),
(148, 'Americanah', 'Chimamanda Ngozi Adichie', 'genre fiction', 'y'),
(149, 'Suzanne\'s Diary for Nicholas', 'James Patterson', 'genre fiction', 'y'),
(150, 'Firestarter', 'Stephen King', 'genre fiction', 'y'),
(151, 'Entwined with You', 'Sylvia Day', 'genre fiction', 'y'),
(152, 'Born to Run: A Hidden Tribe, Superathletes, and the Greatest Race the World Has Never Seen', 'Christopher McDougall', 'genre fiction', 'y'),
(153, 'The Storied Life of A.J. Fikry', 'Gabrielle Zevin', 'genre fiction', 'y'),
(154, 'Mad About Madeline', 'Ludwig Bemelmans', 'genre fiction', 'y'),
(155, 'Think and Grow Rich', 'Napoleon Hill', 'genre fiction', 'y'),
(156, 'Little House In The Big Woods', 'Laura Ingalls Wilder, Garth Williams', 'genre fiction', 'y'),
(157, 'Jonathan Strange & Mr Norrell', 'Susanna Clarke', 'genre fiction', 'y'),
(158, 'A Bend in the Road', 'Nicholas Sparks', 'genre fiction', 'y'),
(159, 'The House of Hades', 'Rick Riordan', 'nonfiction', 'y'),
(160, 'Gone', 'Michael  Grant', 'genre fiction', 'y'),
(161, 'The Wedding', 'Nicholas Sparks', 'genre fiction', 'y'),
(163, 'Under the Banner of Heaven: A Story of Violent Faith', 'Jon Krakauer', 'genre fiction', 'y'),
(164, 'Beautiful Ruins', 'Jess Walter', 'genre fiction', 'y'),
(165, 'The Audacity of Hope: Thoughts on Reclaiming the American Dream', 'Barack Obama', 'genre fiction', 'y'),
(166, 'On Writing: A Memoir of the Craft', 'Stephen King', 'genre fiction', 'y'),
(167, 'Firefly Lane', 'Kristin Hannah', 'genre fiction', 'y'),
(168, 'Sphere', 'Michael Crichton', 'genre fiction', 'y'),
(169, 'Love the One You\'re With', 'Emily Giffin', 'genre fiction', 'y'),
(170, 'The Silkworm', 'Robert Galbraith, J.K. Rowling', 'genre fiction', 'y'),
(171, 'The Vampire Lestat', 'Anne Rice', 'genre fiction', 'y'),
(172, 'State of Wonder', 'Ann Patchett', 'genre fiction', 'y'),
(173, 'The Silver Linings Playbook', 'Matthew Quick', 'genre fiction', 'y'),
(174, 'Vingt Mille Lieues Sous les Mers', 'Jules Verne, Anthony Bonner', 'genre fiction', 'y'),
(175, 'The Constant Princess', 'Philippa Gregory', 'genre fiction', 'y'),
(176, 'Mrs Dalloway', 'Virginia Woolf, Maureen Howard', 'genre fiction', 'y'),
(177, 'HundraÃ¥ringen som klev ut genom fÃ¶nstret och fÃ¶rsvann', 'Jonas Jonasson, Rod Bradbury', 'genre fiction', 'y'),
(178, 'Bag of Bones', 'Stephen King', 'genre fiction', 'y'),
(179, 'The Cider House Rules', 'John Irving', 'genre fiction', 'y'),
(180, 'Thinner', 'Richard Bachman, Stephen King', 'genre fiction', 'y'),
(181, 'Le tour du monde en quatre-vingts jours', 'Jules Verne, Michael Glencross, Brian W. Aldiss', 'genre fiction', 'y'),
(182, 'Walk Two Moons', 'Sharon Creech', 'nonfiction', 'y'),
(183, 'Onze minutos', 'Paulo Coelho, Margaret Jull Costa', 'genre fiction', 'y'),
(184, 'Nine Stories', 'J.D. Salinger', 'genre fiction', 'y'),
(185, 'Julie & Julia: 365 Days, 524 Recipes, 1 Tiny Apartment Kitchen', 'Julie Powell', 'nonfiction', 'y'),
(186, 'Unwind', 'Neal Shusterman', 'genre fiction', 'y'),
(187, 'Drums of Autumn (Outlander, #4)', 'Diana Gabaldon', 'nonfiction', 'y'),
(188, 'Prodigy', 'Marie Lu', 'genre fiction', 'y'),
(189, 'The Tragedie of King Lear', 'William Shakespeare', 'genre fiction', 'y'),
(190, 'Death of a Salesman', 'Arthur Miller', 'genre fiction', 'y'),
(191, 'The Choice', 'Nicholas Sparks', 'genre fiction', 'y'),
(193, 'The Sound and the Fury', 'William Faulkner', 'genre fiction', 'y'),
(194, 'A New Earth: Awakening to Your Life\'s Purpose', 'Eckhart Tolle', 'genre fiction', 'y'),
(195, 'BLEACHâ€•ãƒ–ãƒªãƒ¼ãƒâ€•ã€€1', 'Tite Kubo', 'fiction', 'y'),
(197, 'The Shadow Rising ', 'Robert Jordan', 'nonfiction', 'y'),
(198, 'Shantaram', 'Gregory David Roberts', 'genre fiction', 'y'),
(199, 'From Dead to Worse', 'Charlaine Harris', 'genre fiction', 'y'),
(200, 'The Waste Lands', 'Stephen King, Ned Dameron', 'genre fiction', 'y'),
(201, 'The Bone Collector', 'Jeffery Deaver', 'genre fiction', 'y'),
(202, 'Der Vorleser', 'Bernhard Schlink, Carol Brown Janeway', 'genre fiction', 'y'),
(203, 'Brown Bear, Brown Bear, What Do You See?', 'Bill Martin Jr., Eric Carle', 'genre fiction', 'y'),
(204, 'Hyperion', 'Dan Simmons', 'genre fiction', 'y'),
(205, 'The Pearl of the World', 'John Steinbeck', 'genre fiction', 'y'),
(206, 'The Exorcist', 'William Peter Blatty', 'genre fiction', 'y'),
(207, 'The Short Second Life of Bree Tanner', 'Stephenie Meyer', 'genre fiction', 'y'),
(208, 'Snow Falling on Cedars', 'David Guterson', 'genre fiction', 'y'),
(209, 'Roots', 'Alex Haley', 'genre fiction', 'y'),
(210, 'Batman: The Killing Joke ', 'Alan Moore, Brian Bolland, Tim Sale', 'genre fiction', 'y'),
(211, 'Invisible Man', 'Ralph Ellison', 'genre fiction', 'y'),
(212, 'A Long Way Gone. Memoirs of a Boy Soldier', 'Ishmael Beah', 'genre fiction', 'y'),
(213, 'Mrs. Frisby and the Rats of NIMH', 'Robert C. O\'Brien', 'genre fiction', 'y'),
(214, 'Different Seasons', 'Stephen King', 'genre fiction', 'y'),
(215, 'The Little House Collection', 'Laura Ingalls Wilder, Garth Williams', 'genre fiction', 'y'),
(216, 'The Girls\' Guide to Hunting and Fishing', 'Melissa Bank', 'nonfiction', 'y'),
(217, 'Wool Omnibus', 'Hugh Howey', 'genre fiction', 'y'),
(218, 'Lamb: The Gospel According to Biff, Christ\'s Childhood Pal', 'Christopher Moore', 'genre fiction', 'y'),
(219, 'The Power of Now', 'Eckhart Tolle', 'genre fiction', 'y'),
(220, 'Let\'s Pretend This Never Happened (A Mostly True Memoir)', 'Jenny  Lawson', 'genre fiction', 'y'),
(221, 'The Lies of Locke Lamora', 'Scott Lynch', 'genre fiction', 'y'),
(222, 'Sabriel', 'Garth Nix', 'genre fiction', 'y'),
(223, 'Dead and Gone', 'Charlaine Harris', 'genre fiction', 'y'),
(224, 'The Storyteller', 'Jodi Picoult', 'genre fiction', 'y'),
(225, 'Obsidian', 'Jennifer L. Armentrout', 'genre fiction', 'y'),
(226, 'Life, the Universe and Everything', 'Douglas Adams', 'genre fiction', 'y'),
(227, 'Crown of Midnight', 'Sarah J. Maas', 'genre fiction', 'y'),
(228, 'Scott Pilgrim, Volume 1: Scott Pilgrim\'s Precious Little Life', 'Bryan Lee O\'Malley', 'genre fiction', 'y'),
(229, 'Half Broke Horses: A True Life Novel', 'Jeannette Walls', 'genre fiction', 'y'),
(230, 'Mort', 'Terry Pratchett', 'genre fiction', 'y'),
(231, 'The Iron King (The Iron Fey, #1) ', 'Julie Kagawa', 'genre fiction', 'y'),
(232, 'Lonesome Dove', 'Larry McMurtry', 'genre fiction', 'y'),
(233, 'Stiff: The Curious Lives of Human Cadavers', 'Mary Roach', 'nonfiction', 'y'),
(234, 'Bloodlines', 'Richelle Mead', 'genre fiction', 'y'),
(235, 'Ender\'s Shadow', 'Orson Scott Card', 'nonfiction', 'y'),
(236, 'Twenties Girl', 'Sophie Kinsella', 'genre fiction', 'y'),
(237, 'Schindler\'s Ark', 'Thomas Keneally', 'genre fiction', 'y'),
(238, 'The Bluest Eye', 'Toni Morrison', 'genre fiction', 'y'),
(239, 'The White Queen', 'Philippa Gregory', 'genre fiction', 'y'),
(240, 'The Autobiography of Malcolm X', 'Malcolm X, Alex Haley', 'nonfiction', 'y'),
(241, 'Preludes & Nocturnes', 'Neil Gaiman, Sam Kieth, Mike Dringenberg, Malcolm Jones III, Todd Klein, Karen  Berger', 'nonfiction', 'y'),
(242, 'Seabiscuit', 'Laura Hillenbrand', 'genre fiction', 'y'),
(243, 'Shutter Island', 'Dennis Lehane', 'genre fiction', 'y'),
(244, 'The Complete Sherlock Holmes', 'Arthur Conan Doyle', 'genre fiction', 'y'),
(245, 'The Tragedy of Julius Caesar', 'William Shakespeare, Roma Gill', 'genre fiction', 'y'),
(246, 'In the Garden of Beasts: Love, Terror, and an American Family in Hitler\'s Berlin', 'Erik Larson', 'genre fiction', 'y'),
(247, 'Î Î¿Î»Î¹Ï„ÎµÎ¯Î±', 'Plato, Desmond Lee', 'genre fiction', 'y'),
(248, 'The Taming of the Shrew', 'William Shakespeare', 'nonfiction', 'y'),
(249, 'Cress', 'Marissa Meyer', 'nonfiction', 'y'),
(250, 'Just Kids', 'Patti Smith', 'genre fiction', 'y'),
(252, 'Jemima J', 'Jane Green', 'genre fiction', 'y'),
(253, 'Notre-Dame de Paris', 'Victor Hugo, Walter J. Cobb', 'nonfiction', 'y'),
(254, 'A Fine Balance', 'Rohinton Mistry', 'genre fiction', 'y'),
(255, 'Calvin and Hobbes', 'Bill Watterson, G.B. Trudeau', 'nonfiction', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `burrowbook`
--

CREATE TABLE `burrowbook` (
  `BurrowId` int NOT NULL,
  `bookId` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `burrowDate` text COLLATE utf8mb4_general_ci NOT NULL,
  `returnDate` text COLLATE utf8mb4_general_ci NOT NULL,
  `returnStatus` varchar(2) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `userName` text COLLATE utf8mb4_general_ci NOT NULL,
  `userPassword` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`email`, `userName`, `userPassword`) VALUES
('admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `returnId` int NOT NULL,
  `burrowId` int NOT NULL,
  `returnDate` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `burrowbook`
--
ALTER TABLE `burrowbook`
  ADD PRIMARY KEY (`BurrowId`),
  ADD KEY `bookId` (`bookId`);

--
-- Indexes for table `logindetails`
--
ALTER TABLE `logindetails`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`returnId`),
  ADD KEY `burrowId` (`burrowId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1077;

--
-- AUTO_INCREMENT for table `burrowbook`
--
ALTER TABLE `burrowbook`
  MODIFY `BurrowId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `returnbook`
--
ALTER TABLE `returnbook`
  MODIFY `returnId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `burrowbook`
--
ALTER TABLE `burrowbook`
  ADD CONSTRAINT `burrowbook_ibfk_1` FOREIGN KEY (`bookId`) REFERENCES `books` (`bookId`);

--
-- Constraints for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD CONSTRAINT `returnbook_ibfk_1` FOREIGN KEY (`burrowId`) REFERENCES `burrowbook` (`BurrowId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
