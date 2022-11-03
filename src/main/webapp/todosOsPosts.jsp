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
			<title>Todos os Posts</title>
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


			
			<div class="row text-center">

				<h2>Todas as indicações</h2>
			</div>

			<div class="row my-4 mx-3 justify-content-center">

				<%
					List<Post> lista = DaoPost.listar();
					for(Post p : lista){
						String conteudo = p.getConteudo(); 
						String conteudoResumido = conteudo.length() > 16 ? conteudo.substring(0, 15) : conteudo;
						out.write("<div class='col-4 my-3'>");
							out.write("<div class='card m-2 h-100'>");
								out.write("<div class='card-body d-flex flex-column'>");
									out.write("<h5 class='card-title '>"+ p.getId() +" - " + p.getTitulo() + "</h5>");
									out.write("<p class='card-text mt-auto'>"+ conteudoResumido + "...</p>");
									out.write("<a href='post.jsp?id=" + p.getId() + "' class='btn btn-primary w-100 mt-auto'>Ver postagem completa</a>");
								out.write("</div>");
							out.write("</div>");
						out.write("</div>");
					}
					%>
			</div>
		</div>
	</body>
</html>