/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.util.List;
import models.User;
import models.UserDAO;

/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/UserListServlet1"})
public class UserListServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
             UserDAO userDao = new UserDAO();
        List<User> users = userDao.getAllUsers(); // Obtener la lista de usuarios
        
        // Establecer la lista de usuarios en el request
        request.setAttribute("userList", users);
        
        // Redirigir a la página JSP que mostrará la lista
         request.getRequestDispatcher("index.jsp").forward(request, response);
        //request.getRequestDispatcher("views/userList.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("Error al desconectar" + e.getMessage());

        }

    }
    

}
