package com.example.demo.repositories;

import com.example.demo.entities.Lugar;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface LugarRepository extends JpaRepository<Lugar,Long> {

    @Query("SELECT x FROM Lugar x where x.precio<=?1")
    List<Lugar> buscarPorPrecio(Long precio);
}
