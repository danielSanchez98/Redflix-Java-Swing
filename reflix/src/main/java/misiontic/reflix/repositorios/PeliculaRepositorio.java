/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package misiontic.reflix.repositorios;

import misiontic.reflix.modelos.Pelicula;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Danie
 */
public interface PeliculaRepositorio extends JpaRepository<Pelicula, Integer>{
    
}