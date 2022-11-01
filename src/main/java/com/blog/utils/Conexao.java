package com.blog.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    public static Connection conectar(){
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/db1";
        String user = "root";
        String password = "12345";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            con = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
//            throw new RuntimeException(e);
            return null;
        }
        return con;
    }
}
