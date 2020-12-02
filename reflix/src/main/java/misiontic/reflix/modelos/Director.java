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
@Table(name = "director")
public class Director {
    @Id
    @Column(name = "id_director")
    Integer idDirector;

    @Column(name = "nombre")
    String nombre;
    
    @Column(name = "apellido")
    String apellido;
    
    @Column(name = "nacionalidad")
    String nacionalidad;
    
    
}
