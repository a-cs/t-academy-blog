<%@page import="com.blog.entities.Post" %>
<%@page import="com.blog.dao.DaoPost" %>

<script>
	const loggedUser = JSON.parse(localStorage.getItem('blog:User'));
	const queryString = window.location.search;
	const urlParams = new URLSearchParams(queryString);
	const userId = urlParams.get('userId')
	if(!userId)
		document.location.href += `&userId=${loggedUser.id}`;
</script>

<%
	String titulo=request.getParameter("titulo");
	String conteudo=request.getParameter("conteudo");
	String userId = request.getParameter("userId");

	if(titulo != null && conteudo != null && userId != null){
		Post p = new Post(titulo, conteudo, Integer.parseInt(userId));
		DaoPost.criar(p);
		out.write("<script>");
			out.write("window.location.replace('index.jsp');");
		out.write("</script>");

	}
%>