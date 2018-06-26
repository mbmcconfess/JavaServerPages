<%--
  Created by IntelliJ IDEA.
  User: mbmcc
  Date: 6/25/2018
  Time: 7:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Process Action</title>
</head>
<body>
    <h2>Processing HTML file</h2>
<hr color="red" size="3">
<%
    int x = Integer.parseInt(request.getParameter("fnum"));
    int y = Integer.parseInt(request.getParameter("snum"));
    int z = x + y;
    out.println("Sum is: " + z);
%>
</body>
</html>
