package mywkpanorama.lugar.services.impl;

import mywkpanorama.lugar.entities.Place;
import mywkpanorama.lugar.repositories.PlaceRepository;
import mywkpanorama.lugar.services.PlaceService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaceServiceImpl implements PlaceService {

    private final PlaceRepository repository;
    public PlaceServiceImpl(PlaceRepository repository) {
        this.repository = repository;
    }

    @Override
    public ResponseEntity<?> consultAll() {

        try{
            List<Place> places=repository.findAll();
            return ResponseEntity.status(HttpStatus.OK).body(places);
        }
        catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }

    @Override
    public ResponseEntity<?> searchPrice(Long price) {
        try{
            List <Place> placeInDB =repository.searchByPrice(price);
            return ResponseEntity.status(HttpStatus.OK).body(placeInDB);
        }
        catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }

    }
}
