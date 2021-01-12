<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.Dao.EmpDao" import="com.Dto.EmpDto"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE</title>
</head>
<body>
<%
int a =Integer.parseInt(request.getParameter("id"));
EmpDto e=EmpDao.selectDetailsbyId(a);
%>
<form action="Done.jsp" method="post">
<input type="hidden" name="id" value="<%=e.getId()%>"><br>
<span>NAME : </span>
<input type="text" name="name" value="<%=e.getName()%>"><br><br>
<span>PASSWORD : </span>
<input type="password" name="pwd" value="<%=e.getPwd()%>"><br><br>
<span>EMAIL : </span>
<input type="email" name="email" value="<%=e.getEmail()%>"><br><br>
<span>COUNTRY :</span>
<select name="country">
<option value="uae" <c:if test="${e.getCountry eq uae}"> selected="selected"</c:if>>UNITED ARAB EMIRATES</option>
<option value="india"  <c:if test="${e.getCountry eq india}"> selected="selected"</c:if>>INDIA</option>
<option value="us" <c:if test="${e.getCountry eq us}"> selected="selected"</c:if>>UNITED STATES</option>
</select><br>
<span>GENDER :</span>
<input type="radio" name="gender" value="male" <c:if test="${e.getGender eq male}"> checked</c:if> >MALE
<input type="radio" name="gender" value="female" <c:if test="${e.getGender eq female}"> checked</c:if>>FEMALE<br><br>
<input type="submit" value="UPDATE">
</form>

</body>
</html>