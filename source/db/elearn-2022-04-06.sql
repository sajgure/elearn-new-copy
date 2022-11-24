#
# TABLE STRUCTURE FOR: tbl_attendance
#

DROP TABLE IF EXISTS `tbl_attendance`;

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) DEFAULT NULL,
  `punch_in_time` date DEFAULT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_attendance` (`attendance_id`, `stud_id`, `punch_in_time`) VALUES (8, 44483, '2022-04-05');
INSERT INTO `tbl_attendance` (`attendance_id`, `stud_id`, `punch_in_time`) VALUES (9, 44483, '2022-04-06');
INSERT INTO `tbl_attendance` (`attendance_id`, `stud_id`, `punch_in_time`) VALUES (10, 3, '2022-04-06');


#
# TABLE STRUCTURE FOR: tbl_bonafied
#

DROP TABLE IF EXISTS `tbl_bonafied`;

CREATE TABLE `tbl_bonafied` (
  `bonafide_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` text DEFAULT NULL,
  `reason` text CHARACTER SET utf8 DEFAULT NULL,
  `display` enum('Y','N') DEFAULT 'Y',
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`bonafide_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_enquiry
#

DROP TABLE IF EXISTS `tbl_enquiry`;

CREATE TABLE `tbl_enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(11) DEFAULT NULL,
  `stud_name` varchar(50) DEFAULT NULL,
  `stud_last_name` varchar(50) DEFAULT NULL,
  `stud_addrsss` varchar(1000) DEFAULT NULL,
  `stud_mail` varchar(50) DEFAULT NULL,
  `stud_contact` varchar(20) DEFAULT NULL,
  `stud_qualification` varchar(30) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role_id` enum('1','2','3') DEFAULT '2',
  `display` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`enquiry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_fees_details
#

DROP TABLE IF EXISTS `tbl_fees_details`;

CREATE TABLE `tbl_fees_details` (
  `fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `desc` varchar(350) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `other_fee` int(11) DEFAULT NULL,
  `total_fee` int(11) DEFAULT NULL,
  `display` enum('Y','N') DEFAULT 'Y',
  `created_by` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`fees_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_institute
#

DROP TABLE IF EXISTS `tbl_institute`;

CREATE TABLE `tbl_institute` (
  `inst_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT 1,
  `inst_name` varchar(100) DEFAULT NULL,
  `inst_code` varchar(30) DEFAULT NULL,
  `inst_password` varchar(50) DEFAULT NULL,
  `inst_address` varchar(300) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `inst_taluka` varchar(30) DEFAULT NULL,
  `inst_pincode` varchar(10) DEFAULT NULL,
  `inst_contact` varchar(15) DEFAULT NULL,
  `inst_alt_contact` varchar(15) DEFAULT NULL,
  `inst_mail` varchar(30) DEFAULT NULL,
  `inst_owner_name` varchar(30) DEFAULT NULL,
  `inst_princ_name` varchar(30) DEFAULT NULL,
  `inst_owner_qual` varchar(30) DEFAULT NULL,
  `inst_princ_qual` varchar(30) DEFAULT NULL,
  `inst_owner_photo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `inst_reg_date` date DEFAULT NULL,
  `inst_status` enum('block','Active') DEFAULT 'block',
  `db_status` enum('Pending','Download','Install','Exam_Download','Exam_Install','Upload') DEFAULT 'Pending',
  `download_status` enum('Active','Deactive') DEFAULT 'Deactive',
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `display` enum('Y','N') DEFAULT 'Y',
  `installation_count` varchar(10) DEFAULT NULL,
  `exam_install_count` varchar(10) DEFAULT '1',
  `courier_no` varchar(30) DEFAULT NULL,
  `greeting_status` enum('Send','Pending') DEFAULT 'Pending',
  `sms_status` enum('Send','Not_Send') DEFAULT 'Not_Send',
  `mac_id` text DEFAULT NULL,
  `exam_mac_id` text DEFAULT NULL,
  PRIMARY KEY (`inst_id`),
  UNIQUE KEY `user_id` (`inst_id`),
  KEY `inst_id` (`inst_id`),
  KEY `inst_id_2` (`inst_id`),
  KEY `inst_name` (`inst_name`,`inst_code`,`inst_password`,`inst_address`,`inst_taluka`,`inst_pincode`,`inst_contact`,`inst_alt_contact`,`inst_mail`,`inst_owner_name`,`inst_princ_name`,`inst_owner_qual`,`inst_princ_qual`,`installation_count`,`exam_install_count`,`courier_no`)
) ENGINE=MyISAM AUTO_INCREMENT=2483 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_institute` (`inst_id`, `role_id`, `inst_name`, `inst_code`, `inst_password`, `inst_address`, `city_id`, `inst_taluka`, `inst_pincode`, `inst_contact`, `inst_alt_contact`, `inst_mail`, `inst_owner_name`, `inst_princ_name`, `inst_owner_qual`, `inst_princ_qual`, `inst_owner_photo`, `inst_reg_date`, `inst_status`, `db_status`, `download_status`, `created_by`, `created_on`, `modified_by`, `modified_on`, `display`, `installation_count`, `exam_install_count`, `courier_no`, `greeting_status`, `sms_status`, `mac_id`, `exam_mac_id`) VALUES (2482, 1, 'Msceia Support Team', '55555', '69223', 'C-208, Wisteriaa Fortune, Marunje Road, Near Poona Bakery, Opposite Silver Spoon Restaurant, Bhumkar Chowk', 358, 'Marunji', '411033', '7276048016', '8983045984', 'msajgure@gmail.com', 'Krishna patil', 'Krishna  Patil', 'BE Comp', 'BE Comp', 'ms1.png', '2010-02-09', 'Active', 'Download', 'Active', 1, '2021-04-01 14:50:22', 2482, '2021-04-01 14:50:22', 'Y', '4', '0', NULL, '', 'Not_Send', NULL, '9C-BB-94-5F-45-44,08-3E-8E-9C-63-B7');


#
# TABLE STRUCTURE FOR: tbl_notification
#

DROP TABLE IF EXISTS `tbl_notification`;

CREATE TABLE `tbl_notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` text DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `notification` text CHARACTER SET utf8 DEFAULT NULL,
  `notification_desc` text CHARACTER SET utf8 DEFAULT NULL,
  `display` enum('Y','N') DEFAULT 'Y',
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_payment_track
#

DROP TABLE IF EXISTS `tbl_payment_track`;

CREATE TABLE `tbl_payment_track` (
  `payment_track_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) DEFAULT NULL,
  `installment` varchar(50) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `fee` int(11) DEFAULT NULL,
  `display` enum('Y','N') DEFAULT 'Y',
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`payment_track_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_result
#

DROP TABLE IF EXISTS `tbl_result`;

CREATE TABLE `tbl_result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `display` enum('Y','N') NOT NULL DEFAULT 'Y',
  `objective_marks` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `email_id` int(11) DEFAULT NULL,
  `to` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cc` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bcc` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `subject` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `message` text CHARACTER SET utf8 DEFAULT NULL,
  `attachment_file` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `attachment_file1` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `email_marks` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `speed_id` int(11) DEFAULT NULL,
  `passage` text CHARACTER SET utf8 DEFAULT NULL,
  `speed_marks` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `letter_id` int(11) DEFAULT NULL,
  `letter_base64` text CHARACTER SET utf8 DEFAULT NULL,
  `letter_text` text CHARACTER SET utf8 DEFAULT NULL,
  `letter_html` text CHARACTER SET utf8 DEFAULT NULL,
  `letter_marks` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `statement_id` int(11) DEFAULT NULL,
  `statement_text` text CHARACTER SET utf8 DEFAULT NULL,
  `statement_html` text CHARACTER SET utf8 DEFAULT NULL,
  `statement_base64` text CHARACTER SET utf8 DEFAULT NULL,
  `statement_marks` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mobile_que` varchar(200) DEFAULT NULL,
  `mobile_ans` varchar(200) DEFAULT NULL,
  `mobile_marks` varchar(200) DEFAULT NULL,
  `submit_on` datetime DEFAULT NULL,
  `grace` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `inst_id` (`stud_id`),
  KEY `inst_id_2` (`stud_id`),
  KEY `inst_id_3` (`stud_id`),
  KEY `result_id` (`result_id`,`stud_id`,`created_by`,`display`,`objective_marks`,`email_id`,`email_marks`,`speed_id`,`speed_marks`,`letter_id`,`letter_marks`,`statement_id`,`statement_marks`,`grace`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_student_details
#

DROP TABLE IF EXISTS `tbl_student_details`;

CREATE TABLE `tbl_student_details` (
  `stud_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) DEFAULT NULL,
  `batch_time` varchar(100) DEFAULT NULL,
  `machin_no` varchar(100) DEFAULT NULL,
  `gr_no` int(11) DEFAULT NULL,
  `display` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`stud_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_user_answer
#

DROP TABLE IF EXISTS `tbl_user_answer`;

CREATE TABLE `tbl_user_answer` (
  `user_answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  `stud_option_id` int(11) DEFAULT NULL,
  `display` enum('Y','N') NOT NULL DEFAULT 'Y',
  `type` enum('demo','exam') NOT NULL DEFAULT 'demo',
  `result_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

