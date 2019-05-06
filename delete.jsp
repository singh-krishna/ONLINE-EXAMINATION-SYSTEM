
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String qno=request.getParameter("value");
 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/krishna","root",""); 
Statement st= con.createStatement(); 
int i=st.executeUpdate("delete from exam where no='"+qno+"'"); 
if ( i>0 )
{
    response.sendRedirect("display1.jsp");
}
%>