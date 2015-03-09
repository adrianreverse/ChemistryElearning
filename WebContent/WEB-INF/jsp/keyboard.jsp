<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>${appTitle}</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/keyboard.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/keyboard.js"></script>
		<script src="${pageContext.request.contextPath}/js/js.js"></script>
	</head>
<body>

<textarea id="message-content" rows="4" cols="50" placeholder="Treść wiadomości">  </textarea>

	<ul id="keyboard"> 
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class =	"backspace"><span>Backspace</span></li>
		<li class =	"tab"><span>Tab</span></li>
		<li class= "letter"><span>q</span></li>
		<li class= "letter"><span>w</span></li>
		<li class= "letter"><span>e</span></li>
		<li class= "letter"><span>r</span></li>
		<li class= "letter"><span>t</span></li>
		<li class= "letter"><span>y</span></li>
		<li class= "letter"><span>u</span></li>
		<li class= "letter"><span>i</span></li>
		<li class= "letter"><span>o</span></li>
		<li class= "letter"><span>p</span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "capslock"></li>
		<li class= "letter"><span>a</span></li>
		<li class= "letter"><span>s</span></li>
		<li class= "letter"><span>d</span></li>
		<li class= "letter"><span>f</span></li>
		<li class= "letter"><span>g</span></li>
		<li class= "letter"><span>h</span></li>
		<li class= "letter"><span>j</span></li>
		<li class= "letter"><span>k</span></li>
		<li class= "letter"><span>l</span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class =	"enter"><span>Enter</span></li>
		<li class = "shift"><span>Shift</span></li>
		<li class= "letter"><span>z</span></li>
		<li class= "letter"><span>x</span></li>
		<li class= "letter"><span>c</span></li>
		<li class= "letter"><span>v</span></li>
		<li class= "letter"><span>b</span></li>
		<li class= "letter"><span>n</span></li>
		<li class= "letter"><span>m</span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class = "character"><span></span><span></span></li>
		<li class =	"shift"></li>
		<li class =	"space"></li>		
	</ul>


</body>
</html>