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
            int resp = 0;
            User userObj = new User(Integer.parseInt(idUserCC), name, email, birth);
            UserDAO userDao = new UserDAO();

            switch (action) {
                case "create":
                    resp = userDao.insertUser(userObj);
                    break;

                case "update":
                    resp = userDao.updateUser(userObj);
                    break;

                case "delete":

                    resp = userDao.deleteUser(userObj.getIdUserCC());
                    break;

                default:
                    response.sendRedirect("UserServlet?error=1");
                    return;
            }

            if (resp != 0) {
                response.sendRedirect("UserServlet?success=1");
            } else {
                response.sendRedirect("UserServlet?error=1");
            }

        } catch (Exception e) {
            System.out.println("Error en metodo post edit: " + e.getMessage());
            response.sendRedirect("UserServlet?error=1");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            UserDAO userDao = new UserDAO();
            List<User> users = userDao.getAllUsers();
            request.setAttribute("userList", users);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("Error al desconectar" + e.getMessage());

        }

    }

}
