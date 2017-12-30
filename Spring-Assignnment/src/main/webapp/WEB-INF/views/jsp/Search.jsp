<?xml version="1.0" encoding="ISO-8859-1" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">
	<jsp:directive.page contentType="text/html; charset=ISO-8859-1" 
		pageEncoding="ISO-8859-1" session="false"/>
	<jsp:output doctype-root-element="html"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		omit-xml-declaration="true" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search</title>
</head>
<body>

<form method="get" action="SearchServlet">
Emp-ID: <input type="text" name="id"/> <br/>
First Name: <input type="text" name="fname"/> <br/>
Last Name: <input type="text" name="lname" /> <br/>
 
<input type="submit" name ="search"  value="Search"/> 
</form> 

</body>
</html>
</jsp:root>