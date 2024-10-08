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

        <hr>




        <table border="1">
            <thead>
                <tr>
                   
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Fecha de Nacimiento</th>
                    <th>rol</th>
                    <th>Acciones</th>
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
                    
                    <td><%= user.getName()%></td>
                    <td><%= user.getEmail()%></td>
                    <td><%= user.getBirth()%></td>
                    <td><%= user.getRol()%></td>
                    <td>
                        <button type="button" class="edit-btn" data-bs-toggle="modal" data-bs-target="#editUserModal" 
                                onclick="fillEditModal('<%= user.getIdUserCC()%>', '<%= user.getName()%>', '<%= user.getEmail()%>', '<%= user.getBirth()%>', '<%= user.getRol()%>')">
                            Editar
                        </button>
                        <button type="button" class="delete-btn" data-user-id="<%= user.getIdUserCC()%>" data-bs-toggle="modal" data-bs-target="#deleteUserModal">
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


        <%@ include file="editUser.jsp" %>
        <%@ include file="deleteUser.jsp" %>

        <script src="js/modal.js"></script>
    </body>
</html>
