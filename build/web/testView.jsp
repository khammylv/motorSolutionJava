<%-- 
    Document   : testView
    Created on : 4 oct 2024, 4:41:25 p. m.
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
       <h2>¡Gracias, <%= request.getAttribute("name") %>! Los datos han sido enviados correctamente.</h2>
    <p>Correo Electrónico: <%= request.getAttribute("email") %></p>
    <p>Fecha de nacimiento: <%= request.getAttribute("birth") %></p>
    <p>Id: <%= request.getAttribute("idUserCC") %></p>
     <p>mensaje: <%= request.getAttribute("mensaje") %></p>
    <a href="index.jsp">Volver al formulario</a>
    </body>
</html>
