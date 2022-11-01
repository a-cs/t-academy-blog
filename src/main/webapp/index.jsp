<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.blog.entities.Usuario"%>
<%@page import="com.blog.dao.DaoUsuario"%>
<%@page import="java.util.List"%>

<html>
<body>
<h2>Blog</h2>

    <%
		List<Usuario> lista = DaoUsuario.listar();
		for(Usuario u : lista){
			out.write(""+ u.getId() + " | " + u.getEmail() + "<br>");
		}
    %>
    <h3>END</h3>
</body>
</html>
