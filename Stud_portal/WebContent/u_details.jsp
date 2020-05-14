<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update details jsp</title>
</head>
<body>
<%@page import="java.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>

<%
      String userid1 = request.getParameter("username3");
      String fname = request.getParameter("firstn3");
      String lname = request.getParameter("lastn3");
      String mobile = request.getParameter("mobilen1");
      String addr = request.getParameter("addr1");
      String passw6 = request.getParameter("passw6");
      String addr8 = request.getParameter("addr2");
      
      Class.forName("com.my	sql.jdbc.Driver");  
      Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/p_bank","root","devam12345");  
      Statement stmt=con.createStatement();
      ResultSet rs = stmt.executeQuery("select * from customer where username = '"+userid1+"'");

      
      if(rs.next())
      {
    	  if(rs.getString(2).equals(passw6))
    	  {
    	      stmt.executeUpdate("insert into customer_details values ('"+userid1+"','"+fname+"','"+lname+"','"+mobile+"','"+addr+"')");

    	  }
    	  	
    	  else
    	  {
    		  out.println("Invalid Password  Try again");
    	  }
      }
%>

</body>
</html>