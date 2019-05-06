<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %> 
<%@page import="java.util.*"%>
<%

    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/krishna","root","");
    Statement stmt=conn.createStatement();
    ResultSet rs= stmt.executeQuery("select * from exam");
    /*String q = stmt.executeQuery("select statement from exam ");
    String opt1= stmt.executeQuery("select opt1 from exam ");
    String op2 = stmt.executeQuery("select opt2 from exam ");
    String op3 = stmt.executeQuery("select opt3 from exam ");
    String op4 = stmt.executeQuery("select opt4 from exam ");*/
   
    %>
    <html>
    <head>
        <title>Practice Quiz</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="top">
            <h1>&nbsp Practice Quiz :</h1>
           <a href="login.html"><button class="logout"  style="float: right;">Logout</button></a>
        </div>

        <%
    while(rs.next())
    {
        %>
        <div id="question">
         out.println("Question"+rs.getString("statement"));
        out.println("<br>");
         out.println("1"+rs.getString("opt1")); 
        out.println("<br>");
        out.println("1"+rs.getString("opt2")); 
        out.println("<br>");
        out.println("1"+rs.getString("opt3"));
        out.println("<br>");
        out.println("1"+rs.getString("opt4"));
        out.println("<br>");
		out.println("1"+rs.getString("ans"));
        out.println("<br>");
        </div>
    }
    %>
    <input type="submit" value="submit"/>
     </body>
     </html>

     <script>
    var s=''
    s=<input type="radio" name="radio" value="A"><% out.println(rs.getString("opt1")); %>+

    

     </script>
    