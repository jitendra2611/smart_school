-- Smart School DB
-- Version 6.3.0
-- https://smart-school.in
-- https://qdocs.in
-- New tables added: 2

-- --------------------------------------------------------

ALTER TABLE `exam_group_class_batch_exams`
ADD `use_exam_roll_no` int(1) NOT NULL DEFAULT '1' after `exam_group_id`;

ALTER TABLE `exam_group_class_batch_exam_students`
ADD `teacher_remark` text after `roll_no`;

ALTER TABLE `front_cms_settings`
ADD `cookie_consent` varchar(255) NOT NULL after `footer_text`;

ALTER TABLE `id_card`
ADD `enable_vertical_card` int(11) NOT NULL DEFAULT '0' after `sign_image`;

ALTER TABLE `logs` 
CHANGE `record_id` `record_id` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL;

ALTER TABLE `messages`
ADD `template_id` varchar(100) NOT NULL after `title`;

ALTER TABLE `notification_setting`
ADD  `subject` varchar(255) NOT NULL after `display_sms`;

ALTER TABLE `notification_setting`
ADD  `template_id` varchar(100) NOT NULL after `subject`;

ALTER TABLE `onlineexam_student_results`
ADD  `attachment_name` text after `remark`;

ALTER TABLE `onlineexam_student_results`
ADD  `attachment_upload_name` varchar(250) DEFAULT NULL after `attachment_name`;

ALTER TABLE `online_admissions`
ADD  `reference_no` varchar(50) NOT NULL after `roll_no`;

ALTER TABLE `online_admissions`
ADD `middlename` varchar(255) NOT NULL after `firstname`;

ALTER TABLE `online_admissions`
ADD `form_status` int(11) NOT NULL after `note`;

ALTER TABLE `online_admissions`
ADD `paid_status` int(11) NOT NULL after `form_status`;

CREATE TABLE `online_admission_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `online_admission_fields` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'middlename', 0, '2021-05-28 10:29:23'),
(2, 'lastname', 1, '2021-06-02 04:49:19'),
(3, 'category', 0, '2021-06-02 04:48:35'),
(4, 'religion', 0, '2021-06-02 04:48:35'),
(5, 'cast', 0, '2021-06-02 04:48:35'),
(6, 'mobile_no', 1, '2021-06-02 04:50:24'),
(7, 'admission_date', 0, '2021-06-02 04:48:35'),
(8, 'student_photo', 0, '2021-06-02 04:48:35'),
(9, 'is_student_house', 0, '2021-05-29 13:22:53'),
(10, 'is_blood_group', 0, '2021-06-02 04:48:35'),
(11, 'student_height', 0, '2021-06-02 04:48:35'),
(12, 'student_weight', 0, '2021-06-02 04:48:35'),
(13, 'father_name', 0, '2021-06-02 04:48:35'),
(14, 'father_phone', 0, '2021-06-02 04:48:35'),
(15, 'father_occupation', 0, '2021-06-02 04:48:35'),
(16, 'father_pic', 0, '2021-06-02 04:48:35'),
(17, 'mother_name', 0, '2021-06-02 04:48:35'),
(18, 'mother_phone', 0, '2021-06-02 04:48:35'),
(19, 'mother_occupation', 0, '2021-06-02 04:48:35'),
(20, 'mother_pic', 0, '2021-06-02 04:48:35'),
(21, 'guardian_name', 1, '2021-06-02 04:50:54'),
(22, 'guardian_phone', 1, '2021-06-02 04:50:54'),
(23, 'if_guardian_is', 1, '2021-06-02 04:50:54'),
(24, 'guardian_relation', 1, '2021-06-02 04:50:54'),
(25, 'guardian_email', 1, '2021-06-02 04:51:35'),
(26, 'guardian_occupation', 1, '2021-06-02 04:51:26'),
(27, 'guardian_address', 1, '2021-06-02 04:51:31'),
(28, 'bank_account_no', 0, '2021-06-02 04:48:35'),
(29, 'bank_name', 0, '2021-06-02 04:48:35'),
(30, 'ifsc_code', 0, '2021-06-02 04:48:35'),
(31, 'national_identification_no', 0, '2021-06-02 04:48:35'),
(32, 'local_identification_no', 0, '2021-06-02 04:48:35'),
(33, 'rte', 0, '2021-06-02 04:48:35'),
(34, 'previous_school_details', 0, '2021-06-02 04:48:35'),
(35, 'guardian_photo', 1, '2021-06-02 04:51:29'),
(36, 'student_note', 0, '2021-06-02 04:55:08'),
(37, 'measurement_date', 0, '2021-06-02 04:48:35'),
(38, 'student_email', 1, '2021-06-02 04:49:38'),
(39, 'current_address', 0, '2021-06-02 04:48:35'),
(40, 'permanent_address', 0, '2021-06-02 04:48:35');

CREATE TABLE `online_admission_payment` (
  `id` int(11) NOT NULL,
  `admission_id` int(11) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `sch_settings`
ADD `online_admission_payment` varchar(50) NOT NULL after `online_admission`;

ALTER TABLE `sch_settings`
ADD `online_admission_amount` float NOT NULL after `online_admission_payment`; 

ALTER TABLE `sch_settings`
ADD `online_admission_instruction` text NOT NULL after `online_admission_amount`;

ALTER TABLE `sch_settings`
ADD `online_admission_conditions` text NOT NULL after `online_admission_instruction`;

ALTER TABLE `staff_id_card`
ADD `enable_vertical_card` int(11) NOT NULL DEFAULT '0' after `header_color`;

ALTER TABLE `staff_payslip` CHANGE `basic` `basic` FLOAT(10,2) NOT NULL;

ALTER TABLE `staff_payslip` CHANGE `total_allowance` `total_allowance` FLOAT(10,2) NOT NULL;

ALTER TABLE `staff_payslip` CHANGE `total_deduction` `total_deduction` FLOAT(10,2) NOT NULL;

ALTER TABLE `staff_payslip` CHANGE `net_salary` `net_salary` FLOAT(10,2) NOT NULL;

ALTER TABLE `template_marksheets`
ADD `is_teacher_remark` int(11) NOT NULL DEFAULT '1' after `is_class`;

ALTER TABLE `online_admission_fields`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `online_admission_payment`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `online_admission_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
  
ALTER TABLE `online_admission_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;  

ALTER TABLE `online_admission_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
  
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES
(null, 'online_admission_form_submission', '1', '1', 0, 1, 1, 'online_admission_form_submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully  on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{reference_no}}', '2021-06-01 09:27:56'),
(null, 'online_admission_fees_submission', '0', '0', 1, 1, 1, 'online_admission_fees_submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has recieved successfully on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}}', '2021-05-21 06:52:26');

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES
(248, 20, 'Staff ID Card', 'staff_id_card', 1, 1, 1, 1, '2018-07-06 10:41:28'),
(249, 20, 'Generate Staff ID Card', 'generate_staff_id_card', 1, 0, 0, 0, '2018-07-06 10:41:49');

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES
(null, 1, 248, 1, 1, 1, 1, '2021-05-19 12:52:49'),
(null, 1, 249, 1, 0, 0, 0, '2021-05-19 12:52:49'),
(null, 2, 248, 1, 1, 1, 1, '2021-05-28 13:11:52'),
(null, 3, 248, 1, 1, 1, 1, '2021-05-28 09:36:16'),
(null, 3, 249, 1, 0, 0, 0, '2021-05-28 09:36:16'),
(null, 6, 248, 1, 0, 0, 0, '2021-05-28 09:56:14'),
(null, 6, 249, 1, 0, 0, 0, '2021-05-28 09:56:14'),
(null, 2, 249, 1, 0, 0, 0, '2021-05-28 13:11:52');

INSERT INTO `print_headerfooter` (`id`, `print_type`, `header_image`, `footer_content`, `created_by`, `entry_date`) VALUES
(3, 'online_admission_receipt', 'header_image.jpg', 'This receipt is for online admission  computer ffffffff generated hence no signature is required.', 1, '2021-05-27 12:50:24');

INSERT INTO `id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `enable_vertical_card`, `header_color`, `enable_admission_no`, `enable_student_name`, `enable_class`, `enable_fathers_name`, `enable_mothers_name`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `status`) VALUES
(null, 'Sample Student Identity Card Vertical', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', 1, '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1);

INSERT INTO `staff_id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_vertical_card`, `enable_staff_role`, `enable_staff_id`, `enable_staff_department`, `enable_designation`, `enable_name`, `enable_fathers_name`, `enable_mothers_name`, `enable_date_of_joining`, `enable_permanent_address`, `enable_staff_dob`, `enable_staff_phone`, `status`) VALUES
(null, 'Sample Staff ID Card Vertical', 'Mount Carmel School', '110 Kings Street, CA', 'background1.png', 'logo1.png', 'sign1.png', '#9b1818', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1);

UPDATE `sch_settings` SET `online_admission_conditions` = '<p>&nbsp;Please enter your institution online admission terms &amp; conditions here.</p> \r\n\r\n' WHERE `sch_settings`.`id` = 1;

ALTER TABLE `students` CHANGE `measurement_date` `measurement_date` DATE NULL;

UPDATE `permission_category` SET `enable_add` = '1' WHERE `permission_category`.`id` = 21;

UPDATE `roles_permissions` SET `can_add` = '1' WHERE `roles_permissions`.`perm_cat_id` = 21 and `roles_permissions`.`role_id` = 1;

UPDATE `roles_permissions` SET `can_add` = '1' WHERE `roles_permissions`.`perm_cat_id` = 21 and `roles_permissions`.`role_id` = 2;