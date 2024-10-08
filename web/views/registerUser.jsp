<%-- 
    Document   : registerUser
    Created on : 4 oct 2024, 3:51:03 p. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <title>ADD USER</title>
    </head>
    <body>

        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" id="launchButton">
            Agregar Usuario
        </button>

        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <form action="UserServlet" method="post">
                            <div class="form">
                                <input type="hidden" name="action" value="create">
                                <h1>Registro</h1>
                                <div class="grupo">
                                    <input type="text" name="name"required><span class="barra"></span>
                                    <label for="">Nombre</label>
                                </div>
                                <div class="grupo">
                                    <input type="idUserCC" name="idUserCC"><span class="barra"></span>
                                    <label for="idUserCC">Documento de identidad</label>
                                </div>

                                <div class="grupo">
                                    <input type="date" name="birth"><span class="barra"></span>
                                    <label for="birth">Fecha de nacimiento</label>
                                </div>
                                <div class="grupo">
                                    <input type="email" name="email"><span class="barra"></span>
                                    <label for="email">Email</label>
                                </div>
                                <div class="grupo">
                                    <select name="role" class="form-control" required>
                                        <option value="" disabled selected>Selecciona un rol</option>
                                        <option value="administrador">Administrador</option>
                                        <option value="empleado">Empleado</option>
                                       
                                    </select>
                                </div>

                                <button class="btn-form" type="submit">Registrar usuario</button>

                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
