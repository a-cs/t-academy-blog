const loggedUser = JSON.parse(localStorage.getItem("blog:User"))
if(loggedUser){
	console.log("logado");
	document.getElementById("login").style.display = "none";
	if(!loggedUser.isAdmin)
		document.getElementById("adminPanel").style.display = "none";
} else {
	document.getElementById("adminPanel").style.display = "none";
	document.getElementById("exit").style.display = "none";
}