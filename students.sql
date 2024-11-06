create table `students` (
`id_number` int not null auto_increment,
`name` varchar(20) not null,
`year` int not null,
`major` varchar(20) not null,
`phone_number` varchar(13) not null,
`address` varchar(100) not null,
`total_point` int not null default 0,
`average_point` double not null default 0.0,
`is_registered` tinyint(1) not null default 1,
`individual_number` int not null,
primary key (`id_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;