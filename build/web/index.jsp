<%-- 
    Document   : index
    Created on : 4 oct 2024, 12:29:11 p. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="models.User" %>
<%@ page import="models.UserDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Motor Solution</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>
        <div class="container">

            <%
                String error = request.getParameter("error");
                String success = request.getParameter("success");
            %>

            <% if (error != null) { %>
            <div class="alert alert-danger">
                Ocurrió un error al registrar el usuario. Por favor, inténtelo de nuevo.
            </div>
            <% } %>

            <% if (success != null) { %>
            <div class="alert alert-success">
                Usuario registrado exitosamente.
            </div>
            <% }%>

            <%@include file= "views/registerUser.jsp" %>
       

            <%@include file= "views/userList.jsp" %>
      
        </div>
        <script>
            window.onload = function () {
                const timeout = 1000;

                // Obtener los parámetros de la URL
                const urlParams = new URLSearchParams(window.location.search);

                // Comprobar si existe el parámetro 'error' en la URL
                const errorParam = urlParams.get('error');
                const successParam = urlParams.get('success');
                var launchButton = document.getElementById('launchButton');
                if (urlParams.has('error') || urlParams.has('success')) {
                    launchButton.disabled = true;
                    setTimeout(function () {
                        window.location.href = "index.jsp"; // Redirigir a la página principal
                    }, timeout);
                }

            };

        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" ></script>
    </body>
</html>
