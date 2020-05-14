<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add_teacher</title>
</head>
<body>

<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
String facultid = request.getParameter("facultyid");
String facult = request.getParameter("faculty");
String qualif = request.getParameter("quali");
String subj = request.getParameter("sub");
String departm = request.getParameter("depart");
String expe = request.getParameter("exp");
String phno = request.getParameter("phn");
String email6 = request.getParameter("email5");
String pwd = request.getParameter("pass");
String add = request.getParameter("addr");

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/p_bank","root","devam12345");  
Statement stmt=con.createStatement();  	
stmt.executeUpdate("insert into add_faculty values('"+facultid+"','"+facult+"','"+qualif+"','"+subj+"','"+departm+"','"+expe+"','"+phno+"','"+email6+"','"+pwd+"','"+add+"')");

System.out.println("Registered");
response.sendRedirect("ad_home.html");


%>


</body>
</html>