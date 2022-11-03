<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.blog.entities.Usuario" %>
<%@page import="com.blog.dao.DaoUsuario" %>

<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
		crossorigin="anonymous">
		<title>Blog - Indicações de Livros</title>
		<script>
			const loggedUser = JSON.parse(localStorage.getItem("blog:User"))
			if(loggedUser)
				window.location.replace("index.jsp");

		</script>
</head>

<body>
	<div class="row text-center my-5">

		<h1>Blog - Indicações de Livros</h1>
	</div>
	
	<nav class='navbar navbar-dark bg-primary justify-content-end my-5'>
		<ul class='navbar-nav flex-row'>
			<a class='nav-link px-3 mx-3' href='index.jsp'>
				<li class='nav-item'>
					Home
				</li>
			</a>
			<a class='nav-link active px-3 mx-3' id="login" href='login.jsp'>
				<li class='nav-item'>
					Login
				</li>
			</a>
		</ul>
	</nav>

	<div class="container-fluid">


		
		<div class="row text-center">

			<h2>Login</h2>
		</div>

		<div class="row mt-5" id="login">

			<form action="login.jsp" method="post">
				<div class="mb-3">
					<label class="form-label" for="email">Email:</label>
					<input type="email" class="form-control" name="email" required>
				</div>
				<div class="mb-3">
					<label class="form-label" for="senha">Senha:</label>
					<input type="password" class="form-control" name="senha" required>
				</div>
				<button class="btn btn-primary w-100">Logar</button>
			</form>
		</div>

		<%
			String email = request.getParameter("email");
			String senha = request.getParameter("senha");
			if(email != null && senha != null) {
				Usuario u = DaoUsuario.logar(email, senha);
				if(u != null){
					out.write("<script>");
						out.write("const user = {id: " + u.getId() + ", nome: '"+ u.getNome() +"', isAdmin: "+ u.getAdmin() +"};");
						out.write("localStorage.setItem('blog:User', JSON.stringify(user));");
						out.write("window.location.replace('index.jsp');");
					out.write("</script>");
				}
				else
					out.write("<br> Usuario é null");
			}
		%>

		
	</div>
</body>
</html>