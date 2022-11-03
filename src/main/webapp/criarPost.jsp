<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.blog.entities.Post" %>
<%@page import="com.blog.dao.DaoPost" %>
<%@page import="com.blog.entities.Comentario" %>
<%@page import="com.blog.dao.DaoComentario" %>
<%@page import="com.blog.entities.Usuario" %>
<%@page import="com.blog.dao.DaoUsuario" %>
<%@page import="java.util.List" %>

<%
	String id=request.getParameter("id");
	Post p = (id == null) ? null : DaoPost.listarPorId(Integer.parseInt(id));
%>

<html>

	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
			crossorigin="anonymous">
			<title>Criar Post</title>

			<style>
				.card {
					border-radius: 16px;
					border-width: 4px;
				}

				.form-control {
					font-size: 20px;
				}
			</style>
	</head>

	<body>
		<div class="row text-center m-0 p-5">
			<a class="text-decoration-none" href='index.jsp'>
				
				<h1>Blog - Indicações de Livros</h1>
			</a>
		</div>
		
		<nav class='navbar navbar-dark bg-primary justify-content-end mb-5'>
			<ul class='navbar-nav flex-row'>
				<a class='nav-link active px-3 mx-3' href='index.jsp'>
					<li class='nav-item'>
						Home
					</li>
				</a>
				<a class='nav-link px-3 mx-3' id="login" href='login.jsp'>
					<li class='nav-item'>
						Login
					</li>
				</a>
				<a class='nav-link px-3 mx-3' id="adminPanel" href='admin.jsp'>
					<li class='nav-item'>
						Painel Admin
					</li>
				</a>
				<a class='nav-link px-3 mx-3' id="exit" href='sair.jsp'>
					<li class='nav-item'>
						Sair
					</li>
				</a>
			</ul>
			<script src="./menuConditionalRender.js"></script>
		</nav>

		<div class="container-fluid">


			<div class="row mt-5 mb-3 mx-3">
				<h2 class="text-secondary">Comentários:</h2>
			</div>

			<div class="row mb-5 mx-5">
				<div class='card mx-2 mb-3' id="loginToPost">
					<div class='card-body d-flex flex-column py-3 h-100 text-center'>
						<h4 class='card-title mt-3'>Para criar um post é necessario ser Admin</h4>
						<a href='index.jsp' class='btn btn-primary w-100 mt-3 mb-4'>Para Voltar a página inicial, clique aqui</a>
					</div>
				</div>

				<div class='card mx-2 mb-3' id="newPost">
						<form class='card-body d-flex flex-column py-3 h-100' action='criarNovoPost.jsp' method='get'>
						<h4 class='form-label mt-3 mb-4'>Novo post.</h4>
						<textarea rows="1" maxlength="150" placeholder="Digite o titulo do post"  name="titulo" class='form-control mt-auto text-muted' required></textarea>
						<textarea rows="3" maxlength="10000" placeholder="Digite o conteudo do post"  name="conteudo" class='form-control mt-2 text-muted' required></textarea>
						<button class='btn btn-primary w-100 mt-3'>Enviar post</button>
					</form>
				</div>

				<script>
					if(loggedUser && loggedUser.isAdmin)
						document.getElementById("loginToPost").style.display = "none";
					else
						document.getElementById("newPost").style.display = "none";
				</script>


				
			</div>
		</div>
	</body>
</html>