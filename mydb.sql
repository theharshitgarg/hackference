-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2018 at 05:13 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `source` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `source`, `tag`) VALUES
(1, 'Machine Learning Foundations: A Case Study Approach', 'Coursera', 'ML'),
(2, 'Machine Learning by Andrew Ng', 'Coursera', 'ML'),
(3, 'Mathematics for Machine Learning: Linear Algebra', 'Coursera', 'ML'),
(4, 'Applied Machine Learning in Python', 'Coursera', 'ML'),
(5, 'How Google does Machine Learning', 'Coursera', 'ML'),
(6, 'Applied AI with DeepLearning', 'Coursera', 'AI'),
(7, 'Machine Learning Fundamentals', 'edX', 'ML'),
(8, 'Business and Financial Modeling', 'Coursera', 'B'),
(9, 'Innovation: From Creativity to Entrepreneurship', 'Coursera', 'B'),
(10, 'Design strategy: Design thinking for business strategy and entrepreneurship', 'Coursera', 'B'),
(11, 'Entrepreneurship 2: Launching your Start-Up', 'Coursera', 'B'),
(12, 'Introduction to Artificial Intelligence (AI)', 'edX', 'AI'),
(13, 'Building Chatbots Powered by AI', 'edX', 'AI'),
(14, 'AI Leadership: Innovate with Platforms, Artificial Intelligence and Data', 'edX', 'AI'),
(15, 'Knowledge Management and Big Data in Business', 'edX', 'B'),
(16, 'Developing AI Vision Apps Using Microsoft Cognitive Services', 'edX', 'AI'),
(17, 'Cognitive Neuroscience Robotics – Part A', 'edX', 'AI'),
(18, 'Essential Math for Machine Learning: R Edition', 'edX', 'ML'),
(19, 'Fundamentals of Digital Marketing, Social Media, and E-Commerce', 'edX', 'B'),
(20, 'The Entrepreneurial Mindset', 'edX', 'B'),
(21, 'Deep Learning in Computer Vision', 'Coursera', 'CV'),
(22, 'Robotics: Perception', 'Coursera', 'CV'),
(23, 'Convolutional Neural Networks', 'Coursera', 'CV'),
(24, 'Convolutional Neural Networks', 'Coursera', 'ML'),
(25, 'Understanding Modern Finance', 'Coursera', 'F'),
(26, 'Finance for Non-Financial Professionals', 'Coursera', 'F'),
(27, 'Accounting and Finance', 'edX', 'F'),
(28, 'Behavioral Finance', 'edX', 'F'),
(29, 'Applied Data Science with Python', 'edX', 'DSC'),
(30, 'Open Source tools for Data Science', 'Coursera', 'DSC'),
(31, 'Executive Data Science', 'Coursera', 'DSC'),
(32, 'English for Journalism', 'Coursera', 'J'),
(33, 'Become a Journalist: Report the News!', 'Cousera', 'J'),
(34, 'Gathering and Developing the News', 'Coursera', 'J');

-- --------------------------------------------------------

--
-- Table structure for table `internships`
--

CREATE TABLE `internships` (
  `id` int(10) NOT NULL,
  `role` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `topic` varchar(250) NOT NULL,
  `tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `topic`, `tag`) VALUES
(1, 'Genetic Clustering of Species-Graph based Unsupervised Learning', 'ML'),
(2, 'Genetic Clustering of Species-Graph based Unsupervised Learning', 'AI'),
(3, 'Big Data and Smart Cities-Inclusion of Computer Science in Planning', 'BD'),
(4, 'Big Data and Smart Cities-Inclusion of Computer Science in Planning', 'DSC'),
(5, 'Operating System Design', 'OS'),
(6, 'Pulse Waveform Classification', 'DSY'),
(7, 'Pulse Waveform Classification', 'ML'),
(8, 'Corporate Network Graph Analysis', 'GT'),
(9, 'Real-Time Tracking of Non-Rigid Objects', 'CV'),
(10, 'Real-Time Tracking of Non-Rigid Objects', 'ML'),
(11, 'Movie Recommendation Engine', 'ML'),
(12, 'Movie Recommendation Engine', 'AI'),
(13, 'Improving Performance with MKL in SVMs', 'ML'),
(14, 'Unsupervised Video Surveillance', 'ML'),
(15, 'Unsupervised Video Surveillance', 'CV'),
(16, 'Using Structural Information for Object Recognition', 'CV'),
(17, 'Using Structural Information for Object Recognition', 'ML'),
(18, 'Movie Recommendation Using Social Networks', 'ML'),
(19, 'Movie Recommendation Using Social Networks', 'AI'),
(20, 'automated Network Backup?Restore System using java', 'CN'),
(21, 'interpreter for Prolog in SML using MLyacc and MLlex', 'CD'),
(22, 'interpreter for Prolog in SML using MLyacc and MLlex', 'AI'),
(23, 'Rule-based English-Hindi transliteration system', 'ML'),
(24, 'Rule-based English-Hindi transliteration system', 'CD'),
(25, '6-bit processor with controller', 'CA'),
(26, 'Real time peer-to-peer File Synchronization', 'CN'),
(27, 'Real time peer-to-peer File Synchronization', 'OS'),
(28, 'Real-time Android Multiplayer network game over Wi-Fi using UDP and TCP', 'CN'),
(29, 'Real-time Android Multiplayer network game over Wi-Fi using UDP and TCP', 'OS'),
(30, 'JavaScript app for Touch-Pad gesture-recognition', 'AI'),
(31, 'Real Time Stock value Recommendation', 'ML'),
(32, 'Real Time Stock value Recommendation', 'DSC'),
(33, 'Big Data & Map Reduce', 'BD'),
(34, 'Web IRC using sockets in Python', 'CN'),
(35, 'Chemical Inventory Database software', 'DBMS'),
(36, 'Online Complaint management system', 'DBMS'),
(37, 'Shopping experience using Kinect', 'AI'),
(38, 'Formally verified correctness of the STL implementation of red-black trees', 'DSA'),
(39, 'Formally verified correctness of the STL implementation of red-black trees', 'TCS'),
(40, 'Smart Performance monitoring tool using PMU', 'CA'),
(41, 'Smart Performance monitoring tool using PMU', 'ML'),
(42, 'Song Genre Classification based on Audio Spectrum', 'ML'),
(43, 'Song Genre Classification based on Audio Spectrum', 'AI'),
(44, 'Network simulation trace analysis with NS3', 'CN'),
(45, 'Indexing Schemes for Data Recording Systems', 'DBMS'),
(46, 'Implemented the stepped-merge algorithm  for merging B+ trees on disk ', 'DBMS'),
(47, 'Malware Classifier', 'CN'),
(48, 'Compiler for a new C-like language', 'TCS'),
(49, 'Compiler for a new C-like language', 'CD'),
(50, 'Timeline Consistent Distributed Database', 'CN'),
(51, 'Timeline Consistent Distributed Database', 'DBMS'),
(52, 'topic', 'tag'),
(53, 'Autonomous Tagging of Stack Overflow Questions', 'DL'),
(54, 'Sentence to Sentence Semantic Similarity', 'DL'),
(55, 'Sentence to Sentence Semantic Similarity', 'NLP'),
(56, 'Open Domain Question Answering', 'DL'),
(57, 'Open Domain Question Answering', 'NLP'),
(58, 'Biaxial RNN for Music Composition', 'DL');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` int(11) NOT NULL,
  `topic` varchar(250) NOT NULL,
  `tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`id`, `topic`, `tag`) VALUES
(1, 'topic', 'tag'),
(2, 'Combinatorial Optimization', 'TCS'),
(3, 'Combinatorics', 'TCS'),
(4, 'Complexity Theory', 'TCS'),
(5, 'Cryptography', 'TCS'),
(6, 'Geometric Algorithms', 'TCS'),
(7, 'Graph Theory', 'TCS'),
(8, 'Theory of code optimization', 'CD'),
(9, 'Optimizing and parallelizing compilers', 'CD'),
(10, 'Analysis and implementation of functional and logic programming languages', 'TCS'),
(11, 'Theory of programming languages', 'CD'),
(12, 'Object oriented', 'TCS'),
(13, 'temporal and parallel databases', 'DBMS'),
(14, 'Query optimization and transaction management', 'DBMS'),
(15, 'Real-time databases systems', 'DBMS'),
(16, 'indexing multidimensional data', 'DBMS'),
(17, 'Wide-area distributed database systems', 'DBMS'),
(18, 'data dissemination systems', 'DBMS'),
(19, 'data warehousing and database', 'DBMS'),
(20, 'Image processing', 'CV'),
(21, 'Pattern recognition and Computer vision', 'AI'),
(22, 'Intelligent systems and their applications–tutoring systems', 'AI'),
(23, 'Natural language understanding', 'AI'),
(24, 'Machine learning and Neural networks', 'AI'),
(25, 'Machine translation', 'AI'),
(26, 'Semantics Extraction', 'AI'),
(27, 'Document understanding', 'AI'),
(28, 'Cross lingual information Retrieval', 'AI'),
(29, 'Intelligent interfaces', 'ML'),
(30, 'Natural language understanding', 'ML'),
(31, 'Machine learning and Neural networks', 'ML'),
(32, 'Machine translation', 'ML'),
(33, 'Object oriented software development', 'SE'),
(34, 'Component architectures', 'CA'),
(35, 'Re-engineering of software', 'SE'),
(36, 'Systems analysis and design', 'CA'),
(37, 'MIS systems', 'SE'),
(38, 'Project management', 'SE'),
(39, 'Quality assurance', 'SE'),
(40, 'Formal specification', 'SE'),
(41, 'design and verification of hardware and software systems', 'CA'),
(42, 'Logic', 'DSY'),
(43, 'automata theory and their applications in reasoning about systems', 'CD'),
(44, 'Automated theorem proving', 'CD'),
(45, 'Performance Evaluation', 'SE'),
(46, 'fault tolerance and scalability issues in distributed systems', 'CN'),
(47, 'Distributed object-based systems', 'CN'),
(48, 'Programming models and Runtimes for generic agents', 'TCS'),
(49, 'Parallel Computing', 'DSA'),
(50, 'High performance cluster computing', 'DSA'),
(51, 'Distributed operating systems', 'OS'),
(52, 'Topology based problem detection and root cause isolation in enterprise environments', 'CN'),
(53, 'Performance modeling', 'CN'),
(54, 'analysis and design of wired and wireless networks', 'CN'),
(55, 'Implementation and verification of network security protocols', 'CN'),
(56, 'Deployment', 'CN'),
(57, 'data management', 'CN'),
(58, 'communication and energy-efficiency issues in Sensor Networks', 'CN'),
(59, 'Design of content distribution networks for data dissemination', 'CN'),
(60, 'Architectures and protocols for metro optical networks', 'CN'),
(61, 'Network algorithms', 'CN'),
(62, 'Utility and Pricing models', 'CN'),
(63, 'Quality-of-service protocols', 'CN'),
(64, 'Mobile Computing', 'CN'),
(65, 'Voice Routing', 'CN'),
(66, 'Voice over IP', 'CN'),
(67, 'RFID networks', 'CN'),
(68, 'Enterprise networks', 'CN'),
(69, 'Access and Broadband networks', 'CN'),
(70, 'Data integration models and algorithms', 'DSC'),
(71, 'Graphical models', 'DSC'),
(72, 'Information extraction and retrieval', 'DSC'),
(73, 'Forecasting and smart e-business', 'DSC'),
(74, 'Sensor and Bio-informatics data mining', 'DSC'),
(75, 'Text and Web data mining', 'DSC'),
(76, 'Integrating mining with relational DBMS', 'DSC'),
(77, 'Temporal mining', 'DSC'),
(78, 'Integrating mining with OLAP', 'DSC'),
(79, 'Computer graphics', 'CV'),
(80, 'Geometry processing', 'CV'),
(81, 'Image and signal processing', 'CV'),
(82, 'Computer vision and medical image computing', 'CV'),
(83, 'Rendering (photorealistic, non-photorealistic, real-time, immersive)', 'CV'),
(84, 'animation (character, physics-based)', 'CV'),
(85, 'sketch-based systems', 'CV'),
(86, 'augmented and virtual reality', 'CV'),
(87, 'camera and imaging systems', 'CV'),
(88, 'Image and geometry reconstruction', 'CV'),
(89, 'Restoration', 'CV'),
(90, 'compressed sensing', 'CV'),
(91, 'compression', 'CV'),
(92, 'pattern recognition', 'CV'),
(93, 'Localization', 'CV'),
(94, 'Segmentation', 'CV'),
(95, 'tracking; registration', 'CV'),
(96, 'quantization', 'CV'),
(97, 'shape analysis', 'CV'),
(98, 'group analysis retrieval', 'CV'),
(99, 'affective computing', 'CV'),
(100, 'Machine learning methods', 'CV'),
(101, 'deep learning', 'CV'),
(102, 'matrix analysis', 'CV'),
(103, 'statistical methods', 'CV'),
(104, 'Image processing', 'AI'),
(105, 'Pattern recognition and Computer vision', 'ML'),
(106, 'Intelligent systems and their applications–tutoring systems', 'ML'),
(107, 'Natural language understanding', 'ML'),
(108, 'Machine learning and Neural networks', 'ML'),
(109, 'Machine translation', 'ML'),
(110, 'Semantics Extraction', 'ML'),
(111, 'Document understanding', 'ML'),
(112, 'Cross lingual information Retrieval', 'ML'),
(113, 'Intelligent interfaces', 'AI'),
(114, 'Natural language understanding', 'AI'),
(115, 'Machine learning and Neural networks', 'AI'),
(116, 'Machine translation', 'AI'),
(117, 'Automatic speech recognition', 'DL'),
(118, 'Drug discovery and toxicology', 'DL'),
(119, 'Recommendation systems', 'DL');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) NOT NULL,
  `skill` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill`, `tag`) VALUES
(1, 'JavaScript', 'web'),
(2, 'HTML/CSS', 'web'),
(3, 'Java', 'gen'),
(4, 'c#', 'gen'),
(5, 'Python', 'gen'),
(6, 'PHP', 'web'),
(7, 'C++', 'gen'),
(8, 'C', 'gen'),
(9, 'TypeScript', 'web'),
(10, 'Ruby', 'web'),
(11, 'Django', 'web'),
(12, 'NodeJS', 'web'),
(13, 'AngularJS', 'web'),
(14, '.NET Core', 'web'),
(15, 'React', 'web'),
(16, 'Cordova', 'web'),
(17, 'Firebase', 'web'),
(18, 'Python', 'web'),
(19, 'Hadoop', 'db'),
(20, 'Spark', 'db'),
(21, 'MySQL', 'db'),
(22, 'SQL Server', 'db'),
(23, 'SQLite', 'db'),
(24, 'PostgreSQL', 'db'),
(25, 'MongoDB', 'db'),
(26, 'Oracle', 'db'),
(27, 'Redis', 'db'),
(28, 'Cassandra', 'db'),
(29, 'Tensorflow', 'ml'),
(30, 'Tensorflow', 'ai'),
(31, 'Keras', 'ml'),
(32, 'Keras', 'ai'),
(33, 'PyTorch', 'ml'),
(34, 'PyTorch', 'ai'),
(35, 'Caffe', 'ml'),
(36, 'Caffe', 'ai'),
(37, 'MySQL', 'db');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internships`
--
ALTER TABLE `internships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `internships`
--
ALTER TABLE `internships`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
