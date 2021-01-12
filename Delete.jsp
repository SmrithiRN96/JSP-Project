<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.Dao.EmpDao"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DELETE</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
EmpDao.deleteDetails(id);
response.sendRedirect("Display.jsp");
%>
</body>
</html>