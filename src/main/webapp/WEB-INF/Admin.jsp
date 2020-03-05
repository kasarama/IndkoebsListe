<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: magda
  Date: 05-03-2020
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>

<h2>Velkommen til Admin side</h2>
<h3>Her kan du administrere liste af brugere</h3>

<br>
<br>
<br>

<c:forEach var="element" items="${applicationScope.brugerMap}">
    ${element}
    <br>

    <form action="AdminServlet", method="post">
        <label for="fname">brugernavn:</label><br>
        <input type="text" id="fname" name="navn"><br>


        <input type="submit" value="Slet">
    </form>


</c:forEach>






</body>
</html>
