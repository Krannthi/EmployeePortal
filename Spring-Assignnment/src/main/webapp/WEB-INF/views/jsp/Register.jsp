<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<head>
<title>Register</title>
</head>
<body>

<c:if test="${username != null}">
<c:out value="Username already exists">
</c:out>
</c:if>

<c:if test="${length != null}">
<c:out value="Password must be atleast 8 characters in length">
</c:out>
</c:if>


<form method="post" action="RegServlet">
User ID: <input type="text" name="id" required/> <br/>
Password: <input type="password" name="password" minlength = "8" required/> <br/>

Roles: <select name="role">
  <option value="admin"> Admin </option>
  <option value="other"> Other </option>

</select>
 
<input type="submit" value="Register"/> 
</form> 

</body>
</html>
