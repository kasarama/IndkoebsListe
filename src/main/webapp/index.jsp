<%--
  Created by IntelliJ IDEA.
  User: magda
  Date: 04-03-2020
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Start</title>
</head>
<body>


<h2>Velkommen til din on-line IndkøbsListe</h2>


${requestScope.besked}

<form action="LogInServlet", method="post">
    <label for="fname">brugernav:</label><br>
    <input type="text" id="fname" name="navn"><br>
    <label for="lname">kodeord:</label><br>
    <input type="text" id="lname" name="kodeord"><br>

    <input type="submit" value="login">
</form>

<p>BLah blah blah</p>

</body>
</html>
