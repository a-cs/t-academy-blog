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
}
