create table comentarios (
	id int primary key auto_increment,
	conteudo varchar(200) not null,
	dataCriacao DATETIME NOT NULL DEFAULT NOW(),
	autorId int,
	foreign key (autorId) references usuarios(id),
	postId int,
	foreign key (postId) references posts(id),
	isAproved bool
)


insert into comentarios (autorId, postId, dataCriacao, isAproved, conteudo)
values
(2, 12, '2022-10-15', true, "Excelente recomendação"),
(3, 12, '2022-10-16', true, "Muito bom."),
(4, 12, '2022-10-17', true, "Mandou muito"),
(5, 12, '2022-10-18', true, "Melhor livro.")