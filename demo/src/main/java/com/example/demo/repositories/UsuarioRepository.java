package com.example.demo.repositories;

import com.example.demo.entities.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface UsuarioRepository extends JpaRepository<Usuario,Long> {
    @Query("SELECT x FROM Usuario x where x.nombre_usuario=?1")
    Optional<Usuario> buscarPorNombre(String nombre_usuario);
}
