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
            font-size: 130%;
        }
           </style>
</head>
<body>
<form class="form-horizontal" action="game" method="get">
    <br>
    <c:choose>
        <c:when test="${choice == '1'}">
            <p>Вы решаете пойти по правому пути. </p>
            <p>Вы обнаруживает ловушку и попадаете в подземный тюрьму.</p>
            <p>Вы должены отгадать загадку охранника, чтобы освободиться.</p>
            <p>Если вы побеждаете, то получаете свободу и становитесь героем подземелий.</p>
            <p>Если проигрываете, ваша судьба заканчивается здесь.</p>
            <br>
            <p>"Сколько программистов нужно, чтобы закрутить лампочку?"</p>

            <input type="number" name="answer" placeholder="Введите число" required>
            <input type="submit" value="Подтвердить">
        </c:when>
        <c:when test="${choice == '2'}">
            <p>Вы решаете пойти по левому пути.</p>
            <br>
            <p>Вы находите деревянный мост, который ведет к выходу из подземелья.</p>
            <p>Однако, мост трескается под его весом, и игрок должен решить,</p>
            <p>остаться на мосту и позвать на помощь или броситься вперед и рискнуть.</p>
            <br>
            <p>Что вы сделаете?</p>
            <br>
            <fieldset>
                <div class="control-group">
                    <div class="controls">
                        <button name="choice" value="5" class="btn btn-info"
                        >Позвать на помощь
                        </button>
                        <button name="choice" value="6" class="btn btn-success"
                        >Рискнуть
                        </button>
                    </div>
                </div>
            </fieldset>
        </c:when>
    </c:choose>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>