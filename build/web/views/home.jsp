<%-- 
    Document   : home
    Created on : 8 oct 2024, 1:10:19 p. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file= "../templates/navBar.jsp" %>
        
        <br>
        <div class="container">
            <div class="alert alert-primary">
                <h3>Lista de Usuario</h3>
            </div>
            <hr>
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

            <%@include file= "registerUser.jsp" %>


            <%@include file= "userList.jsp" %>

        </div>
        <script src="js/index.js"></script>
    </body>
</html>
