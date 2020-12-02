/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package misiontic.reflix.modelos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Danie
 */
@Entity
@Table(name = "contenido")
public class Serie {

    @Id
    @Column(name = "id_serie")
    String idSerie;

    @Column(name = "titulo")
    String titulo;

    @Column(name = "temporadas")
    Integer temporadas;

    @Column(name = "episodios")
    Integer epidosdios;

    @Column(name = "id_contenido")
    Integer idContenido;

    public String getIdSerie() {
        return idSerie;
    }

    public void setIdSerie(String idSerie) {
        this.idSerie = idSerie;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Integer getTemporadas() {
        return temporadas;
    }

    public void setTemporadas(Integer temporadas) {
        this.temporadas = temporadas;
    }

    public Integer getEpidosdios() {
        return epidosdios;
    }

    public void setEpidosdios(Integer epidosdios) {
        this.epidosdios = epidosdios;
    }

    public Integer getIdContenido() {
        return idContenido;
    }

    public void setIdContenido(Integer idContenido) {
        this.idContenido = idContenido;
    }

}
