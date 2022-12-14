<%--
  Created by IntelliJ IDEA.
  User: NT
  Date: 11.12.2022
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
<div class="col-md-4">
  <div class="input-group has-validation">
    <span class="input-group-text" id="inputGroupPrepend3">Имя пользователя</span>
    <input type="text" class="form-control is-invalid" id="validationServerUsername" aria-describedby="inputGroupPrepend3 validationServerUsernameFeedback" required>
    <div id="validationServerUsernameFeedback" class="invalid-feedback">
      Пожалуйста, выберите имя пользователя.
    </div>
  </div>

  <div class="input-group has-validation">
    <span class="input-group-text" id="inputGPassword">Пароль</span>
    <input id="hexId" type="password" pattern="[0-9]{4,8}" aria-describedby="inputGroupPrepend3 validationServerUsernameFeedback" required>
    <div id="validationServerPasswordFeedback" class="invalid-feedback">
      Пароль должен состояться из 4-8 цифр
    </div>

  </div>
</div>
</body>
</html>

