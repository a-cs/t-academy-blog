<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.blog.entities.Comentario" %>
<%@page import="com.blog.dao.DaoComentario" %>
<%@page import="com.blog.entities.Usuario" %>
<%@page import="com.blog.dao.DaoUsuario" %>
<%@page import="java.util.List" %>


<html>

	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
			crossorigin="anonymous">
			<title>Aprovar Comentários</title>

			<style>
				.card {
					border-radius: 16px;
					border-width: 4px;
				}

				.pictureWrapper{
					max-width: 80px;
				}
				.profilePicture {
					/* border-radius: 50%; */
					transform: scale(1.5);
					margin-left: -35px;
					width: 143px;
					height: 80px;
					clip-path: circle(25px at 50%)
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
				<h2 class="text-secondary">Comentários com Aprovação Pendente:</h2>
			</div>

			<div class="row mb-5 mx-5">
				
				<%
					List<Comentario> lista = DaoComentario.listarAprovacaoPendente();
					for(Comentario c : lista){
						Usuario u = DaoUsuario.listarPorId(c.getAutorId());
						out.write("<div class='card mx-2 mb-3 w-100'>");
							out.write("<div class='row py-3 mx-3 align-items-center'>");
								out.write("<div class='col-2 pictureWrapper p-0'>");
									out.write("<img src='https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80' class='profilePicture' alt='ProfilePicture'>");
								out.write("</div>");
								out.write("<div class='col-11 p-0 h-100'>");
									out.write("<div class='card-body d-flex flex-column py-0 h-100'>");
										out.write("<h3 class='card-title'>" + u.getNome()+ "</h3>");
										out.write("<p class='card-text mt-auto text-muted fs-4'>"+c.getConteudo()+"</p>");
										out.write("<button type='button' class='btn btn-primary fs-6' onclick=\"window.location='aprovarComentario.jsp?id="+ c.getId() +"'\">Aprovar</button>");
									out.write("</div>");
								out.write("</div>");
							out.write("</div>");
						out.write("</div>");
					}
				%>

			</div>
		</div>
	</body>
</html>