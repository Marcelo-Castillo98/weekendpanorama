package mywkpanorama.lugar.controllers;

import lombok.extern.log4j.Log4j2;
import mywkpanorama.lugar.services.PlaceService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/filterplace")
@CrossOrigin("*")
@Log4j2
public class PlaceController {

    private final PlaceService service;

    public PlaceController(PlaceService service) {
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<?> consultAll(){
        return service.consultAll();
    }

    @GetMapping("/{placePrice}")
    public ResponseEntity<?> searchPrice(@PathVariable Long placePrice){
        return service.searchPrice(placePrice);
    }

}

