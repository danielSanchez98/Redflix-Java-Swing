/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package misiontic.reflix.redlix.repositorios;

import misiontic.reflix.redlix.modelos.Contenido;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Danie
 */
@Repository
public interface ContenidoRepositorio extends JpaRepository<Contenido, Integer>{
    
}
