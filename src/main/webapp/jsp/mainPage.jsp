<%--
  Created by IntelliJ IDEA.
  User: Denis Belski
  Date: 18.02.2021
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>FirstPage</title>
    </head>

    <body>
        <div>
            <form method="post" action="/main" id="Name" >

                <input type="search" name="firstName" placeholder="Enter your first name" />
                <br/>
                <input type="search" name="lastName" placeholder="Enter your last name" />
                <br/>

                <p><b>Choose your sex:</b></p>
                <p><input name="sex" type="radio" value="men"> Men</p>
                <p><input name="sex" type="radio" value="women"> Women</p>

                <select name="region">
                    <option value="Minsk"> Minsk </option>
                    <option value="Vitebsk"> Vitebsk </option>
                    <option value="Gomel"> Gomel </option>
                    <option value="Grodno"> Grodno </option>
                    <option value="Mogilev"> Mogilev </option>
                    <option value="Brest"> Brest </option>
                </select><br><br>

                <input type="number" name="price" placeholder="Enter your price" />
                <br/>

                <input type="submit" class="btn" value="submit"/>
                <input type="reset" class="btn" value="reset"/>

            </form>
        </div>
    </body>
</html>
