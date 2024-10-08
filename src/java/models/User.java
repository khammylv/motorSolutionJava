/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author User
 */
public class User {

    private int idUserCC;
    private String name;
    private String email;
    private String birth;

    public User() {
    }

    public User(int idUserCC, String name, String email, String birth) {
        this.idUserCC = idUserCC;
        this.name = name;
        this.email = email;
        this.birth = birth;
    }

    public int getIdUserCC() {
        return idUserCC;
    }

    public void setIdUserCC(int idUserCC) {
        this.idUserCC = idUserCC;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }



}
