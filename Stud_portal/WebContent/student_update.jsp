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

<%
String pass=request.getParameter("cp");
String name=request.getParameter("name2");
String email = request.getParameter("email2");
String phone = request.getParameter("phone2");
String address = request.getParameter("add2");


Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/p_bank","root","devam12345");  
Statement stmt=con.createStatement();  	
ResultSet rs = stmt.executeQuery("select * from  customer where username = '"+pass+"' ");  

if(rs.next())
{
	if(rs.getString(1).equals(pass))
	{
		stmt.executeUpdate("update customer set name = '"+name+"' where username = '"+pass+"' ");  
		stmt.executeUpdate("update customer set email_id = '"+email+"' where username = '"+pass+"' "); 
		stmt.executeUpdate("update customer set phone_no = '"+phone+"' where username = '"+pass+"' "); 
		stmt.executeUpdate("update customer set address = '"+address+"' where username = '"+pass+"' "); 
		 response.sendRedirect("ad_home.html");

	}
	
	else
	 {
		 System.out.println("Username not matched");
		 response.sendRedirect("03.html");
	 }
}
System.out.println("Updated");
%>


</body>
</html>