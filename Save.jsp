<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.Dao.EmpDao"%>
  <jsp:useBean id="e" class="com.Dto.EmpDto"></jsp:useBean>
  <jsp:setProperty property="*" name="e"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SAVE PAGE</title>
</head>
<body>
<%
//String name=request.getParameter("name");
//String pwd=request.getParameter("pwd");
//String email=request.getParameter("email");
//String country=request.getParameter("country");
//String gender=request.getParameter("gender");
/*EmpDto e =new EmpDto(); */
//if(gender.equals("male")){
//	gender="Male";
//}
//else{
//	gender="Female";
//}
//e.setName(name);
//e.setPwd(pwd);
//e.setEmail(email);
//e.setCountry(country);
//e.setGender(gender);
int status=EmpDao.saveDetails(e);
if(status!=0){
	out.println("SECCESFULLY INSERTED DATA");
}
else{
	response.sendRedirect("Error.jsp");
}
%><br><br>
<a href="Display.jsp">DISPLAY DATA TABLE</a>

</body>
</html>