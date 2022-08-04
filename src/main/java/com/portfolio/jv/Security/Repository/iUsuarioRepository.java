
package com.portfolio.jv.Security.Repository;

import com.portfolio.jv.Security.Entity.Usuario;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface iUsuarioRepository extends JpaRepository<Usuario, Integer> {
    Optional<Usuario> findByNombreUsuario(String nombreUsuario);
    boolean existsByNombreUsuario(String nombreUsuario);
     Optional<Usuario> findByEmail(String email);
    boolean existsByEmail(String email);
    
    
}
