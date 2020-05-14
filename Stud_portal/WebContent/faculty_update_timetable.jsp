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
String dep=request.getParameter("dept");
String l1=request.getParameter("lec1");
String l2=request.getParameter("lec2");
String l3=request.getParameter("lec3");
String l12=request.getParameter("lec12");
String l22=request.getParameter("lec22");
String l32=request.getParameter("lec32");
String l13=request.getParameter("lec13");
String l23=request.getParameter("lec23");
String l33=request.getParameter("lec33");

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/p_bank","root","devam12345");  
Statement stmt=con.createStatement();  	
stmt.executeUpdate("update time_table set first='"+l1+"', second='"+l2+"',third='"+l3+"',fourth='"+l12+"',fifth='"+l22+"',sixth='"+l32+"',seventh='"+l13+"',eight='"+l23+"',ninth='"+l33+"' where department='"+dep+"'");


System.out.println("Registered");
response.sendRedirect("faculty_home.html");
%>



</body>
</html>