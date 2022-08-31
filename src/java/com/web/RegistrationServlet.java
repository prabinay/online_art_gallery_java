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


/**
 *
 * @author Prab1n
 */
/**
 * Servlet implementation class RegistrationServlet
 *
 */

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("pass");
        String Reupwd = request.getParameter("re_pass");
        String uphone = request.getParameter("contact");
        
        RequestDispatcher dispatcher = null;
        
        /*serverside validation*/
        if(uname == null || uname.equals(""))
        {
            request.setAttribute("status", "invalidName");
            dispatcher= request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request, response);
        }        
        if(uemail==null || uemail.equals("")){
            request.setAttribute("status", "invalidEmail");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request, response);
        }
        
        if(upwd==null || upwd.equals("")){
            request.setAttribute("status", "invalidUpwd");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request, response);
        } else if(!upwd.equals(Reupwd)){
            request.setAttribute("status", "invalidConfirmPassword");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request, response);
        }
        if(uphone==null || uphone.equals("")){
            request.setAttribute("status", "invalidPhone");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request, response);
        }else if(uphone.length() > 10){
            request.setAttribute("status", "invalidPhonelength");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request, response);
        }
        
      
        
        try {
            Connection con = dbConnection.getConnection();
            PreparedStatement pst = con.prepareStatement("insert into users (user_name, user_pwd,user_email,user_phoneno) values(?,?,?,?)");
            pst.setString(1,uname);
            pst.setString(2,upwd);
            pst.setString(3,uemail);
            pst.setString(4,uphone);
            
            int rowCount = pst.executeUpdate();
            
            dispatcher = request.getRequestDispatcher("registration.jsp");
            if(rowCount>0){
                request.setAttribute("status","success");
               
            }
            else{
                request.setAttribute("status", "failed");           
            }
            dispatcher.forward(request, response);
            
        } catch (ServletException | IOException | SQLException e) {
        }
        
        }

    }

