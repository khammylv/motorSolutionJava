<%-- 
    Document   : editUser
    Created on : 7 oct 2024, 4:43:24 p. m.
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
        <div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editUserModalLabel">Editar Usuario</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="editUserForm" action="UserServlet" method="post">
                            <input type="hidden" name="action" value="update">
                            <input type="hidden" name="idUserCC" id="modalIdUserCC" value="">
                            <div class="mb-3">
                                <label for="modalName" class="form-label">Nombre</label>
                                <input type="text" class="form-control" name="name" id="modalName" required>
                            </div>
                            <div class="mb-3">
                                <label for="modalEmail" class="form-label">Email</label>
                                <input type="email" class="form-control" name="email" id="modalEmail" required>
                            </div>
                            <div class="mb-3">
                                <label for="modalBirth" class="form-label">Fecha de Nacimiento</label>
                                <input type="date" class="form-control" name="birth" id="modalBirth" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Actualizar Usuario</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
