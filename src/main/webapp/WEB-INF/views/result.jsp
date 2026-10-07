<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculator Result</title>
</head>
<body>

<h1>Result</h1>

<%
    String error = (String) request.getAttribute("error");
    Object result = request.getAttribute("result");
%>

<% if (error != null) { %>

    <h2 style="color: red;">
        Error: <%= error %>
    </h2>

<% } else { %>

    <h2>
        Result: <%= result %>
    </h2>

<% } %>

<br>

<a href="index.jsp">Back to calculator</a>

</body>
</html>