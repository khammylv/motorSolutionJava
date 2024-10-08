/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexion;

import java.util.List;
import models.User;
import models.UserDAO;

/**
 *
 * @author User
 */
public class UnitTest {

    public static void main(String[] args) {
        /*Conexion obj = new Conexion();
       obj.connect();
       obj.disconnect();*/

        Conexion obj = new Conexion();
        obj.connect();
        UserDAO userDao = new UserDAO();
        // Obtener la lista de usuarios
        List<User> users = userDao.getAllUsers();

        if (users.isEmpty()) {
            // Redirigir al servlet para cargar la lista
            System.out.println("Numero de usuarios: " + users.size());
            return; // Asegúrate de detener el procesamiento de JSP
        } else {
            System.out.println("Numero de usuarios: " + users.size());
           
        }
        // Mostrar los usuarios
        /*for (User user : users) {
            System.out.println(user.getName() + user.getIdUserCC());
        }*/

        obj.disconnect();
    }

}
