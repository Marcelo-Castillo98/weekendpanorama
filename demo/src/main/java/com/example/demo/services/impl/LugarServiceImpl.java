package com.example.demo.services.impl;

import com.example.demo.entities.Lugar;
import com.example.demo.repositories.LugarRepository;
import com.example.demo.services.LugarService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LugarServiceImpl implements LugarService {

    private final LugarRepository repository;
    public LugarServiceImpl(LugarRepository repository) {
        this.repository = repository;
    }

    @Override
    public ResponseEntity<?> consultarTodo() {
        List<Lugar> lugares= repository.findAll();
        return ResponseEntity.status(HttpStatus.OK).body(lugares);
    }

    @Override
    public ResponseEntity<?> consultarPrecio(Long precio) {
        List <Lugar> lugarEnBD=repository.buscarPorPrecio(precio);
        return ResponseEntity.status(HttpStatus.OK).body( lugarEnBD);
    }
}
