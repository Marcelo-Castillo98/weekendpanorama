package com.example.demo.services;

//fala el dto
import com.example.demo.dtos.UsuarioRegistroDto;
import org.springframework.data.jpa.repository.Query;
import org.springframework.http.ResponseEntity;

import java.util.Optional;

public interface UsuarioService {

    public ResponseEntity<?> Registrar(UsuarioRegistroDto dataEntrante);

    public ResponseEntity<?> consultarTodo();


}
