package mywkpanorama.lugar.repositories;

import mywkpanorama.lugar.entities.Place;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PlaceRepository extends JpaRepository<Place,Long> {

    @Query("SELECT x FROM Place x where x.price<=?1")
    List<Place> searchByPrice(Long price);
}
