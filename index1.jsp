<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/krishna","root","");
Statement st=conn.createStatement();
String sql="insert into student values('"+id+"','"+pass+"')";
int count=st.executeUpdate(sql);
if(count>0)
{
    response.sendRedirect("login1.html");

}
else
{
    out.println(" error!!!");
}
%>