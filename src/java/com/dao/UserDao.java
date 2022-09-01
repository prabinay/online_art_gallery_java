/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

/**
 *
 * @author Prab1n
 */
import com.config.dbConnection;
import com.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
    User users = null;

    //SQL queries
    private static final String INSERT_USERS_SQL = "INSERT INTO users" + " )   (user_name, user_pwd,user_email,user_phoneno) VALUES "
            + " (?, ?, ?, ?);";

    /*
    private static final String SELECT_ANSWERS_BY_ID = "select id, image, answer, created_date, edited_date, category_id, created_by_id from vsolution_answer where id =?;";
    private static final String SELECT_ALL_ANSWERS = "select * from vsolution_answer";
    private static final String DELETE_ANSWERS_SQL = "delete from vsolution_answer where id = ?;";
    private static final String UPDATE_ANSWERS_SQL = "update vsolution_answer set image= ?, answer = ?, created_date=?, edited_date=?, category_id =?, created_by_id=? where id = ?;";
    private static final String SELECT_ANSWER= "SELECT * FROM vsolution_answer INNER JOIN users ON vsolution_answer.created_by_id=users.id;";
     */
    PreparedStatement preparedStatement = null;

    public User addUser(int id) {
        // Step 1: Establishing a Connection
        try {
            con = dbConnection.getConnection();
            preparedStatement = con.prepareStatement(INSERT_USERS_SQL);
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            resultSet = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (resultSet.next()) {
                String uname = request.getParameter("name");
                String uemail = request.getParameter("email");
                String upwd = request.getParameter("pass");
                String Reupwd = request.getParameter("re_pass");
                String uphone = request.getParameter("contact");

                answers = new Answer(id, image, text, created_date, edited_date, category_id, created_by_id);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return answers;
    }

}
