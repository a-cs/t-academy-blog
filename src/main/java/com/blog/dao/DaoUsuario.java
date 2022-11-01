package com.blog.dao;

import com.blog.entities.Usuario;
import com.blog.utils.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoUsuario {

    public static List<Usuario> usuarios = new ArrayList<Usuario>();

    public static List<Usuario> listar() {
        List<Usuario> lista =  new ArrayList<Usuario>();
        Connection con = Conexao.conectar();
        if(con != null) {
            try {
                PreparedStatement stm = con.prepareStatement("select * from usuarios");
                ResultSet rs = stm.executeQuery();
                while (rs.next()){
                    Usuario u = new Usuario();
                    u.setId(rs.getInt("id"));
                    u.setEmail(rs.getString("email"));
                    u.setSenha(rs.getString("senha"));
                    u.setAdmin(rs.getBoolean("isAdmin"));
                    lista.add(u);
                }
            } catch (SQLException e) {
                return lista;
            }
        }
        return lista;
    }

}