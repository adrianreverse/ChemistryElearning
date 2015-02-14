<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:url var="logoutUrl" value="/j_spring_security_logout" />
<c:set var="accountUrl" value="/account"/>
<c:set var="url" value="${requestScope['javax.servlet.forward.servlet_path']}" />


<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/home"> <img alt="Brand"
				src="${pageContext.request.contextPath}/img/laboratory.png" >
			</a>
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse" id="navbar-collapse">
			<div class="nav navbar-nav navbar-right">
				<ul class="list-inline">
					<li><a class="btn btn-link navbar-link home" href="${pageContext.request.contextPath}/home">
							<spring:message code="navbar.link.home" />
					</a></li>
					<security:authorize access="isAuthenticated()">
						<c:if test="${!fn:contains(url, accountUrl)}">
							<li><a class="btn btn-link navbar-link konto" href="${pageContext.request.contextPath}/account">
								My account</a></li>
						</c:if>
						<li><a href="${logoutUrl}" class="btn btn-success navbar-btn">
								<spring:message code="navbar.link.logout" />
						</a></li>
					</security:authorize>
					<security:authorize access="isAnonymous()">
						<li><input type="button"
							value="<spring:message code="app.link.signUp" />"
							class="btn btn-link navbar-link sign-up" id="signUp" /></li>
						<li><input type="button"
							value="<spring:message code="app.link.signIn" />"
							class="btn btn-success navbar-btn sign-in" id="signIn" /></li>
					</security:authorize>
				</ul>
			</div>
		</div>
	</div>
</nav>
