<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Sorting users</title>
    </head>

    <body>

        <h1>
            <c:forEach var="person" items="${sessionScope.personBase}">
                    <p>${person.firstName}: ${person.lastName}: ${person.sex}: ${person.region}: ${person.price}</p>
            </c:forEach>



        </h1>

    </body>
</html>
