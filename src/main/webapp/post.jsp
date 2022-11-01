<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.blog.entities.Post" %>
<%@page import="com.blog.dao.DaoPost" %>

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
	</head>

	<body>
		<div class="container-fluid">

			<a href="index.jsp">
				<div class="row text-center my-5">

					<h1>Blog - Indicações de Livros</h1>
					
				</div>
			</a>

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

			<div class="row my-5 mx-3">
				<h2 class="text-secondary">Comentários:</h2>
			</div>
			
	</body>
</html>