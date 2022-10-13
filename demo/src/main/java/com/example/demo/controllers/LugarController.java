package com.example.demo.controllers;

import com.example.demo.services.LugarService;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/filtrarlugar")
@CrossOrigin("*")
@Log4j2
public class LugarController {

    private final LugarService service;

    public LugarController(LugarService service) {
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<?> consultarTodo(){
        return service.consultarTodo();
    }

    @GetMapping("/{precioLugar}")
    public ResponseEntity<?> consultarPrecio(@PathVariable Long precioLugar){
        return service.consultarPrecio(precioLugar);
    }

}
