
for sidemenu

INSERT INTO `sidebar_sub_menus` (`id`, `sidebar_menu_id`, `menu`, `key`, `lang_key`, `url`, `level`, `access_permissions`, `permission_group_id`, `activate_controller`, `activate_methods`, `addon_permission`, `is_active`, `created_at`) VALUES
(194, 2, 'roll_import', NULL, 'roll_import', 'student/importp', 10, '(\'import_student\', \'can_view\')', NULL, 'student', 'importp', NULL, 1, '2025-03-26 12:04:46')
;



update method 

first method
using an array:
$data = array(
    'title' => $title,
    'name'  => $name,
    'date'  => $date
);
$this->db->where('id', $id);
$this->db->update('mytable', $data);


second method
$this->db->set('title', $title);
$this->db->set('name', $name);
$this->db->set('date', $date);
$this->db->where('id', $id);
$this->db->update('mytable');


add data table for utrcheck

CREATE TABLE `utrcheck` (
  `id` int(11) NOT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `utr` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `utrcheck` (`id`, `student_fees_master_id`, `utr`,`created_at`) VALUES
(1, 592, '12345', '2025-03-07 12:59:34');