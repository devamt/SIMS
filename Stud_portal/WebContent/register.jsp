<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> REGISTER JSP </title>
</head>
<body>

<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>

<%
String user=request.getParameter("user2");
String pwd=request.getParameter("psw2");
String name=request.getParameter("name2");
String email = request.getParameter("email2");
String phone = request.getParameter("phone2");
String address = request.getParameter("add2");
String course = request.getParameter("COU2");
String departm = request.getParameter("depart");
String sem = request.getParameter("sem2");

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/p_bank","root","devam12345");  
Statement stmt=con.createStatement();  	
stmt.executeUpdate("insert into customer values ('"+user+"','"+pwd+"','"+name+"','"+email+"','"+phone+"','"+address+"','"+course+"','"+departm+"','"+sem+"')");  

System.out.println("Registered");
response.sendRedirect("index.html");
%>



</body>
</html>