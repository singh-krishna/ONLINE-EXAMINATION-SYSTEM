<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/krishna","root",""); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from user where id='"+id+"'"); 
if(rs.next()) 
{
    ResultSet rt=st.executeQuery("select * from user where pass='"+pass+"'");
    if(rt.next())
    {
		response.sendRedirect("insert-question.html");
    }
    else
        out.println("Invalid password. Try again!");

}

else
 {
		out.println("Invalid password. Try again!");
} 
%>