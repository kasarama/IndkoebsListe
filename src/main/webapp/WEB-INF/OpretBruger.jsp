<%--
  Created by IntelliJ IDEA.
  User: magda
  Date: 05-03-2020
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Opret bruger</title>
</head>
<body>

Here kan du registrere dig som ny bruger på Huske Listen
<br>
<br>
<br>

${requestScope.besked}

<br>
<br>
<br>


<form action="OpretBrugerServlet", method="post">
    <label for="fname">brugernavn:</label><br>
    <input type="text" id="fname" name="navn"><br>
    <label for="lname">kodeord:</label><br>
    <input type="text" id="lname" name="kodeord"><br>

    <input type="submit" value="opret ny bruger">
</form>



</body>
</html>
