package com.example.demo.controllers;

import com.example.demo.dtos.UsuarioRegistroDto;
import com.example.demo.services.UsuarioService;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/usuario")
@CrossOrigin("*")
@Log4j2
public class UsuarioController {
    private final UsuarioService service;

    public UsuarioController(UsuarioService service) {
        this.service = service;
    }
    @GetMapping
    public ResponseEntity<?> consultarTodos(){
        return service.consultarTodo();
    }

    @PostMapping
    public ResponseEntity<?> Registar(@RequestBody UsuarioRegistroDto dataEntrante ) {
        return service.Registrar(dataEntrante);
    }
    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody UsuarioRegistroDto dataEntrante){
        return service.buscarPorNombre(dataEntrante.getNombre_usuario(),dataEntrante.getClave());
    }
}






