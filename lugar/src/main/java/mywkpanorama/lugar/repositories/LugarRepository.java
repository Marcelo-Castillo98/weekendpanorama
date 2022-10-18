package mywkpanorama.lugar.repositories;

import mywkpanorama.lugar.entities.Lugar;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface LugarRepository extends JpaRepository<Lugar,Long> {

    @Query("SELECT x FROM Lugar x where x.precio<=?1")
    List<Lugar> buscarPorPrecio(Long precio);
}
