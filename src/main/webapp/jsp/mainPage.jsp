<%--
  Created by IntelliJ IDEA.
  User: Denis Belski
  Date: 18.02.2021
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file="/css/style.css"%>
</style>
<html>
    <head>
        <title>FirstPage</title>
    </head>

    <body>
        <div>
            <form class="mainForm" method="post" action="/main" id="Name">

                <input required class="fName" type="search" name="firstName" placeholder="Enter your first name" autofocus required/>
                <br/><br>
                <input required class="lName" type="search" name="lastName" placeholder="Enter your last name" />
                <br/>

                <p><b class="sexTitle">Choose your sex:</b></p>
                <p><input class="sexBox" name="sex" type="radio" value="men"> Men <input name="sex" type="radio" value="women"> Women</p>

                <select class="regionList" name="region">
                    <option value="Minsk"> Minsk </option>
                    <option value="Vitebsk"> Vitebsk </option>
                    <option value="Gomel"> Gomel </option>
                    <option value="Grodno"> Grodno </option>
                    <option value="Mogilev"> Mogilev </option>
                    <option value="Brest"> Brest </option>
                </select><br><br>

                <input class="pricePanel" type="number" name="price" placeholder="Enter your price" required/>
                <br/><br>

                <input type="submit" class="btn" value="submit" formnovalidate/>
                <input type="reset" class="btn" value="reset"/>

            </form>
        </div>
    </body>
</html>
