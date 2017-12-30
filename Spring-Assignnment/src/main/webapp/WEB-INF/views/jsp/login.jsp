<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<body>
	
<c:if test="${Authentication != null}">
<c:out value="Invalid credential. Enter valid user id,password">
</c:out>
</c:if>
		
	<form method="post" action="Employee/Login">

		User id: <input type="text" name="id"> <br>
		Password: <input type="password" name="password"> <br>
		<input type="submit" value="login"> <a href="Register.jsp">Register
			here</a>

	</form>

</body>
</html>
