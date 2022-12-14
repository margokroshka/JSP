<%@ page import="java.io.FileOutputStream" %>
<%--
  Created by IntelliJ IDEA.
  User: NT
  Date: 11.12.2022
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<div>
    <%
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        if (login == null || password == null) {
            login = "";
            password = "";

        }
        if (!login.isEmpty() && !password.isEmpty()) {
            FileOutputStream fileOutputStream = new FileOutputStream("D://1.txt");
            String result = login + ";" + password;
            byte[] buffer = result.getBytes();
            fileOutputStream.write(buffer, 0, buffer.length);
            fileOutputStream.close();
            response.sendRedirect("Succesfully.jsp?a="+login);

        }
    %>
    <div>
    <form action="my-registration.jsp"  method="GET" >
        Login: <input type="text" name="login" />
        <br>
        <br>
        Password: <input  type="password" name="password"  minlength="4" maxlength="8" />
        <br>
        <br>
        <input type="submit" value="Submit" />
    </form>
    </div>
</div>
<div>
    <button onclick="location.href='/'">Main</button>
</div>
</body>
</html>
