<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.Dao.EmpDao" import="com.Dto.EmpDto" import="java.util.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DISPLAY</title>
</head>
<body>
<table border="1">
<tr><th>ID</th><th>NAME</th><th>PASSWORD</th><th>EMAIL</th><th>COUNTRY</th><th>GENDER</th></tr>
 <%
List<EmpDto> l=EmpDao.displayDetails();
request.setAttribute("list", l);



%>
<c:forEach items="${list}" var="e">
<tr><td>${e.getId()}</td><td>${e.getName()}</td><td>${e.getPwd()}</td><td>${e.getEmail()}</td><td>${e.getCountry()}</td><td>${e.getGender()}</td>
<td><a href="Update.jsp?id=${e.getId()}">UPDATE</a></td><td><a href="Delete.jsp?id=${e.getId()}">DELETE</a></td></tr>
</c:forEach>
</table>

</body>
</html>