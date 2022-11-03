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
                    u.setNome(rs.getString("nome"));
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

    public static Usuario listarPorId(int id) {
        Connection con = Conexao.conectar();
                Usuario u = null;
        if(con != null) {
            try {
                PreparedStatement stm = con.prepareStatement("select * from usuarios where id=?");
                stm.setInt(1, id);
                ResultSet rs = stm.executeQuery();
                if (rs.next()){
                    u = new Usuario();
                    u.setId(rs.getInt("id"));
                    u.setNome(rs.getString("nome"));
                    u.setEmail(rs.getString("email"));
                    u.setSenha(rs.getString("senha"));
                    u.setAdmin(rs.getBoolean("isAdmin"));
                }
            } catch (SQLException e) {
                return u;
            }
        }
        return u;
    }

    public static Usuario logar(String email, String senha){
        Connection con = Conexao.conectar();
        Usuario u = null;
        if(con != null) {
            try {
                PreparedStatement stm = con.prepareStatement("select * from usuarios where email=?");
                stm.setString(1, email);
                ResultSet rs = stm.executeQuery();
                if (rs.next()){
                    if(rs.getString("senha").equals(senha)){
                        u = new Usuario();
                        u.setId(rs.getInt("id"));
                        u.setNome(rs.getString("nome"));
                        u.setEmail(rs.getString("email"));
                        u.setSenha(rs.getString("senha"));
                        u.setAdmin(rs.getBoolean("isAdmin"));
                    }
                }
            } catch (SQLException e) {
                return u;
            }
        }
        return u;
    }

}
