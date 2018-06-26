<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: mbmcc
  Date: 6/26/2018
  Time: 6:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String isbn = request.getParameter("ISBN");
    String title = request.getParameter("title");
    String auth = request.getParameter("authors");
    int price = Integer.parseInt(request.getParameter("price"));
    String pub = request.getParameter("pub");

    String url = "jdbc:sqlserver://localhost\\ITDEPT:1433;databaseName=sarbagya;integratedSecurity=true";
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection con = DriverManager.getConnection(url);
    Statement stmt = con.createStatement();
    ResultSet rs = null;

    String sql = "insert into BooksTbl values('" + isbn + "', '" + title + "', '" + auth + "', " + price + ", '" + pub + "')";
    stmt.executeUpdate(sql);
    out.println("Book is added successfully.");
%>
<h3>The data are:</h3>
<table border="1">
    <tr>
        <td>ISBN</td>
        <td>Title</td>
        <td>Author</td>
        <td>Price</td>
        <td>Publishers</td>
    </tr>
<%
    try{
        String result = "select * from BooksTbl";
        boolean results = stmt.execute(result);
                if(results){
                    ResultSet rst = stmt.getResultSet();
                    while(rst.next()){
                        out.println("<tr>");
                        String isb = rst.getString("ISBN");
                        String tit = rst.getString("Title");
                        String aut = rst.getString("Authors");
                        String pric = rst.getString("Price");
                        String pb = rst.getString("Publishers");
                        out.println("<td>" + isb + "</td>");
                        out.println("<td>" + tit + "</td>");
                        out.println("<td>" + aut + "</td>");
                        out.println("<td>" + pric + "</td>");
                        out.println("<td>" + pb + "</td>");
                        out.println("</tr>");
                    }
                }
        stmt.close();
        con.close();
    }catch (Exception e){
        e.printStackTrace();
    }
%>
</table>

</body>
</html>
