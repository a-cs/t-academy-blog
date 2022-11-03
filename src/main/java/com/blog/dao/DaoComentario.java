package com.blog.dao;

import com.blog.entities.Comentario;
import com.blog.utils.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoComentario {
    public static List<Comentario> comentarios = new ArrayList<Comentario>();

    public static List<Comentario> listar() {
        List<Comentario> lista =  new ArrayList<Comentario>();
        Connection con = Conexao.conectar();
        if(con != null) {
            try {
                PreparedStatement stm = con.prepareStatement("select * from comentarios");
                ResultSet rs = stm.executeQuery();
                while (rs.next()){
                    Comentario c = new Comentario();
                    c.setId(rs.getInt("id"));
                    c.setConteudo(rs.getString("conteudo"));
                    c.setDataCriacao(rs.getDate("dataCriacao"));
                    c.setAutorId(rs.getInt("autorId"));
                    c.setPostId(rs.getInt("postId"));
                    c.setApproved(rs.getBoolean("isApproved"));
                    lista.add(c);
                }
            } catch (SQLException e) {
                return lista;
            }
        }
        return lista;
    }

    public static List<Comentario> listarAprovadosPorPost(int postId) {
        List<Comentario> lista =  new ArrayList<Comentario>();
        Connection con = Conexao.conectar();
        if(con != null) {
            try {
                PreparedStatement stm = con.prepareStatement("select * from comentarios c where isApproved = true and postId = ?");
                stm.setInt(1, postId);
                ResultSet rs = stm.executeQuery();
                while (rs.next()){
                    Comentario c = new Comentario();
                    c.setId(rs.getInt("id"));
                    c.setConteudo(rs.getString("conteudo"));
                    c.setDataCriacao(rs.getDate("dataCriacao"));
                    c.setAutorId(rs.getInt("autorId"));
                    c.setPostId(rs.getInt("postId"));
                    c.setApproved(rs.getBoolean("isApproved"));
                    lista.add(c);
                }
            } catch (SQLException e) {
                return lista;
            }
        }
        return lista;
    }

    public static List<Comentario> listarAprovacaoPendente() {
        List<Comentario> lista =  new ArrayList<Comentario>();
        Connection con = Conexao.conectar();
        if(con != null) {
            try {
                PreparedStatement stm = con.prepareStatement("select * from comentarios where isApproved = FALSE ");
                ResultSet rs = stm.executeQuery();
                while (rs.next()){
                    Comentario c = new Comentario();
                    c.setId(rs.getInt("id"));
                    c.setConteudo(rs.getString("conteudo"));
                    c.setDataCriacao(rs.getDate("dataCriacao"));
                    c.setAutorId(rs.getInt("autorId"));
                    c.setPostId(rs.getInt("postId"));
                    c.setApproved(rs.getBoolean("isApproved"));
                    lista.add(c);
                }
            } catch (SQLException e) {
                return lista;
            }
        }
        return lista;
    }

    public static boolean aprovar(int id, int userId) {
        Connection con = Conexao.conectar();
        if (con != null) {
            if(DaoUsuario.isUserAdmin(userId)){
                String sql = "update comentarios set isApproved = true where id = ?";
                try {
                    PreparedStatement stm = con.prepareStatement(sql);
                    stm.setInt(1, id);
                    stm.execute();
                } catch (SQLException e) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public static Boolean comentar(Comentario c) {
        Connection con = Conexao.conectar();
        if (con != null) {
            String sql = "insert into comentarios (autorId, postId, isApproved, conteudo) values (?, ?, ?, ?);";
            try {
                PreparedStatement stm = con.prepareStatement(sql);
                stm.setInt(1, c.getAutorId());
                stm.setInt(2, c.getPostId());
                stm.setBoolean(3, c.isApproved());
                stm.setString(4, c.getConteudo());
                stm.execute();
            } catch (SQLException e) {
//                throw new RuntimeException(e);
                return false;
            }
            return true;
        }
        return false;
    }
}
