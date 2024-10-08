<%-- 
    Document   : DeleteUser
    Created on : 7 oct 2024, 6:36:54 p. m.
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
        <!-- Modal de confirmación de eliminación -->
        <div class="modal fade" id="deleteUserModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Eliminar usuario</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="deleteUserForm" action="UserServlet" method="post">
                            <p>¿Estás seguro de que deseas eliminar este usuario?</p>

                            <!-- Campo oculto para enviar el ID del usuario -->
                            <input type="hidden" name="idUserCC" id="idUserCC" value="">

                            <!-- Mostrar el ID del usuario -->
                            <div class="mb-3">
                                <label>ID del Usuario: </label>
                                <span id="idUserCCView"></span>
                            </div>
                            <input type="hidden" name="action" value="delete">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-danger" form="deleteUserForm">Eliminar</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
