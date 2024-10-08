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

                    <div class="modal-body">



                        <form id="editUserForm" action="UserServlet" method="post" >
                            <div class="form">
                                <input type="hidden" name="action" value="update">
                                <input type="hidden" name="idUserCC" id="modalIdUserCC" value="">
                                <h1>Editar Usuario</h1>
                                <div class="grupo">
                                    <input type="text" name="name" id="modalName" required><span class="barra"></span>
                                   <label for="">Nombre</label>
                                </div>
                               <div class="grupo">
                                    <input type="date" name="birth"  id="modalBirth" required><span class="barra"></span>
                                    <label for="">Fecha de nacimiento</label>
                                </div>
                                <div class="grupo">
                                    <input type="email" name="email" id="modalEmail" required><span class="barra"></span>
                                    <label for="">Email</label>
                                </div>
                                <div class="grupo">
                                    <select name="role" id="modalRol" class="form-control" required>
                                        <option value="" disabled selected>Selecciona un rol</option>
                                        <option value="administrador">Administrador</option>
                                        <option value="empleado">Empleado</option>

                                    </select>
                                </div>

                                <button class="btn-form" type="submit">Registrar usuario</button>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
