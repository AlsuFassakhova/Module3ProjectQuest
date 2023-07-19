<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
  <title>Конец квеста</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<form action="restart" method="post">
  <c:choose>
  <c:when test="${choice == '3'}">
  <p>Ответ верный.</p>
  <p>Ни одного. Это аппаратная проблема, программисты их не решают.</p>
  <p>Вы сводобны.</p>
  <br>
  </c:when>
  <c:when test="${choice == '4'}">
  <p>Вы ответили неверно.</p>
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
  <c:when test="${choice == '7'}">
  <p>Ваше число - ${dice} </p>
  <p>Противник оказался сильнее.</p>
  <p>Здесь ваше приключение заканчивается.</p>
  <p>Попробуете еще раз?</p>
  </c:when>
  <c:when test="${choice == '8'}">
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
    <input type="submit" value="Начать заново">
  </form>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
          crossorigin="anonymous"></script>
</body>
</html>