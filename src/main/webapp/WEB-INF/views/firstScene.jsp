<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
  <title>Текстовый квест</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<p>${name},вы просыпаетесь в сыром и пустом подземелье.</p>
<p>Как только вы осматривает свое окружение,</p>
<p>замечаете два пути - направо и налево.</p>
<p>Куда вы пойдете?</p>
<form class="form-horizontal" action="game" method="get">
  <fieldset>
    <legend>Куда вы пойдете?</legend>
    <div class="control-group">
      <div class="controls">
        <button name="choice" value="1" class="btn btn-success"
        >Направо</button>
        <button name="choice" value="2" class="btn btn-primary"
        >Налево</button>
      </div>
    </div>
  </fieldset>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>
