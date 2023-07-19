<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Текстовый квест</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>

<form class="form-horizontal" action="game" method="get">
  <p>Мост ломается, но вы ловите упавшую веревку и выбираетесь наружу.</p>
  <p>Вы достигаете выхода и находите себя в мире солнца и свежего воздуха. </p>
  <p>Вы видит два пути, один ведущий на север, а другой на юг.</p>

  <fieldset>
    <legend>Куда вы пойдете?</legend>
    <div class="control-group">
      <div class="controls">
        <button name="choice" value="7" class="btn btn-success"
        >На юг
        </button>
        <button name="choice" value="8" class="btn btn-primary"
        >На север
        </button>
      </div>
    </div>
  </fieldset>

</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>