package com.example.demo.services.impl;

import com.example.demo.dtos.UsuarioRegistroDto;
import com.example.demo.entities.Usuario;
import com.example.demo.repositories.UsuarioRepository;
import com.example.demo.services.UsuarioService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsuarioServiceImpl implements UsuarioService {
    private final UsuarioRepository repository;
    public UsuarioServiceImpl(UsuarioRepository repository) {
        this.repository = repository;
    }

    @Override
    public ResponseEntity<?> Registrar(UsuarioRegistroDto dataEntrante) {
        Usuario usuarioNoGuardado=new Usuario();
        usuarioNoGuardado.setNombre_usuario(dataEntrante.getNombre_usuario());
        usuarioNoGuardado.setClave(dataEntrante.getClave());
        usuarioNoGuardado.setNombre(dataEntrante.getNombre());
        usuarioNoGuardado.setApellido(dataEntrante.getApellido());
        Usuario usuarioCreado=repository.save(usuarioNoGuardado);
        return ResponseEntity.status(HttpStatus.OK).body(usuarioCreado);
    }
    public ResponseEntity<?> consultarTodo() {
        List<Usuario> usuarios= repository.findAll();
        return ResponseEntity.status(HttpStatus.OK).body(usuarios);
    }
}
