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
			<title>Blog - Indicações de Livros</title>

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

			<%
				if(p == null){
					out.write("<div class='row text-center text-primary mx-3'>");
						out.write("<h2>");
							out.write("Nenhum post encontrado.");
						out.write("</h2>");
						out.write("<a href='index.jsp'>");
							out.write("<h2>");
								out.write("Voltar ao início");
							out.write("</h2>");
						out.write("</a>");
					out.write("</div>");
				} else {
					out.write("<div class='row text-center mx-3'>");
						out.write("<h2 class='text-primary'>");
								out.write(p.getTitulo());
						out.write("</h2>");
						out.write("<p class='text-start my-3'>");
								out.write(p.getConteudo());
						out.write("</p>");
					out.write("</div>");
				}
			%>

			<div class="row mt-5 mb-3 mx-3">
				<h2 class="text-secondary">Comentários:</h2>
			</div>

			<div class="row mb-5 mx-5">
				<div class='card mx-2 mb-3' id="loginToComment">
					<div class='card-body d-flex flex-column py-3 h-100 text-center'>
						<h4 class='card-title mt-3'>Para comentar é necessário efetuar o login.</h4>
						<a href='login.jsp' class='btn btn-primary w-100 mt-3 mb-4'>Para logar, clique aqui</a>
					</div>
				</div>

				<div class='card mx-2 mb-3' id="newComment">
					<form class='card-body d-flex flex-column py-3 h-100'>
						<h4 class='form-label mt-3 mb-4'>Comentário.</h4>
						<textarea rows="3" maxlength="200" placeholder="Digite seu comentário"  name="comentario" class='form-control mt-auto text-muted'></textarea>
						<a href='' class='btn btn-primary w-100 mt-3 mb-4'>Enviar comentário</a>
					</form>
				</div>

				<script>
					if(loggedUser)
						document.getElementById("loginToComment").style.display = "none";
					else
						document.getElementById("newComment").style.display = "none";
				</script>


				<%
					if(p != null){
						List<Comentario> lista = DaoComentario.listarAprovadosPorPost(p.getId());
						for(Comentario c : lista){
							Usuario u = DaoUsuario.listarPorId(c.getAutorId());
							out.write("<div class='card mx-2 mb-3 '>");
								out.write("<div class='row py-3 mx-3 align-items-center'>");
									out.write("<div class='col-2 pictureWrapper p-0'>");
										out.write("<img src='https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80' class='profilePicture' alt='ProfilePicture'>");
									out.write("</div>");
									out.write("<div class='col-10 p-0 h-100'>");
										out.write("<div class='card-body d-flex flex-column py-0 h-100'>");
											out.write("<h4 class='card-title'>" + u.getNome()+ "</h4>");
											out.write("<p class='card-text mt-auto text-muted'>"+c.getConteudo()+"</p>");
										out.write("</div>");
									out.write("</div>");
								out.write("</div>");
							out.write("</div>");
						}
					}
				%>

			</div>
		</div>
	</body>
</html>