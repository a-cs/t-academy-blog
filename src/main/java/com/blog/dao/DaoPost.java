package com.blog.dao;

import com.blog.entities.Post;
import com.blog.utils.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoPost {

    public static List<Post> post = new ArrayList<Post>();

    public static List<Post> listar() {
        List<Post> lista =  new ArrayList<Post>();
        Connection con = Conexao.conectar();
        if(con != null) {
            try {
                PreparedStatement stm = con.prepareStatement("select * from posts");
                ResultSet rs = stm.executeQuery();
                while (rs.next()){
                    Post p = new Post();
                    p.setId(rs.getInt("id"));
                    p.setTitulo(rs.getString("titulo"));
                    p.setConteudo(rs.getString("conteudo"));
                    p.setDataCriacao(rs.getDate("dataCriacao"));
                    p.setAutorId(rs.getInt("autorId"));
                    lista.add(p);
                }
            } catch (SQLException e) {
                return lista;
            }
        }
        return lista;
    }

    public static List<Post> listarUltimos10() {
        List<Post> lista =  new ArrayList<Post>();
        Connection con = Conexao.conectar();
        if(con != null) {
            try {
                PreparedStatement stm = con.prepareStatement("select * from posts p order by dataCriacao desc limit 10");
                ResultSet rs = stm.executeQuery();
                while (rs.next()){
                    Post p = new Post();
                    p.setId(rs.getInt("id"));
                    p.setTitulo(rs.getString("titulo"));
                    p.setConteudo(rs.getString("conteudo"));
                    p.setDataCriacao(rs.getDate("dataCriacao"));
                    p.setAutorId(rs.getInt("autorId"));
                    lista.add(p);
                }
            } catch (SQLException e) {
                return lista;
            }
        }
        return lista;
    }

    public static Post listarPorId(int id) {
        Connection con = Conexao.conectar();
        Post p = null;
        if(con != null) {
            try {
                PreparedStatement stm = con.prepareStatement("select * from posts where id = ?");
                stm.setInt(1, id);
                ResultSet rs = stm.executeQuery();
                while (rs.next()){
                    p = new Post();
                    p.setId(rs.getInt("id"));
                    p.setTitulo(rs.getString("titulo"));
                    p.setConteudo(rs.getString("conteudo"));
                    p.setDataCriacao(rs.getDate("dataCriacao"));
                    p.setAutorId(rs.getInt("autorId"));

                }
            } catch (SQLException e) {
                return p;
            }
        }
        return p;
    }

}
