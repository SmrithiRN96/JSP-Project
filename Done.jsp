<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.Dao.EmpDao"%>
    <jsp:useBean id="e" class="com.Dto.EmpDto"></jsp:useBean>
    <jsp:setProperty property="*" name="e"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATED</title>
</head>
<body>
<%
int status=EmpDao.updateDetails(e);
//out.print(status);
if(status!=0){
	out.println("SUCCESSFULLY UPDATED");
	RequestDispatcher rd=request.getRequestDispatcher("Display.jsp");
	rd.include(request, response);
}
else{
	response.sendRedirect("Error.jsp");
}
%>
</body>
</html>