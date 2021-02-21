<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/style_2.css">
        <title>Пробник</title>
    </head>

    <body>
        <form class="decor">
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Sex</th>
                    <th>Region</th>
                    <th>Taxes</th>
                </tr>

                <c:forEach var="person" items="${sessionScope.personBase}">
                    <tr>
                        <td>${person.firstName}</td>
                        <td>${person.lastName}</td>
                        <td>${person.sex}</td>
                        <td>${person.region}</td>
                        <td>
                            <fmt:formatNumber type = "number" maxFractionDigits="2" value="${person.price}"/>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </form>

        <p><img src="gifka/gifka.gif"></p>

    </body>
</html>
