create table usuarios (
	id int primary key auto_increment,
	nome varchar(50) not null,
	email varchar(50) not null unique,
	senha varchar(50) not null,
	isAdmin bool
)

insert into usuarios (email, nome, senha, isAdmin)
values
("admin@gmail.com", "admin", "123456", true),
("user1@gmail.com", "user1", "123456", false),
("user2@gmail.com", "user2", "123456", false),
("user3@gmail.com", "user3", "123456", false),
("user4@gmail.com", "user4", "123456", false),
("user5@gmail.com", "user5", "123456", false)