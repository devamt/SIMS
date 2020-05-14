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
String user=request.getParameter("user");
String proj=request.getParameter("project");
String atten=request.getParameter("atten");
String deca=request.getParameter("deca");
String sem=request.getParameter("sem");


Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/p_bank","root","devam12345");  
Statement stmt=con.createStatement();  	
stmt.executeUpdate("insert into marks values ('"+user+"','"+proj+"','"+atten+"','"+deca+"','"+sem+"')");  

System.out.println("Registered");
response.sendRedirect("faculty_home.html");
%>



</body>
</html>