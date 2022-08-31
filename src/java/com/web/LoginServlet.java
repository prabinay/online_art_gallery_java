/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.web;


import jakarta.servlet.RequestDispatcher;
import java.io.IOException;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;

import com.config.dbConnection;
import jakarta.servlet.http.HttpSession;
import java.sql.ResultSet;


/**
 *
 * @author Prab1n
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
  

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uemail = request.getParameter("username");
        String upwd = request.getParameter("password");
        HttpSession session = request.getSession();
        
        RequestDispatcher dispatcher = null;
        
        /*server side validation*/
        if(uemail == null || uemail.equals(""))
        {
            request.setAttribute("status", "invalidEmail");
            dispatcher= request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }        
        if(upwd==null || upwd.equals("")){
            request.setAttribute("status", "invalidUpwd");
            dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
        
        try{
            Connection con = dbConnection.getConnection();
            PreparedStatement pst = con.prepareStatement("select *from users where user_email =? and user_pwd=?");
            pst.setString(1,uemail);
            pst.setString(2,upwd);
            
            pst.executeQuery();
            
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                session.setAttribute("name", rs.getString("user_name"));
                dispatcher = request.getRequestDispatcher("index.jsp");
            }
            else{
                request.setAttribute("status","failed");
                dispatcher = request.getRequestDispatcher("login.jsp");
            }
            dispatcher.forward(request, response);
        }catch(Exception e){
            e.printStackTrace();
        }
    }

  
}
