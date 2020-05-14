<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.servlet.*" %>
<%
String userid = request.getParameter("user4");
String pwd = request.getParameter("psw4");

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/p_bank","root","devam12345");  
Statement stmt=con.createStatement();  	
ResultSet rs = stmt.executeQuery("select * from admin where username = '"+userid+"'");

if(rs.next())
{
	if(rs.getString(2).equals(pwd)) // checking if password are same
	{
		System.out.println("welcome  " +userid);
	    response.sendRedirect("ad_home.html");
	}
	else
	{
		System.out.println("invalid password");
		System.out.println("Please Try Again");
		response.sendRedirect("02.html");

	}
	}
	
	else
	{
		response.sendRedirect("01.html");
	}

%>

</body>
</html>