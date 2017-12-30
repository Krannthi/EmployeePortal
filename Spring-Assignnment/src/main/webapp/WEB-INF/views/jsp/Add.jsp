<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter details</title>
</head>
<body>


<form method="post" action="AddServlet">

First Name: <input type="text" name ="fname" />
<br>
Last Name:<input type="text" name ="lname"/>
<br>

Middle Name:<input type="text" name ="mname"/>
<br>


Department:<select name="dept">
<option value = "testing"> Testing <option/>
<option value = "development"> Development<option/>
<option value = "Marketing"> Marketing <option/>
</select>
<br>
<br>

Address:<br>
Address Type:<input type="text" name ="add_type" />
Line1:<input type="text" name ="line1" />
Line2:<input type="text" name ="line2" />
State:<input type="text" name ="state" />
Country:<input type="text" name ="country" />
Zip:<input type="text" name ="zip" />
<br>
<br>

Degree: <br>
Name:<input type="text" name ="deg"/>
Year:<input type="text" name ="year" />
Institute:<input type="text" name ="institute"/>
GPA:<input type="text" name ="gpa"/>
<br>
<br>

Compensation:<br>
Join Date:<input type="text" name ="joindate" />
Title:<input type="text" name ="title" />
Salary:<input type="text" name ="salary" />
<br>
<br>

<input type="submit" value="submit"/>


</form>


</body>
</html>