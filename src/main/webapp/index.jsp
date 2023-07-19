<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
  <title>Текстовый квест - приветствие</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<h1>Добро пожаловать в текстовое приключение!</h1>
<p>Вы - герой, просыпающийся в сыром и пустом подземелье.</p>
<p>Ваша задача - выбрать правильный путь и пройти все испытания, чтобы достичь счастливой концовки!</p>
<p>Имя вашего персонажа будет запомнено:</p>
<form action="${pageContext.request.contextPath}/gameStart" method="post">
  <input type="text" name="name" placeholder="Введите ваше имя" required>
  <input type="submit" value="Начать игру">
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>
