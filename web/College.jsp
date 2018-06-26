<%--
  Created by IntelliJ IDEA.
  User: mbmcc
  Date: 6/25/2018
  Time: 6:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>College</title>
</head>
<body>
    <font size="3">
        <br><center><h2>
        <%="Print ten times"%>
    </h2>
        <hr color="blue" size="3">

        <%
        for(int i=1;i<=10;i++){
            out.println(i + ". " + "Madan Bhandari Memorial College </br>");
        }
        %>
    </center>
    </font>

</body>
</html>
