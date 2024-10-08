<%-- 
    Document   : UserList
    Created on : 7 oct 2024, 2:57:00 p. m.
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
        <title>JSP Page</title>
    </head>
    <body>

        <h2>Lista de Usuarios</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Fecha de Nacimiento</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Obtener la lista de usuarios del request
                    List<User> userList = (List<User>) request.getAttribute("userList");
                    if (userList != null && !userList.isEmpty()) {
                        for (User user : userList) {
                %>
                <tr>
                    <td><%= user.getIdUserCC()%></td>
                    <td><%= user.getName()%></td>
                    <td><%= user.getEmail()%></td>
                    <td><%= user.getBirth()%></td>
                    <td>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editUserModal" 
                                onclick="fillEditModal('<%= user.getIdUserCC()%>', '<%= user.getName()%>', '<%= user.getEmail()%>', '<%= user.getBirth()%>')">
                            Editar
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-danger btn-delete-user" data-user-id="<%= user.getIdUserCC()%>" data-bs-toggle="modal" data-bs-target="#deleteUserModal">
                            Eliminar
                        </button>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="4">No hay usuarios registrados.</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <%
            // Verificar si la lista está vacía o nula y redirigir al servlet
            if (userList == null || userList.isEmpty()) {
                // Redirigir al servlet para cargar la lista
                response.sendRedirect("UserServlet");
                return; // Asegúrate de detener el procesamiento de JSP
            }
        %>
        <%@ include file="editUser.jsp" %>
        <%@ include file="deleteUser.jsp" %>
        <script>
            function fillEditModal(idUserCC, name, email, birth) {
                console.log(idUserCC);
                document.getElementById('modalIdUserCC').value = idUserCC;
                document.getElementById('modalName').value = name;
                document.getElementById('modalEmail').value = email;
                document.getElementById('modalBirth').value = birth;
            }
            document.addEventListener('DOMContentLoaded', function () {
                var deleteButtons = document.querySelectorAll('.btn-delete-user');

                deleteButtons.forEach(function (button) {
                    button.addEventListener('click', function () {
                        var userId = button.getAttribute('data-user-id');
                        console.log("userID: "+userId);
                        // Asignar el ID al campo visible
                        document.getElementById('idUserCCView').innerText  = userId; // O para la opción 2, usar innerHTML
                        // Asignar el ID al campo oculto para enviarlo al servidor
                        document.getElementById('idUserCC').value = userId;
                    });
                });
            });
        </script>
    </body>
</html>
