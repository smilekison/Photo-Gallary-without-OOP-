-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2018 at 05:23 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aid`
--

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `photo_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subheading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publishdate` date NOT NULL,
  `publish` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`photo_id`, `title`, `subheading`, `content`, `image`, `author`, `publishdate`, `publish`, `status`) VALUES
(1, 'assesment', 'AID assesment', 'NOTES:  \r\nThe usual University penalties apply for late submission.\r\nThis is an individual assessment.  Submission of an assessment indicates that you, as a student, have completed the assessment yourself and the work of others has been fully acknowledged and referenced.  \r\nBy submitting this assessed work, you are declaring that you are fit to submit, and you will therefore not normally be eligible to submit a request for mitigation for this work.', 'assesment.png', 'AID', '2018-10-30', 1, 'active'),
(2, 'check point 1', 'checkpoint1', 'This assignment is designed to assess your ability to select, use and evaluate a range of technologies, which can be used to develop web-based systems. This will be an opportunity for you to demonstrate your ability to work with a range of Internet technologies that will be introduced on the course.\r\n\r\nThe assignment will be in two sections. \r\n\r\nSection A: Interactive Internet Technologies:  \r\n\r\nMany websites have a common theme â€“ i.e. the ability for users to view information and actively participate in the website, for example by registering account details, which they can later amend securely. Administrators of these sites manage the content via a secure area. Modern sites are often enhanced through interactive interface technologies and frameworks. Many sites also integrate web APIs, requiring data to be transferred across the internet in a structured format.\r\n\r\nBy completing the requirements for section A, you will work towards offering similar facilities. NB This section should be completed without the use of an MVC framework.\r\n\r\nNB - The information used for this section is up to you. For example news items, brochure items (eg property, restaurants ), events, item reviews, questions/surveys/quiz, music clips,  etc.', 'checkpoint1.png', 'cp1', '2018-10-30', 1, 'active'),
(3, 'MVC', 'Model View Controller', 'Section B: Model View Controller \r\n\r\nYou should develop a Model, View, Controller application using a PHP Framework. Recommended frameworks to use would include CodeIgnitor, CakePHP, Laravel,  Zend,  or Symfony.  \r\n\r\nBasic â€“ MVC Installation and Display\r\n    â€¢ Install the framework on a web host (not localhost).\r\n    â€¢ Run through a â€˜Getting Startedâ€™ MVC tutorial, that includes database access and interaction using a form.\r\n    â€¢ Personalise the application through amending the data, views etc + any other information.\r\n\r\nAdvanced - Extend the tutorial \r\n    â€¢ Add functionality to existing controllers/views\r\n    â€¢ Add functionality via other controllers, models and views.\r\n    â€¢ Make use of available â€˜helpersâ€™\r\n    â€¢ Include authentication and authorisation \r\n\r\nGenerally credit will be given for the degree of enhancement and demonstration of ability with the MVC.\r\n\r\n\r\nDemonstration and Evaluation of Technologies(LO 2)\r\n\r\nDuring your demonstration you will be asked technical questions concerning the development of your site. This may involve a code review. \r\n\r\nYou will also be asked to critically evaluate technologies you have used. For example:\r\n        â—¦ Explain how the technology works\r\n        â—¦ Give any advantages and disadvantages of the technology\r\n        â—¦ What criteria you would use to evaluate the technology\r\n        â—¦ Explain why you have chosen the technology over other possible alternatives.', 'Screenshot from 2018-10-29 10-58-31.png', 'MVC', '2018-11-01', 1, 'active'),
(4, 'checkpoint 2', 'checkpoint 2', 'Interface Technologies and Frameworks\r\n\r\nBasic ITF Requirements: \r\n\r\n    â€¢ Ensure your site adheres to accepted style guidelines.\r\n\r\n    â€¢ Evidence of W3 validation (html &amp; css) for one or more of your pages.\r\n\r\n    â€¢ Evidence the use of html5 APIs (eg form tags, css, JS)\r\n\r\n    â€¢ Enhance your pages through the use of JQuery (eg â€˜hideâ€™, accordians, datepickers, menus, dialogs..). Integrate a more substantial plugin such as an image slider/gallery and/or wsywig editor\r\n\r\nAdvanced ITF Requirements: \r\n\r\n    â€¢ Incorporate Ajax(possibly with JQuery) into your assignment. For example, in a registration form, where details can be checked interactively.\r\n\r\n    â€¢ Use AngularJS to Interact with and display data from a MySQL database. Credit will be given for other uses of AngularJS.\r\n\r\n\r\nData Transfer and Web Services\r\n\r\nBasic Requirements\r\n\r\n    â€¢ Integrate the Google Maps API (eg on the about or contact pages). Credit will be given to the use of events, controls and overlays \r\n\r\n    â€¢ Use PHP to extract data from your database and generate an XML document. (this could be done in the context of creating a web service â€“ see Advanced)\r\n\r\n    â€¢ Use appropriate XSLT and/or PHP functionality to transform and display the xml document produced in part (a) appropriately.\r\n\r\n    â€¢ Use PHP to extract data from your database and encode as JSON. Provide a link to this document.\r\n\r\n    â€¢ Connect to a web service that can output JSON (eg above database output or weather underground) and format the output appropriately using client side processing technology such as JQuery.\r\n\r\nAdvanced Requirements: \r\n\r\n    â€¢ Create an integrated Google Custom search\r\n\r\n    â€¢ Access a Web Service through REST or SOAP Web APIs and display the data appropriately. This may require the use of server-side PHP Libraries.( eg Twitter, Flickr, Youtube, Google, Ebay) These may also entail the use of security systems such as OAuth.\r\n\r\n    â€¢ Build a REST web service which can provide output in either JSON or XML(or both). This should allow some sort of dynamic interaction. (eg course examples where Tour id or a place name are entered)\r\n\r\nCHECKPOINT 2 :  Submit to the MyBeckett, A link to a hosted website where the basic components of the Interface Technologies and Data Transfer/Web Services sections can be found.\r\nAll you will see on the MyBeckett is C-(not completed), B-(some attempt), or A-(fully met).  Please attend labs for feedback', 'checkpoint2.png', 'cp2', '2018-10-31', 1, 'active'),
(5, 'screenshot', 'Screenshot of assignment', 'FINAL SUBMISSION: Submits URLÂ LINKS to BOTH Part AÂ (Technologies)Â and Part B(MVC).Â Please include any necessary credentials for access in your submission\r\nAny indication where components are located would be helpful.\r\nNote carefully when your demonstration is scheduled for.Â The demonstration forms part of the formal examination process and attendance is mandatory in order to be graded.\r\n\r\n\r\n\r\nDemonstration and Evaluation of Technologies(LO 2)\r\n\r\nYou must attend a demonstration of your work for both sections A and B. During your demonstration you will be asked technical questions concerning the development of your site. This may involve a code review. \r\n\r\nYou will also be asked to critically evaluate technologies you have used. For example:\r\n-Explain how the technology works\r\n-Give any advantages and disadvantages of the technology\r\n-What criteria you would use to evaluate the technology\r\n-Explain why you have chosen the technology over other possible alternatives.', 'scrnshot.png', 'sagar', '2020-05-17', 1, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(55) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fullname`, `username`, `email`, `password`, `role`) VALUES
(1, 'adminworld', 'admin', 'admin@gmail.com', '5d41402abc4b2a76b9719d911017c592', 'admin'),
(2, 'sagar', 'kison', 'sagar@gmail.com', '28b57c4ad0ae81a33842fb6c205a2ad6', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
