/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import java.util.ArrayList;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;

import models.User;
import models.UserDAO;

//import com.google.gson;
/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String action = request.getParameter("action");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String birth = request.getParameter("birth");
            String idUserCC = request.getParameter("idUserCC");

            int resp;

            User userObj = new User(Integer.parseInt(idUserCC), name, email, birth);
            UserDAO userDao = new UserDAO();
            resp = "create".equals(action) ? userDao.insertUser(userObj) : userDao.updateUser(userObj);

            if (resp != 0) {

                response.sendRedirect("UserServlet?success=1");
                //response.sendRedirect("index.jsp");

            } else {

                response.sendRedirect("UserServlet?error=1");
                //response.sendRedirect("index.jsp");
                //request.getRequestDispatcher("/index.jsp").forward(request, response); // Mantener en la misma página

            }
        } catch (Exception e) {
            System.out.println("Error en metodo post edit: " + e.getMessage());
            response.sendRedirect("UserListServlet?error=1");
        }
    }

    @Override
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
