package com.example.demo.services.impl;

import com.example.demo.dtos.UsuarioRegistroDto;
import com.example.demo.entities.Usuario;
import com.example.demo.exceptions.personalizados.UsuarioNoDisponibleException;
import com.example.demo.repositories.UsuarioRepository;
import com.example.demo.services.UsuarioService;
import org.springframework.data.domain.Example;
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
       try{
           Usuario usuarioNoGuardado=new Usuario();
           usuarioNoGuardado.setNombre_usuario(dataEntrante.getNombre_usuario());
           Long cont = repository.count( Example.of(usuarioNoGuardado));
           if(cont > 0){

              // throw new UsuarioNoDisponibleException("Usuario Repetido");
               UsuarioNoDisponibleException usernodisp =new UsuarioNoDisponibleException();
               return ResponseEntity.status(HttpStatus.OK).body(usernodisp.UsuarioNoDisponible("Usuario Repetido", HttpStatus.INTERNAL_SERVER_ERROR.value()));
           }


           usuarioNoGuardado.setClave(dataEntrante.getClave());
           usuarioNoGuardado.setNombre(dataEntrante.getNombre());
           usuarioNoGuardado.setApellido(dataEntrante.getApellido());
           Usuario usuarioCreado=repository.save(usuarioNoGuardado);
           return ResponseEntity.status(HttpStatus.OK).body(usuarioCreado);
       }
       catch(Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }
    public ResponseEntity<?> consultarTodo() {
        List<Usuario> usuarios= repository.findAll();
        return ResponseEntity.status(HttpStatus.OK).body(usuarios);
    }
}
