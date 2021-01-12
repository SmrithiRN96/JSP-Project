<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRATION</title>
</head>
<body>
<form action="Save.jsp" method="post">
<span>NAME : </span>
<input type="text" name="name"><br><br>
<span>PASSWORD :</span>
<input type="password" name="pwd"><br><br>
<span>EMAIL : </span>
<input type="email" name="email"><br><br>
<span>COUNTRY :</span>
<select name="country">
<option value="uae">UNITED ARAB EMIRATES</option>
<option value="india" >INDIA</option>
<option value="us">UNITED STATES</option>
</select><br>
<span>GENDER :</span>
<input type="radio" name="gender" value="male">MALE
<input type="radio" name="gender" value="female">FEMALE<br><br>
<input type="submit" value="REGISTER"><br><br>
<a href="Display.jsp">view</a>
</form>
</body>
</html>