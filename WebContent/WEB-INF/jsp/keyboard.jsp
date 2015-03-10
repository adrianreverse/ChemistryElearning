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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/message.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/keyboard.js"></script>
		<script src="${pageContext.request.contextPath}/js/counter.js"></script>
		<script src="${pageContext.request.contextPath}/js/js.js"></script>
	</head>
<body>

<textarea id="message-content" rows="4" cols="50" placeholder="Treść wiadomości">  </textarea>
 
	<ul id="keyboard"> 
		<li class="character"><span class="off">`</span><span class="on">~</span></li>
		<li class="character"><span class="off">1</span><span class="on">!</span></li>
		<li class="character"><span class="off">2</span><span class="on">@</span></li>
		<li class="character"><span class="off">3</span><span class="on">#</span></li>
		<li class="character"><span class="off">4</span><span class="on">$</span></li>
		<li class="character"><span class="off">5</span><span class="on">%</span></li>
		<li class="character"><span class="off">6</span><span class="on">^</span></li>
		<li class="character"><span class="off">7</span><span class="on">&amp;</span></li>
		<li class="character"><span class="off">8</span><span class="on">*</span></li>
		<li class="character"><span class="off">9</span><span class="on">(</span></li>
		<li class="character"><span class="off">0</span><span class="on">)</span></li>
		<li class="character"><span class="off">-</span><span class="on">_</span></li>
		<li class="character"><span class="off">=</span><span class="on">+</span></li>
		<li class="backspace">Backspace</li>
		<li class="tab">Tab</li>
		<li class="letter"><span class="off">q</span></li>
		<li class="letter"><span class="off">w</span></li>
		<li class="letter"><span class="off">e</span><span class="alt-ctrl-on">ę</span></li>
		<li class="letter"><span class="off">r</span></li>
		<li class="letter"><span class="off">t</span></li>
		<li class="letter"><span class="off">y</span></li>
		<li class="letter"><span class="off">u</span></li>
		<li class="letter"><span class="off">i</span></li>
		<li class="letter"><span class="off">o</span><span class="alt-ctrl-on">ó</span></li>
		<li class="letter"><span class="off">p</span></li>
		<li class="character"><span class="off">[</span><span class="on">{</span></li>
		<li class="character"><span class="off">]</span><span class="on">}</span></li>
		<li class="character"><span class="off">\</span><span class="on">|</span></li>
		<li class="capslock">Caps lock</li>
		<li class="letter"><span class="off">a</span><span class="alt-ctrl-on">ą</span></li>
		<li class="letter"><span class="off">s</span><span class="alt-ctrl-on">ś</span></li>
		<li class="letter"><span class="off">d</span></li>
		<li class="letter"><span class="off">f</span></li>
		<li class="letter"><span class="off">g</span></li>
		<li class="letter"><span class="off">h</span></li>
		<li class="letter"><span class="off">j</span></li>
		<li class="letter"><span class="off">k</span></li>
		<li class="letter"><span class="off">l</span><span class="alt-ctrl-on">ł</span></li>
		<li class="character"><span class="off">;</span><span class="on">:</span></li>
		<li class="character"><span class="off">'</span><span class="on">&quot;</span></li>
		<li class="enter last">Enter</li>
		<li class="shift">Shift</li>
		<li class="letter"><span class="off">z</span><span class="alt-ctrl-on">ż</span></li>
		<li class="letter"><span class="off">x</span><span class="alt-ctrl-on">ź</span></li>
		<li class="letter"><span class="off">c</span><span class="alt-ctrl-on">ć</span></li>
		<li class="letter"><span class="off">v</span></li>
		<li class="letter"><span class="off">b</span></li>
		<li class="letter"><span class="off">n</span><span class="alt-ctrl-on">ń</span></li>
		<li class="letter"><span class="off">m</span></li>
		<li class="character"><span class="off">,</span><span class="on">&lt;</span></li>
		<li class="character"><span class="off">.</span><span class="on">&gt;</span></li>
		<li class="character"><span class="off">/</span><span class="on">?</span></li>
		<li class="shift">Shift</li>
		<li class="alt-ctrl">Alt + Ctrl</li>	
		<li class="space"></li>
		<li class="alt-ctrl">Alt + Ctrl</li>	
	</ul>
	 
	 <!--
	 	<ul id="keyboard"> 
		<li class="character"><span class="off">`</span><span class="on">~</span></li>
		<li class="character"><span class="off">1</span><span class="on">!</span></li>
		<li class="character"><span class="off">2</span><span class="on">@</span></li>
		<li class="character"><span class="off">3</span><span class="on">#</span></li>
		<li class="character"><span class="off">4</span><span class="on">$</span></li>
		<li class="character"><span class="off">5</span><span class="on">%</span></li>
		<li class="character"><span class="off">6</span><span class="on">^</span></li>
		<li class="character"><span class="off">7</span><span class="on">&amp;</span></li>
		<li class="character"><span class="off">8</span><span class="on">*</span></li>
		<li class="character"><span class="off">9</span><span class="on">(</span></li>
		<li class="character"><span class="off">0</span><span class="on">)</span></li>
		<li class="character"><span class="off">-</span><span class="on">_</span></li>
		<li class="character"><span class="off">=</span><span class="on">+</span></li>
		<li class="backspace">Backspace</li>
		<li class="tab">Tab</li>
		<li class="letter">q</li>
		<li class="letter">w</li>
		<li class="letter">e</li>
		<li class="letter">r</li>
		<li class="letter">t</li>
		<li class="letter">y</li>
		<li class="letter">u</li>
		<li class="letter">i</li>
		<li class="letter">o</li>
		<li class="letter">p</li>
		<li class="character"><span class="off">[</span><span class="on">{</span></li>
		<li class="character"><span class="off">]</span><span class="on">}</span></li>
		<li class="character"><span class="off">\</span><span class="on">|</span></li>
		<li class="capslock">Caps lock</li>
		<li class="letter">a</li>
		<li class="letter">s</li>
		<li class="letter">d</li>
		<li class="letter">f</li>
		<li class="letter">g</li>
		<li class="letter">h</li>
		<li class="letter">j</li>
		<li class="letter">k</li>
		<li class="letter">l</li>
		<li class="character"><span class="off">;</span><span class="on">:</span></li>
		<li class="character"><span class="off">'</span><span class="on">&quot;</span></li>
		<li class="enter last">Enter</li>
		<li class="shift">Shift</li>
		<li class="letter">z</li>
		<li class="letter">x</li>
		<li class="letter">c</li>
		<li class="letter">v</li>
		<li class="letter">b</li>
		<li class="letter">n</li>
		<li class="letter">m</li>
		<li class="character"><span class="off">,</span><span class="on">&lt;</span></li>
		<li class="character"><span class="off">.</span><span class="on">&gt;</span></li>
		<li class="character"><span class="off">/</span><span class="on">?</span></li>
		<li class="shift">Shift</li>
		<li class="alt-ctrl">Alt + Ctrl</li>	
		<li class="space"></li>
		<li class="alt-ctrl">Alt + Ctrl</li>	
	</ul>-->


</body>
</html>