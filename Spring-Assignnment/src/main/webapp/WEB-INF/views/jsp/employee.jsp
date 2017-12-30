<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee</title>
</head>


<body>

<form method="post" action="UpdateServlet">

First Name: <input type="text" name ="fname" value = "${updateemp.fname}"/>
<br>
Last Name:<input type="text" name ="lname" value = "${updateemp.lname}"/>
<br>

Middle Name:<input type="text" name ="mname" value = "${updateemp.mname}"/>
<br>


Department:<select name="dept">
<option value = "${updateemp.department}"/>
<option value = "testing"> Testing <option/>
<option value = "development"> Development<option/>
<option value = "Marketing"> Marketing <option/>
</select>
<br>
<br>

Address:<br>
Address Type:<input type="text" name ="add_type" value = "${updateemp.address.type}"/>
Line1:<input type="text" name ="line1" value = "${updateemp.address.line1}"/>
Line2:<input type="text" name ="line2" value = "${updateemp.address.line2}"/>
State:<input type="text" name ="state" value = "${updateemp.address.state}"/>
Country:<input type="text" name ="country" value = "${updateemp.address.country}"/>
Zip: <input type="text" name ="zip" value = "${updateemp.address.zip}"/>
<br>
<br>

Degree: <br>
Name:<input type="text" name ="deg" value = "${updateemp.degree.name}"/>
Year:<input type="text" name ="year" value = "${updateemp.degree.year}"/>
Institute:<input type="text" name ="institute" value = "${updateemp.degree.institution}"/>
GPA:<input type="text" name ="gpa" value = "${updateemp.degree.gpa}"/>
<br>
<br>

Compensation:<br>
Join Date:<input type="text" name ="joindate" value = "${updateemp.compensation.joindate}"/>
Title:<input type="text" name ="title" value = "${updateemp.compensation.title}"/>
Salary:<input type="text" name ="salary" value = "${updateemp.compensation.salary}"/>
<br>
<br>

<input type="submit" value="submit"/>


</form>

</body>
</html>