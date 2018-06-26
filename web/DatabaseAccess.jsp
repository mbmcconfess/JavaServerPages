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
    String auth = request.getParameter("price");
    int price = Integer.parseInt(request.getParameter("price"));
    String pub = request.getParameter("pub");

    String url = "jdbc:sqlserver://localhost\\ITDEPT:1433;databaseName=sarbagya;integratedSecurity=true";
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection con = DriverManager.getConnection(url);
    Statement stmt = con.createStatement();
    ResultSet rs = null;

    
%>

</body>
</html>
