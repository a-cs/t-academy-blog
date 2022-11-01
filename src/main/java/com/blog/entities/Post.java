package com.blog.entities;

import java.util.Date;

public class Post {
    private int id;

    private String titulo;

    private String conteudo;

    private int autorId;

    private Date dataCriacao;

    public Post() {
    }

    public Post(String titulo, String conteudo, int autorId) {
        this.titulo = titulo;
        this.conteudo = conteudo;
        this.autorId = autorId;
        this.dataCriacao = new Date();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public int getAutorId() {
        return autorId;
    }

    public void setAutorId(int autorId) {
        this.autorId = autorId;
    }

    public Date getDataCriacao() {
        return dataCriacao;
    }

    public void setDataCriacao(Date dataCriacao) {
        this.dataCriacao = dataCriacao;
    }
}
