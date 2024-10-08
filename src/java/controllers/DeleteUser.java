/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.UserDAO;

/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/DeleteUser"})
public class DeleteUser extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            int idUserCC = Integer.parseInt(request.getParameter("idUserCC"));
            int resp;
            UserDAO userDao = new UserDAO();
            resp = userDao.deleteUser(idUserCC);
            if (resp != 0) {
                response.sendRedirect("UserListServlet?success=1");
            } else {
                response.sendRedirect("UserListServlet?error=1");
            }
        } catch (Exception e) {
            System.out.println("Error al eliminar" + " " + e.getMessage());
            response.sendRedirect("UserListServlet?error=1");
        }

    }

}
