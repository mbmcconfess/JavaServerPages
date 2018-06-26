<%--
  Created by IntelliJ IDEA.
  User: mbmcc
  Date: 6/25/2018
  Time: 7:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyForm Detail</title>

</head>
<body>
    <h2>बिबारान हारु येसपराकार चहान</h2>
<%
    String fname = request.getParameter("fName");
    String lname = request.getParameter("lName");
    String gender = request.getParameter("sex");
    String country = request.getParameter("country");
%>
<br><br><br>
<h2> Hello, <%=fname + " " + lname + " !" %></h2>
    तपाई <%=" " + gender + " "%> है ? अनि <%= " " + country + " "%> भन्ने देशबाट है ?
</body>
</html>
