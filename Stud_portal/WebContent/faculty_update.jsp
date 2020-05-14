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
String pass=request.getParameter("facultyid");
String sub=request.getParameter("sub");
String depart = request.getParameter("depart");
String exp = request.getParameter("exp");
String phone = request.getParameter("phn");
String address = request.getParameter("addr");


Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/p_bank","root","devam12345");  
Statement stmt=con.createStatement();  	
ResultSet rs = stmt.executeQuery("select * from  add_faculty where faculty_id = '"+pass+"' ");  

if(rs.next())
{
	if(rs.getString(1).equals(pass))
	{
		stmt.executeUpdate("update add_faculty set subject = '"+sub+"' where faculty_id = '"+pass+"' ");
		stmt.executeUpdate("update add_faculty set experience = '"+exp+"' where faculty_id = '"+pass+"' ");  
		stmt.executeUpdate("update add_faculty set department = '"+depart+"' where faculty_id = '"+pass+"' "); 
		stmt.executeUpdate("update add_faculty set phone_no = '"+phone+"' where faculty_id = '"+pass+"' "); 
		stmt.executeUpdate("update add_faculty set address = '"+address+"' where faculty_id = '"+pass+"' "); 
		 response.sendRedirect("ad_home.html");

	}
	
	else
	 {
		 System.out.println("Password not matched");
		 response.sendRedirect("03.html");
	 }
}
System.out.println("Updated");
%>


</body>
</html>