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
	String comentario=request.getParameter("comentario");
	String postId=request.getParameter("postId");
	String userId = request.getParameter("userId");

	if(comentario != null && postId != null && userId != null){
		Comentario c = new Comentario(comentario, Integer.parseInt(userId), Integer.parseInt(postId));
		DaoComentario.comentar(c);
		out.write("<script>");
			out.write("window.location.replace('post.jsp?id=" + postId + "');");
		out.write("</script>");

	}
%>