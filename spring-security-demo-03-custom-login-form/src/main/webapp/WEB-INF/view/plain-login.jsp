<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Custom Login Page</title>
<style>
.failed {
	color: red;
}
</style>
</head>

<body>
	<h3>My Custom Login Page</h3>
	<form:form
		action="${pageContext.request.contextPath}/authenticateTheUser"
		methot="POST">
		<!-- Check for login error -->
		<c:if test="${param.error != null}">
			<i class="failed">Sorry you entered the wrong user/password</i>
		</c:if>
		<p>
			User name: <input type="text" name="username" />
		</p>
		<p>
			Password: <input type="password" name="password" />
		</p>
		<input type="submit" value="login" />
	</form:form>



</body>

</html>