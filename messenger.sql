create table `users` (
`id` int not null auto_increment,
`user_id` varchar(20) not null,
`pw` varchar(20) not null,
`nickname` varchar(20) not null,
`profile_link` varchar(200) not null,
`profile_message` varchar(30) not null,
`is_deleted` tinyint(1) default 0,
`registered_date` int not null,
primary key (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `channels` (
`id` int not null auto_increment,
`creator` int not null,
`link` varchar(200) not null,
`max_limit` int not null,
`is_deleted` tinyint(1) default 0,
`created_date` int not null,
primary key (`id`),
foreign key (`creator`) references `users`(`id`) on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `chats` (
`id` int not null auto_increment,
`chat` varchar(200) not null,
`chat_creator` int not null,
`channel` int not null,
`created_date` int not null,
primary key (`id`),
foreign key (`chat_creator`) references `users`(`id`) on delete cascade,
foreign key (`channel`) references `channels`(`id`) on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `follows` (
`id` int not null auto_increment,
`follower` int not null,
`followee` int not null,
`followed_date` int not null,
primary key (`id`),
foreign key (`follower`) references `users`(`id`) on delete cascade,
foreign key (`followee`) references `users`(`id`) on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `blocks` (
`id` int not null auto_increment,
`blocker` int not null,
`blockee` int not null,
`blocked_date` int not null,
primary key (`id`),
foreign key (`blocker`) references `users`(`id`) on delete cascade,
foreign key (`blockee`) references `users`(`id`) on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8;