<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
    <title>Конец квеста</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        body {
            margin-top: 100px;
            font-family: george;
            text-align: center; /* Выравнивание по ширине */
            line-height: 1.0;
            color: black;

        }

        p {
            font-size: 130%;
        }
      </style>
</head>
<body>
<form action="restart" method="post">
    <br>
    <c:choose>
    <c:when test="${choice == '3'}">
    <p>Вы ответили верно!</p>
    <p>Ни одного. Это аппаратная проблема, программисты их не решают.</p>
    <p>Вы сводобны.</p>
    <br>
    </c:when>
    <c:when test="${choice == '4'}">
    <p>Вы ответили неверно!</p>
    <p>Ваша судьба заканчивается здесь.</p>
    <p>Попробуйте еще раз!</p>
    <br>
    </c:when>
    <c:when test="${choice == '5'}">
    <p>Вам помогают проходящие мимо путники. </p>
    <p>Но вскоре выясняется, что это разбойники. </p>
    <p>Они грабят вас и убивают.</p>
    <p>Попробуйте еще раз!</p>
    </c:when>
    <c:when test="${choice == '9'}">
    <p>Ваше число - ${dice} </p>
    <p>Противник оказался сильнее.</p>
    <p>Здесь ваше приключение заканчивается.</p>
    <p>Попробуете еще раз?</p>
    </c:when>
    <c:when test="${choice == '10'}">
    <p>Ваше число - ${dice} </p>
    <p>Вам повезло! </p>
    <p>Вы выполняете задание и получаете в награду сокровища. </p>
    </c:when>
    </c:choose>
    <br>
    <br>
    <br>
    <p>Ваше имя: <c:out value="${name}"/></p>
    <p>Сыгранные игры: <c:out value="${gamesPlayed}"/></p>
    <form action="restart" method="post">
        <div class="control-group">
            <div class="controls">
                <button name="choice" value="11" class="btn btn-warning"
                >Попробовать еще раз
                </button>
                <button name="choice" value="12" class="btn btn-danger"
                >Начать новую игру
                </button>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
</body>
</html>