<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style> 

@import "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"; 

form{
	   
       position: relative;
       z-index: 1;
       background: lightblue;
       max-width: 360px;
       margin: 0 auto 100px;
       padding: 45px;
       text-align: center;
}

.textbox i{
       margin: 30px 640px 0;
}

form input{
       outline : 1;
       width: 70%;
       box-sizing: border-box;
       padding: 15px;
       
}

.button{
        	width: 100%;
        	background: none;
        	border : 2px solid;
        	color: black;
        	font-size: 18px;
        	
        }
        
        
a {
    background-color: grey;
    box-shadow: 0 5px 0 darkred;
    color: white;
    padding: 1em 1.5em;
    position: relative;
    text-decoration: none;
    text-transform: uppercase;
}
</style>

</head>
<body>

              <div class="textbox">
              	<i class="fa fa-user fa-5x" aria-hidden="true"></i> 
              </div>



<form action="time_table.html" method="get">
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.servlet.*" %>
<% 
String course = request.getParameter("course1");

Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection( "jdbc:mysql://localhost:3306/p_bank", "root", "devam12345");
Statement stmt=con.createStatement();  	
ResultSet rs = stmt.executeQuery("select * from time_table where department = '"+course+"' ");
%>


<TABLE cellpadding="15" border=normal  align=center style="background-color: lightyellow;">

<%
if (rs.next()) { 
	
%>
<TR>
<TD> <%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
</TR>

<TR>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>
</TR>


<% } %>

</body>
</html>