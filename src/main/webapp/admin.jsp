<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.blog.entities.Post" %>
<%@page import="com.blog.dao.DaoPost" %>
<%@page import="java.util.List" %>
<html>

	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
			crossorigin="anonymous">
			<title>Painel do Administrador</title>
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
		
			<div id="admin">
				<div class="row text-center">
					<h2>Painel do Administrador</h2>
				</div>

				<div class="row justify-content-between my-5 mx-3">
						<button type="button" class="btn btn-primary fs-2 col-3" onclick="window.location='todosposts.jsp'">Listar todos os Posts</button>
						<button type="button" class="btn btn-primary fs-2 col-3" onclick="window.location='comentariosPendentes.jsp'">Criar post</button>
						<button type="button" class="btn btn-primary fs-2 col-3" onclick="window.location='comentariosPendentes.jsp'">Aprovar Comentários</button>
				</div>
			</div>

			<div id="notAdmin">
				<div class='card mx-2 my-5'>
					<div class='card-body d-flex flex-column py-3 h-100 text-center'>
						<h4 class='card-title mt-3'>Apenas Administradores podem acessar essa página</h4>
						<a href='index.jsp' class='btn btn-primary w-100 mt-3 mb-4'>Para voltar a página inicial, clique aqui</a>
					</div>
				</div>
			</div>

			<script>
				if(loggedUser && loggedUser.isAdmin)
					document.getElementById("notAdmin").style.display = "none";
				else
					document.getElementById("admin").style.display = "none";
			</script>

		</div>
	</body>
</html>