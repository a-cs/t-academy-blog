<%
	out.write("<script>");
		out.write("localStorage.removeItem('blog:User');");
		out.write("window.location.replace('index.jsp');");
	out.write("</script>");
%>