<%@page import="com.blog.entities.Comentario" %>
<%@page import="com.blog.dao.DaoComentario" %>

<script>
	const loggedUser = JSON.parse(localStorage.getItem('blog:User'));
	const queryString = window.location.search;
	const urlParams = new URLSearchParams(queryString);
	const userId = urlParams.get('userId')
	if(!userId)
		document.location.href += `&userId=${loggedUser.id}`;
</script>

<%
	String id=request.getParameter("id");
	String userId = request.getParameter("userId");
	if(id != null){
		if(userId != null){
			DaoComentario.aprovar(Integer.parseInt(id), Integer.parseInt(userId));
			out.write("<script>");
				out.write("window.location.replace('comentariosPendentes.jsp');");
			out.write("</script>");
		}
	}
	else{
		out.write("<script>");
			out.write("window.location.replace('index.jsp');");
		out.write("</script>");
	}


%>