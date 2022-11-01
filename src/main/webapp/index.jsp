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
	</head>

	<body>
		<div class="container-fluid">

			<div class="row text-center my-5">

				<h1>Blog - Indicações de Livros</h1>
			</div>
			
			<div class="row text-center">

				<h2>Ultimas indicações</h2>
			</div>

			<div class="row my-4 mx-3 justify-content-center">

				<%
					List<Post> lista = DaoPost.listarUltimos10();
					for(Post p : lista){
						String conteudo = p.getConteudo(); 
						String conteudoResumido = conteudo.length() > 16 ? conteudo.substring(0, 15) : conteudo;
						out.write("<div class='col-4 my-3'>");
							out.write("<div class='card m-2 h-100'>");
								out.write("<div class='card-body d-flex flex-column'>");
									out.write("<h5 class='card-title '>"+ p.getTitulo() + "</h5>");
									out.write("<p class='card-text mt-auto'>"+ conteudoResumido + "...</p>");
									out.write("<a href='post.jsp?id=" + p.getId() + "' class='btn btn-primary w-100 mt-auto'>Ver post</a>");
								out.write("</div>");
							out.write("</div>");
						out.write("</div>");
					}
					%>
			</div>
		</div>
	</body>
</html>