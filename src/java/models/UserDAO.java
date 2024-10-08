/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class UserDAO extends Conexion {

    public int insertUser(User user) {
        int response = 0;
        try {
            this.connect();
            String sql = "INSERT INTO tbl_user(idUserCC, name, email, birth, rol) VALUES (?,?,?,?,?)";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setInt(1, user.getIdUserCC());
            pre.setString(2, user.getName());
            pre.setString(3, user.getEmail());
            pre.setString(4, user.getBirth());
            pre.setString(5, user.getRol());
            response = pre.executeUpdate();

        } catch (SQLException e) {
            System.out.println("error" + e.getMessage());
        } finally {
            this.disconnect();
        }
        return response;
    }

    public List<User> getAllUsers() {
        List<User> userList = new ArrayList<>();
        try {
            this.connect();
            String sql = "SELECT * FROM tbl_user";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs = pre.executeQuery();

            while (rs.next()) {
                int idUserCC = rs.getInt("idUserCC");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String birth = rs.getString("birth");
                String rol = rs.getString("rol");
                User user = new User(idUserCC, name, email, birth, rol);
                userList.add(user);
            }
        } catch (SQLException e) {
            System.out.println("Error al obtener usuarios: " + e.getMessage());
        } finally {
            this.disconnect();
        }
        return userList;
    }

    public int updateUser(User user) {
        int response = 0;
        try {
            this.connect();
            String sql = "UPDATE tbl_user SET name=?, email=?, birth=?, rol=? WHERE idUserCC=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setString(1, user.getName());
            pre.setString(2, user.getEmail());
            pre.setString(3, user.getBirth());
            pre.setString(4, user.getRol());
            pre.setInt(5, user.getIdUserCC());
            
            response = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al actualizar usuario: " + e.getMessage());
        } finally {
            this.disconnect();
        }
        return response;
    }

    public int deleteUser(int id) {
        int response = 0;
        try {
            this.connect();

            String sql = "DELETE FROM tbl_user WHERE idUserCC=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setInt(1, id);
            response = pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al eliminar usuario: " + e.getMessage());
        } finally {
            this.disconnect();
        }
        return response;
    }

}
