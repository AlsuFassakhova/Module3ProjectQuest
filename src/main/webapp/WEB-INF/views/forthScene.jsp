<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Текстовый квест</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        body {
            margin-top: 100px;
            font-family: george;
            text-align: center; /* Выравнивание по ширине */
            line-height: 1.0;
        }

        p {
            color: black;
            font-size: 130%;
        }
        .image-button {
            width: 100px;
            height: 105px;
            border: none;
            background-image: url('https://cdn-icons-png.flaticon.com/512/246/246569.png');
            background-size: cover;
        }
        .image-button:active {
            transform: scale(0.95);
        }
    </style>
</head>
<body>

<form class="form-horizontal" action="game" method="post">
    <c:choose>
        <c:when test="${choice == 7}">
            <p>Вы пошли на юг.</p>
            <p>Вы встречаете путешественника, который предлагает вам пойти на поиск затерянного сокровища.</p>
            <p>Вы принимаете задание и узнает, что сокровище находится в подземной пещере, охраняемой жуткими
                монстрами.</p>
            <p>Вам нужно победить монстров, чтобы продвинуться дальше.</p>
            <p>Бросьте кубики, они определят удалось ли вам это.</p>
        </c:when>
        <c:when test="${choice == 8}">
            <p>Вы идете на север.</p>
            <p>Там находите заброшенный замок и встречаете таинственную принцессу,</p>
            <p>которая просит вызволить из замка. Вы принимаете задание и узнаете, что замок охранает дракон.</p>
            <p>Бросьте кубики, они определят удалось ли вам победить дракона.</p>
        </c:when>
    </c:choose>

    <fieldset>
        <br>
        <p>Если выпадет от 1 до 6, вы проиграли</p>
        <p>Если выпадет от 7 до 12, вы выиграли</p>
        <br>
        <div class="control-group">
            <div class="controls">
                <button class="image-button" name="dice" value="0"></button>
<%--                <button name="dice" value="0" class="btn btn-primary"--%>
<%--                >Бросить кубик--%>
<%--                </button>--%>
<%--                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSixSeQDK0vi5b0srDhZaZT4DciOo_qnDJY6Q&usqp=CAU"--%>
<%--                     alt="diceIcon" style="width:20px;height:20px;">--%>
            </div>
        </div>
    </fieldset>

</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>