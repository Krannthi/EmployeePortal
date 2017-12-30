<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>
Records</title>
</head>
<body>

<c:if test="${NoRecords == true}">
<c:out value="No Records found">
</c:out>
</c:if>

<c:if test="${NoRecords == false}">

<form method="post" action="DeleteModifyServlet">
<table border="2">
<tr>
<th>
Last Name </th>
<th>
First Name </th>
<th>
Middle Name </th>
<th>
Department </th>
<th>
Address </th>
<th>
Degree </th>
<th>
Year </th>
<th>
Institution </th>
<th>
GPA </th>
<th>
Join-Date </th>
<th>
Salary </th>
<th>
title </th>
</tr>


<c:forEach items="${Employees}" var ="Employee">

<tr>

<td> 
${Employee.lname}
</td>
<td> 
${Employee.fname}
</td>
<td> 
${Employee.mname}
</td>
<td> 
${Employee.department}
</td>
<td> 
${Employee.address.line1} ${Employee.address.line2} ${Employee.address.state} ${Employee.address.country} ${Employee.address.zip}
</td>

<td> 
${Employee.degree.name}
</td>

<td> 
${Employee.degree.year}
</td>

<td> 
${Employee.degree.year}
</td>

<td> 
${Employee.degree.gpa}
</td>

<td> 
${Employee.compensation.joindate}
</td>
<td> 
${Employee.compensation.salary}
</td>
<td> 
${Employee.compensation.title}
</td>
<td>
<input type="checkbox" name="id" value = "${Employee.id}" />
 </td>

</tr>

</c:forEach>
</table>

<input type="submit" name ="Add" value="Add" />

<input type="submit" name="modify" value="Modify" />
<input type="submit" name ="delete" value="Delete" />

</form>

</c:if>

</body>
</html>