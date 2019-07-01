
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `optionA` varchar(50) NOT NULL,
  `optionB` varchar(50) NOT NULL,
  `optionC` varchar(50) NOT NULL,
  `optionD` varchar(50) NOT NULL,
  `answer` varchar(5) NOT NULL,
  `weightage` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `question`, `optionA`, `optionB`, `optionC`, `optionD`, `answer`, `weightage`) VALUES
(1, 'On which of the following systems of Hindu Philosophy , Shankaracharya wrote commentary in 9th century AD?', 'Sankhya', 'Vaisheshika', 'Yoga', 'Uttarmimansa', 'D', 1),
(2, 'Who was the first Indian ruler who had territory outside India?', 'Ashoka', 'Chandragupta Maurya', 'Kanishka', 'Huvishka', 'C', 2),
(3, 'Which among the following books was authored by Mahatma Gandhi?', 'Hindu View of Life', 'Hind Swaraj', 'Discovery of India', 'My Truth', 'B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiznames`
--

CREATE TABLE `quiznames` (
  `id` int(11) NOT NULL,
  `quizName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiznames`
--

INSERT INTO `quiznames` (`id`, `quizName`) VALUES
(1, 'science'),
(2, 'history');

-- --------------------------------------------------------

--
-- Table structure for table `science`
--

CREATE TABLE `science` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `optionA` varchar(50) NOT NULL,
  `optionB` varchar(50) NOT NULL,
  `optionC` varchar(50) NOT NULL,
  `optionD` varchar(50) NOT NULL,
  `answer` varchar(5) NOT NULL,
  `weightage` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `science`
--

INSERT INTO `science` (`id`, `question`, `optionA`, `optionB`, `optionC`, `optionD`, `answer`, `weightage`) VALUES
(1, 'Which of the following is the first calculating device?', 'Abacus', 'Calculator', 'Turing Machine', 'Pascaline', 'A', 1),
(2, 'Who among the following considered as the \'father of artificial intelligence\'?', 'Charles Babbage', 'Lee De Forest', 'John McCarthy', 'JP Eckert', 'C', 2),
(3, 'Who among the following used the term computer worm for the first time?', 'John Brunner', 'Alan Turing', 'John McCarthy', 'JP Eckert', 'A', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiznames`
--
ALTER TABLE `quiznames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `science`
--
ALTER TABLE `science`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiznames`
--
ALTER TABLE `quiznames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `science`
--
ALTER TABLE `science`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
