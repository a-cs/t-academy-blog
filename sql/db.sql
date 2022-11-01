create table usuarios (
	id int primary key auto_increment,
	email varchar(50) not null,
	senha varchar(50) not null,
	isAdmin bool
)

insert into usuarios (email, senha, isAdmin)
values
("anderson@gmail.com", "123456", true)

insert into usuarios (email, senha, isAdmin)
values
("user1@gmail.com", "123456", false)

