/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexion;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author User
 */
public class Conexion {
   private Connection con;
   private String url = "jdbc:mysql://localhost/db_registro";
   private String bdUser = "root";
   private String bdPass = "";

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }
   
    public void connect(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url,bdUser, bdPass);
            System.out.println("conectado");
        }
        catch(Exception e){
            System.out.println("Error al conectar" + e.getMessage());}
    }
    
    public void disconnect(){
         try{
          if(!con.isClosed()){
            con.close();
            System.out.println("desconectado");
          }
        }
        catch(Exception e){
            System.out.println("Error al desconectar1  " + e.getMessage());}
    }
}
