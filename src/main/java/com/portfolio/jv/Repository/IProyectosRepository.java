
package com.portfolio.jv.Repository;

import com.portfolio.jv.Entity.Proyectos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
    public interface IProyectosRepository extends JpaRepository<Proyectos, Long>{
    }

