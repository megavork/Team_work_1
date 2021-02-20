<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Пробник</title>
    </head>
    <body>

        <form class="decor" method="post" action="/main" id="Name">
            <div class="form-left-decoration"></div>
            <div class="form-right-decoration"></div>
            <div class="circle"></div>
            <div class="form-inner">

                <h1><b>Personal Bank list</b></h1>

                <input type="search" name="firstName" placeholder="Enter your first name" required/>
                <input type="search" name="lastName" placeholder="Enter your last name" required/>

                <h2><b>Choose your sex:</b></h2>

                <div>
                    <input type="radio" name="sex" value="men" id="Men" required>
                    <label for="Men">Men</label>

                    <input type="radio" name="sex"  value="women" id="Women" required>
                    <label for="Women">Women</label>
                </div>

                <h2><b>Select your region:</b></h2>

                <div class="select-style">
                    <select name="region" required>
                        <option value="Minsk"> Minsk </option>
                        <option value="Vitebsk"> Vitebsk </option>
                        <option value="Gomel"> Gomel </option>
                        <option value="Grodno"> Grodno </option>
                        <option value="Mogilev"> Mogilev </option>
                        <option value="Brest"> Brest </option>
                    </select>
                </div>

                <h2><b>Enter your salary:</b></h2>
                <input type="number" name="price" placeholder="Enter your price" required/>

                <input type="reset" class="btn" value="Clear all"/>
                <input type="submit" class="btn" value="Send message"/>


            </div>
        </form>

    </body>
</html>