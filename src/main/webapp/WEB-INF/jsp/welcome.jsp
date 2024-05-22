<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Пример страницы</title>
    <link rel="stylesheet" href="css/welcome.css">
</head>
<body>
<div class="information">
    <c:if test="${not (param.Info eq null) }">
        <c:out value="${param.Info}" />
    </c:if>
</div>
<div class="container right-panel-active">
    <!-- Sign Up -->
    <div class="container__form container--signup">
        <form action="MyController" class="form" method="post" id="form1">
            <input type="hidden" name="command" value="do_registration"/>
            <h2 class="form__title">Sign Up</h2>
            <input type="text" name="username" placeholder="User" class="input" />
            <input type="email" name="mail" placeholder="Email" class="input" />
            <input type="password" name="password" placeholder="Password" class="input" />
            <button class="btn" type="submit">Sign Up</button>
        </form>
    </div>

    <!-- Sign In -->
    <div class="container__form container--signin">
        <form action="MyController" class="form" method="post" id="form2">
            <input type="hidden" name="command" value="do_auth"/>
            <h2 class="form__title">Sign In</h2>
            <input type="email" name="login" placeholder="Email" class="input" />
            <input type="password" name="password" placeholder="Password" class="input" />
            <label><input type="checkbox" value="remember-me" name="remember-me">Remember me</label>
            <button type="submit" class="btn">Sign In</button>
        </form>
    </div>

    <!-- Overlay -->
    <div class="container__overlay">
        <div class="overlay">
            <div class="overlay__panel overlay--left">
                <button class="btn" id="signIn">Sign In+</button>
            </div>
            <div class="overlay__panel overlay--right">
                <button class="btn" id="signUp">Sign Up+</button>
            </div>
        </div>
    </div>
</div>
<script src="js/js.js"></script>
</body>
</html>