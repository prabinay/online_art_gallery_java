/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author Prab1n
 */
public class User {
    protected int id;
    protected String user_name;
    protected String user_pwd;
    protected String user_email;
    protected String user_phoneno;

    public User() {}

    public User(int user_id, String user_name, String user_email, String user_phoneno) {
        super();
        this.id = user_id;
        this.user_name = user_name;
        this.user_email = user_email;
        this.user_phoneno = user_phoneno;
    }
    
     public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return user_name;
    }
    public void getName(String user_name) {
        this.user_name = user_name;
    }
    public String getUserEmail() {
        return user_email;
    }
    public void setUserEmail(String user_email) {
        this.user_email = user_email;
    }
    public String getPhone() {
        return user_email;
    }
    public void setPhone(String user_phoneno) {
        this.user_phoneno = user_phoneno;
    }
}
