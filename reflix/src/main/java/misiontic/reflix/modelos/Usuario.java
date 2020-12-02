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
import java.sql.Date;

/**
 *
 * @author Danie
 */
@Entity
@Table(name = "contenido")
public class Usuario {
    @Id
    @Column(name = "alias")
    String alias;

    @Column(name = "nombre")
    String nombre;

    @Column(name = "apellido")
    Integer apellido;
    
    @Column(name = "email")
    Integer email;
    
    @Column(name = "celular")
    Integer celular;
    
    @Column(name = "contrasena")
    Integer contrasena;
    
    @Column(name = "fecha_nacimiento")
    Date fechaNacimiento;
}
