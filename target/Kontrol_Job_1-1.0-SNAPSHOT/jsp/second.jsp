<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/page_two_style.css">
    <title>Пробник</title>
</head>
<body>

<div class="center">
    <h1 align="center">Данные клиентов</h1>
</div>

<form class="decor">

    <h1>
        <table border="1" cellspacing="0" cellpadding="2">
            <tr>
                <!--<td>ID</td> Надо бы добавить-->
                <td>First name</td>
                <td>Last name</td>
                <td>Sex</td>
                <td>Region</td>
                <td>Price</td>
            </tr>

            <c:forEach var="person" items="${sessionScope.personBase}">
                <tr>
                    <!--<td>person.id</td> Так же-->
                    <td>${person.firstName}</td>
                    <td>${person.lastName}</td>
                    <td>${person.sex}</td>
                    <td>${person.region}</td>
                    <td>${person.price}</td>
                </tr>
            </c:forEach>
        </table>

    </h1>
</form>

</body>
</html>
